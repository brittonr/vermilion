{
  lib,
  pkgs,
  verusSrc,
  rustBin,
  verusZ3,
}:
let
  # rust_verify links rustc's private crates, so everything here is built with
  # exactly the release and components the fork names, rustc-dev included.
  # The file leaves the profile to rustup's default, which would add clippy
  # and 640 MiB of rust-docs to the closure of rust_verify.
  toolchainSpec = (lib.importTOML "${verusSrc}/rust-toolchain.toml").toolchain;
  rustToolchain = rustBin.fromRustupToolchain (toolchainSpec // { profile = "minimal"; });
  rustPlatform = pkgs.makeRustPlatform {
    cargo = rustToolchain;
    rustc = rustToolchain;
  };

  z3 = lib.getExe' verusZ3 "z3";

  # The one git dependency, shared by the lock files of the Verus workspace
  # and of the adapter.
  gitDependencyHashes = {
    "getopts-0.2.21" = "sha256-N/QJvyOmLoU5TabrXi8i0a5s23ldeupmBUzP8waVOiU=";
  };

  # vargo asks rustup for the active toolchain, checks its channel against
  # rust-toolchain.toml and compiles the full name into rust_verify and verus.
  # The sandbox has no rustup installation, so answer with the toolchain that
  # is on PATH.
  toolchainName = "${toolchainSpec.channel}-${pkgs.stdenv.hostPlatform.rust.rustcTarget}";
  rustupShim = pkgs.writeShellScriptBin "rustup" ''
    if [[ "$*" == "show active-toolchain" ]]; then
      echo "${toolchainName} (pinned by the Nix build)"
    else
      echo "rustup shim: unsupported invocation: $*" >&2
      exit 1
    fi
  '';

  # vargo derives the version string from git, and the flake input carries no
  # .git directory. `%cs` is the committer's local date while lastModifiedDate
  # is UTC; the install check compares the result with the version this file
  # computes, so a pin where vargo and Nix disagree fails the build.
  commitDate = lib.match "(....)(..)(..).*" verusSrc.lastModifiedDate;
  shortRev = lib.substring 0 7 verusSrc.rev;
  verusVersion = "0.${lib.concatStringsSep "." commitDate}.${shortRev}";
  gitShim = pkgs.writeShellScriptBin "git" ''
    case "$*" in
      "rev-parse HEAD") echo ${verusSrc.rev} ;;
      "rev-parse --short=7 HEAD") echo ${shortRev} ;;
      "show -s --format=%cs HEAD") echo ${lib.concatStringsSep "-" commitDate} ;;
      "diff --exit-code HEAD") ;;
      *)
        echo "git shim: unsupported invocation: $*" >&2
        exit 1
        ;;
    esac
  '';

  vargo = rustPlatform.buildRustPackage {
    pname = "vargo";
    inherit ((lib.importTOML "${verusSrc}/tools/vargo/Cargo.toml").package) version;
    src = verusSrc;
    # main.rs includes ../../common/consts.rs, so the crate is built in place.
    sourceRoot = "source/tools/vargo";
    cargoLock.lockFile = "${verusSrc}/tools/vargo/Cargo.lock";
    meta = {
      description = "Cargo wrapper that builds Verus and vstd";
      license = lib.licenses.mit;
      mainProgram = "vargo";
    };
  };

  exportCheck = pkgs.writeText "export-check.rs" ''
    use verus_builtin::*;
    use verus_builtin_macros::*;

    verus! {

    fn increment(x: u32) -> (y: u32)
        requires x < 100,
        ensures y == x + 1,
    {
        x + 1
    }

    } // verus!
  '';

  verifyCheck = pkgs.writeText "verify-check.rs" ''
    use vstd::prelude::*;

    verus! {

    proof fn push_len(s: Seq<int>, x: int)
        ensures s.push(x).len() == s.len() + 1,
    {
    }

    fn increment(x: u32) -> (y: u32)
        requires x < 100,
        ensures y == x + 1,
    {
        x + 1
    }

    } // verus!
  '';

  verus-fork = pkgs.stdenv.mkDerivation {
    pname = "verus-fork";
    version = verusVersion;
    src = verusSrc;

    cargoRoot = "source";
    cargoDeps = rustPlatform.importCargoLock {
      lockFile = "${verusSrc}/source/Cargo.lock";
      outputHashes = gitDependencyHashes;
    };
    # zstd-sys and its kin build the C sources their crates vendor, as they
    # do under scripts/setup_verus.sh; the hook's default would send them to
    # pkg-config for nixpkgs' libraries instead of the locked ones.
    dontCargoUseSystemLibs = true;

    nativeBuildInputs = [
      rustPlatform.cargoSetupHook
      rustToolchain
      vargo
      rustupShim
      gitShim
      pkgs.makeBinaryWrapper
    ];

    # vargo checks the release, verifies vstd with it and copies it into the
    # release tree.
    env.VERUS_Z3_PATH = z3;

    buildPhase = ''
      runHook preBuild
      pushd source
      vargo build --release
      popd
      runHook postBuild
    '';

    # The tree is installed as vargo left it: libvstd.rlib and
    # libverus_builtin.rlib are inputs of every later rust_verify run, and
    # strip would rewrite them.
    dontStrip = true;

    installPhase = ''
      runHook preInstall
      mkdir -p $out/bin $out/libexec
      cp -r source/target-verus/release $out/libexec/verus
      # vargo's own up-to-date record: build-time mtimes that nothing reads
      # once the tree is installed.
      rm $out/libexec/verus/.vstd-fingerprint
      # vargo copied the solver in; keep the name, which `verus` looks up next
      # to itself, without a second copy of the binary.
      ln -sf ${z3} $out/libexec/verus/z3
      # The variables are forced rather than defaulted: vstd.vir and
      # libvstd.rlib only fit this rust_verify, and the solver release is part
      # of the pin. No library path is needed: the cc wrapper recorded the
      # toolchain's library directory in rust_verify's RUNPATH, and rustc
      # takes its sysroot from where librustc_driver was loaded.
      makeBinaryWrapper $out/libexec/verus/rust_verify $out/bin/rust_verify \
        --set VERUS_ROOT $out/libexec/verus \
        --set VERUS_Z3_PATH ${z3}
      runHook postInstall
    '';

    doInstallCheck = true;
    installCheckPhase = ''
      runHook preInstallCheck
      grep -a -q VERUS_VIR_EXPORT $out/libexec/verus/rust_verify
      [[ "$(< $out/libexec/verus/version.txt)" == "$version" ]]
      pushd "$(mktemp -d)"
      env -i VERUS_VIR_EXPORT=$PWD/vir.bin $out/bin/rust_verify ${exportCheck} \
        --crate-type=lib --no-vstd --cfg verus_no_vstd --no-verify
      [[ -s vir.bin ]]
      env -i $out/bin/rust_verify ${verifyCheck} --crate-type=lib | tee verify.log
      grep -q 'verification results:: 2 verified, 0 errors' verify.log
      popd
      runHook postInstallCheck
    '';

    passthru = {
      inherit rustToolchain;
      src = verusSrc;
    };

    meta = {
      description = "Verus fork with the VIR export hook, the front end of Vermilion";
      homepage = "https://github.com/ilyasergey/verus";
      license = lib.licenses.mit;
      mainProgram = "rust_verify";
      platforms = [ "x86_64-linux" ];
    };
  };

  vermilion-direct = rustPlatform.buildRustPackage {
    pname = "vermilion-direct";
    inherit ((lib.importTOML ../crates/vermilion_direct/Cargo.toml).package) version;
    src = lib.fileset.toSource {
      root = ../.;
      fileset = lib.fileset.unions [
        # vermilion_backend inherits its package fields from the root workspace.
        ../Cargo.toml
        ../crates/vermilion_backend
        ../crates/vermilion_direct
      ];
    };
    # The crate is its own workspace two levels down; Cargo.toml reaches vir
    # and air through the repository-root link that scripts/setup_verus.sh
    # creates.
    cargoRoot = "crates/vermilion_direct";
    buildAndTestSubdir = "crates/vermilion_direct";
    postUnpack = ''
      ln -s ${verusSrc} $sourceRoot/.verus-checkout
    '';
    cargoLock = {
      lockFile = ../crates/vermilion_direct/Cargo.lock;
      outputHashes = gitDependencyHashes;
    };
    meta = {
      description = "Vermilion adapter from exported Verus VIR to the textual IR";
      license = lib.licenses.asl20;
      mainProgram = "vermilion_direct";
      platforms = [ "x86_64-linux" ];
    };
  };
in
{
  inherit verus-fork vermilion-direct;
}
