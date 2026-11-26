# The Lean half of the pipeline, built offline from pinned inputs: the Lean
# release named by lean-toolchain, the packages lake-manifest.json locks, and
# Vermilion's own libraries and executables.
{ lib, pkgs }:
let
  leanVersion =
    let
      toolchain = lib.trim (builtins.readFile ../lean-toolchain);
      prefix = "leanprover/lean4:v";
    in
    assert lib.assertMsg (lib.hasPrefix prefix toolchain)
      "lean-toolchain must name a leanprover/lean4 release, got ${toolchain}";
    lib.removePrefix prefix toolchain;

  manifest = builtins.fromJSON (builtins.readFile ../lake-manifest.json);

  inherit (pkgs.stdenv.cc.bintools) dynamicLinker;

  # The official release, not a source build and not nixpkgs' lean4: Mathlib's
  # olean cache is keyed on Lean.githash, which only the release binary shares
  # with the machines that filled the cache.
  leanToolchain = pkgs.stdenvNoCC.mkDerivation {
    pname = "lean-toolchain";
    version = leanVersion;
    src = pkgs.fetchurl {
      url = "https://github.com/leanprover/lean4/releases/download/v${leanVersion}/lean-${leanVersion}-linux.tar.zst";
      hash = "sha256-Sz+wPCmh4KJT+x0R+brjcl8ZoNxvwJs+oW0snfM0niw=";
    };
    nativeBuildInputs = [
      pkgs.zstd
      pkgs.patchelf
    ];
    dontConfigure = true;
    dontBuild = true;
    # The release is generic-Linux: its programs ask for /lib64/ld-linux, which
    # neither NixOS nor the build sandbox has. Its libraries are found through
    # the $ORIGIN run paths it ships with, so only the interpreter changes.
    #
    # Executables Lean links get the same interpreter from the bundled clang.
    # The bundled linker is therefore wrapped to name the store's loader; lld
    # ignores the option for shared libraries. It keeps the name ld.lld
    # because lld picks its flavour from argv[0], and sits in a sibling of
    # lib/ because its run path is $ORIGIN/../lib.
    installPhase = ''
      runHook preInstall
      mkdir -p $out
      mv * $out/
      for program in $out/bin/*; do
        if patchelf --print-interpreter "$program" >/dev/null 2>&1; then
          patchelf --set-interpreter ${dynamicLinker} "$program"
        fi
      done
      mkdir $out/libexec
      mv $out/bin/ld.lld $out/libexec/ld.lld
      cat > $out/bin/ld.lld <<EOF
      #!${pkgs.runtimeShell}
      exec $out/libexec/ld.lld "\$@" --dynamic-linker=${dynamicLinker}
      EOF
      chmod +x $out/bin/ld.lld
      patchShebangs $out/bin
      runHook postInstall
    '';
    # Nothing here was built by Nix: stripping or shrinking run paths would
    # only alter the upstream binaries.
    dontFixup = true;
    doInstallCheck = true;
    installCheckPhase = ''
      runHook preInstallCheck
      $out/bin/lean --version | grep -F "version ${leanVersion},"
      $out/bin/lake --version
      echo 'def main : IO Unit := IO.println "linked by the packaged toolchain"' > Main.lean
      $out/bin/lean -c Main.c Main.lean
      $out/bin/leanc -o main Main.c
      ./main | grep -F "linked by the packaged toolchain"
      runHook postInstallCheck
    '';
    meta = {
      description = "Lean ${leanVersion} release toolchain, patched to run from the Nix store";
      homepage = "https://github.com/leanprover/lean4";
      license = lib.licenses.asl20;
      platforms = [ "x86_64-linux" ];
      sourceProvenance = [ lib.sourceTypes.binaryNativeCode ];
    };
  };

  lakeSourceHashes = {
    smt = "sha256-4lxPf0C9kpJKybsYktPkE1cQ5IZH2mM8Mv/YbHBMXIw=";
    mathlib = "sha256-uFDwCRclUvvW1wueByz+QsXytB6UVg1Itponj4tg66M=";
    cvc5 = "sha256-kcRh950PigZ8/sjWRK07ZKqmdE+NDoDcixbR8LlmQzY=";
    auto = "sha256-At+IXxM+ZEOJUECaIdPvjmh5hfJB85PFEykNbEGNrb0=";
    plausible = "sha256-BE/kaFjz8mdUFodEQo35jgCjEoZPD6ipdJqAm5v/VBo=";
    LeanSearchClient = "sha256-3/60K6ADnAhI0RxnCZSKQKLiaByTI/cV3lUbJND7noE=";
    importGraph = "sha256-3rjLQXQX0mlAbr68zGC4pL9mrqJ7GFVaeJ8HJ2oM3pE=";
    proofwidgets = "sha256-qbwEVOe57jNl9qulSi0tt9snSZbqVBLoeVsTXG2IvFs=";
    aesop = "sha256-YUSi36vqNdVrRw1u41ZJUE6XrDhsjQe45AStNKjCmbY=";
    Qq = "sha256-gQ//zSdkl+70c3KI7gbXJjupxMXgL0GKkxg8llTV+c8=";
    batteries = "sha256-71DddBZmdR4wIdeSm9obApnqp0FgDPhqDsC3x/n9bVs=";
    Cli = "sha256-PVR9oekcGtx39GPyjN0sLHHAeeWpPGciOLzKNX5DelY=";
  };

  # One checkout per manifest entry. The revision is part of each store name,
  # so a manifest bump with a stale hash fails instead of reusing the old tree.
  lakeSources = lib.listToAttrs (
    map (
      entry:
      assert lib.assertMsg (
        entry.type == "git" && entry.subDir == null
      ) "lake-manifest.json: ${entry.name} is not a whole git repository";
      lib.nameValuePair entry.name (
        pkgs.fetchgit {
          inherit (entry) url rev;
          hash = lakeSourceHashes.${entry.name};
        }
      )
    ) manifest.packages
  );

  # Lake reads .lake/package-overrides.json after the manifest and lets its
  # entries replace the manifest's. Path entries make Lake use the package
  # directories as they are; with the manifest's git entries it would look for
  # each checkout's HEAD and fetch when it finds none. The manifest itself
  # stays as committed, which Mathlib's cache tool insists on: it compares the
  # git pins there with Mathlib's own.
  packageOverrides = pkgs.writeText "package-overrides.json" (
    builtins.toJSON {
      schemaVersion = manifest.version;
      packages = map (entry: {
        type = "path";
        inherit (entry)
          name
          scope
          inherited
          configFile
          manifestFile
          ;
        dir = ".lake/packages/${entry.name}";
      }) manifest.packages;
    }
  );

  # The lakefile of an installed Vermilion: lakefile.lean up to the line that
  # opens the repository's own proof libraries. Those name their source
  # directories relative to the repository, and Lake resolves the names
  # against the directory it is started in, which for a project that
  # requires the library is the project.
  installedLakefile =
    let
      marker = "-- vrml:repository-libraries\n";
      parts = lib.splitString marker (builtins.readFile ../lakefile.lean);
    in
    assert lib.assertMsg (
      lib.length parts == 2
    ) "lakefile.lean must contain the line '-- vrml:repository-libraries' exactly once";
    pkgs.writeText "lakefile.lean" (lib.head parts);

  # What Lake needs to load the workspace, without Vermilion's own sources:
  # the derivations built from this do not rebuild when lean/ changes, nor
  # when the repository gains a proof library.
  workspaceRoot = pkgs.runCommand "vermilion-workspace" { } ''
    mkdir $out
    cp ${installedLakefile} $out/lakefile.lean
    cp ${../lake-manifest.json} $out/lake-manifest.json
    cp ${../lean-toolchain} $out/lean-toolchain
  '';

  # Writable copies: Lake builds inside the package directories.
  placeLakeSources = ''
    mkdir -p .lake/packages
    ${lib.concatStrings (
      lib.mapAttrsToList (name: source: ''
        cp -r ${source} .lake/packages/${name}
      '') lakeSources
    )}
    chmod -R u+w .lake/packages
    cp ${packageOverrides} .lake/package-overrides.json
  '';

  # Mathlib's published oleans, as the .ltar archives `lake exe cache` stores.
  # Which archives belong to a checkout is decided by Mathlib's own cache tool
  # (it hashes every source file together with Lean.githash), so the tool is
  # compiled and run here; only the downloaded archives reach the output.
  mathlibCache = pkgs.stdenvNoCC.mkDerivation {
    name = "mathlib-olean-cache-${lib.substring 0 7 lakeSources.mathlib.rev}";
    src = workspaceRoot;
    nativeBuildInputs = [
      leanToolchain
      pkgs.curl
      pkgs.cacert
    ];
    dontConfigure = true;
    # The tool reports a file the server does not have as a warning and still
    # exits successfully. Asking again shows whether anything is missing.
    buildPhase = ''
      runHook preBuild
      ${placeLakeSources}
      export MATHLIB_CACHE_DIR=$TMPDIR/mathlib-cache
      lake exe cache get-
      lake exe cache get- | tee second-pass.log
      grep -qx "No files to download" second-pass.log
      runHook postBuild
    '';
    installPhase = ''
      runHook preInstall
      mkdir $out
      find "$MATHLIB_CACHE_DIR" -name '*.ltar' -exec mv -t $out {} +
      runHook postInstall
    '';
    dontFixup = true;
    outputHashMode = "recursive";
    outputHash = "sha256-8iq1VrONERUA620UvLms/nXUYOI1KLmU4U95EBU1Guc=";
    impureEnvVars = lib.fetchers.proxyImpureEnvVars;
  };

  # The two files package lakefiles download while building: lean-cvc5 its
  # cvc5 libraries, lean-auto the zipperposition prover. The URLs are spelled
  # as those lakefiles request them; pinnedCurl matches on them.
  buildTimeDownloads = {
    cvc5 = pkgs.fetchurl {
      url = "https://github.com/abdoo8080/cvc5/releases/download/cvc5-1.3.2/cvc5-Linux-x86_64-static.zip";
      hash = "sha256-xYIUt5fB8naSDgnYc5d+zW5+ySmwigwe/l2wvR5o/bI=";
    };
    zipperposition = pkgs.fetchurl {
      url = "https://github.com/sneeuwballen/zipperposition/releases/download/2.1/zipperposition-bin-ubuntu-latest-4.12.x.exe.zip";
      hash = "sha256-5C1AR7wtGuB3Q+KHHfzr6/jnz3z5svv4vTZ1qFYxLqM=";
    };
  };

  # Lake downloads with `curl … -o FILE -L URL`. This stand-in serves the
  # pinned files above and fails for every other URL, so the package lakefiles
  # run unmodified and a download that is not pinned stops the build.
  pinnedCurl = pkgs.writeShellScriptBin "curl" ''
    output=
    url=
    while [ $# -gt 0 ]; do
      case "$1" in
        -o)
          output=$2
          shift 2
          ;;
        -*) shift ;;
        *)
          url=$1
          shift
          ;;
      esac
    done
    case "$url" in
    ${lib.concatMapStrings (file: ''
      ${file.url}) exec cp --no-preserve=mode ${file} "$output" ;;
    '') (lib.attrValues buildTimeDownloads)}
      *)
        echo "curl: $url is not a pinned input of this build" >&2
        exit 1
        ;;
    esac
  '';

  # Every package of the manifest, built: Mathlib and its dependencies from
  # the olean cache, lean-cvc5, lean-auto and lean-smt (which the cache does
  # not cover) from source.
  lakePackages = pkgs.stdenvNoCC.mkDerivation {
    name = "vermilion-lake-packages";
    src = workspaceRoot;
    nativeBuildInputs = [
      leanToolchain
      pinnedCurl
      pkgs.unzip
      pkgs.patchelf
    ];
    dontConfigure = true;
    # `--no-build` makes Lake exit with an error instead of compiling, so the
    # second command passes only if Lake takes every cached Mathlib olean as
    # up to date.
    #
    # lean-cvc5 and lean-auto publish prebuilt archives that Lake would ask
    # GitHub for; `--no-cache` builds them here instead. lean-cvc5 compiles
    # its FFI with the `clang` on PATH and `-stdlib=libc++`. The toolchain's
    # bundled clang has no libc++ headers, so nixpkgs' libc++ clang goes in
    # front of it for that step; linking stays with the bundled toolchain,
    # which Lake calls by absolute path.
    #
    # zipperposition is a generic-Linux program like the toolchain's.
    buildPhase = ''
      runHook preBuild
      ${placeLakeSources}
      MATHLIB_CACHE_DIR=${mathlibCache} lake exe cache unpack
      lake build --no-build Mathlib
      PATH=${pkgs.llvmPackages.libcxxClang}/bin:$PATH lake build --no-cache @cvc5 @auto @smt
      patchelf --set-interpreter ${dynamicLinker} .lake/packages/auto/.lake/build/zipperposition.exe
      runHook postBuild
    '';
    installPhase = ''
      runHook preInstall
      mv .lake/packages $out
      runHook postInstall
    '';
    # Lake keeps a content hash of each file it built or unpacked; stripping
    # them would make every one of them stale.
    dontFixup = true;
  };

  vermilionLean = pkgs.stdenvNoCC.mkDerivation {
    pname = "vermilion-lean";
    version = "0.1.0";
    src = lib.fileset.toSource {
      root = ../.;
      fileset = lib.fileset.unions [
        ../lake-manifest.json
        ../lean-toolchain
        ../lean
      ];
    };
    nativeBuildInputs = [ leanToolchain ];
    dontConfigure = true;
    # The packages are symlinks into the store. Lake finds them up to date and
    # only reads them; if it ever wanted to rebuild one, the read-only store
    # would fail the build.
    buildPhase = ''
      runHook preBuild
      cp ${installedLakefile} lakefile.lean
      mkdir -p .lake/packages
      ln -s ${lakePackages}/* .lake/packages/
      cp ${packageOverrides} .lake/package-overrides.json
      lake build Vermilion vrml_gen vrml_worker
      runHook postBuild
    '';
    # Lake resolves the package symlinks, so its LEAN_PATH names the packages
    # by their store path; lean-path names them inside the home instead.
    installPhase = ''
      runHook preInstall
      home=$out/share/vermilion
      mkdir -p $home $out/bin
      cp -a lakefile.lean lake-manifest.json lean-toolchain lean .lake $home/
      lake env printenv LEAN_PATH \
        | sed -e "s|$PWD/|$home/|g" -e "s|${lakePackages}/|$home/.lake/packages/|g" \
        > $home/lean-path
      ln -s $home/.lake/build/bin/vrml_gen $home/.lake/build/bin/vrml_worker $out/bin/
      runHook postInstall
    '';
    # As for the packages: these files carry Lake's content hashes.
    dontFixup = true;
    doInstallCheck = true;
    # Lake must find the installed home complete where it now lies, or a
    # project that requires it would try to rebuild it inside the store.
    #
    # The first theorem falls to an early rung of the `vrml` ladder. The
    # second needs quantifier instantiation none of the Lean-native rungs
    # find, so it reaches the last rung: cvc5 through the plugin, with the
    # proof reconstructed in the kernel. vrml_worker finds the core library
    # through the `lean` on PATH.
    installCheckPhase = ''
      runHook preInstallCheck
      home=$out/share/vermilion
      (cd $home && lake build --no-build Vermilion vrml_gen vrml_worker)

      plugin=$home/.lake/packages/cvc5/.lake/build/lib/libcvc5_cvc5.so
      export LEAN_PATH=$(cat $home/lean-path)
      mkdir $TMPDIR/install-check
      cd $TMPDIR/install-check
      cat > Ladder.lean <<'EOF'
      import Vermilion.Obligations

      set_option trace.vrml.ladder true

      theorem successor_le (x y : Int) (h : x < y) : x + 1 ≤ y := by vrml

      theorem right_inverse {G : Type} [Nonempty G] (op : G → G → G) (inv : G → G) (e : G)
          (assoc : ∀ a b c, op a (op b c) = op (op a b) c)
          (inverse : ∀ a, op (inv a) a = e)
          (ident : ∀ a, op e a = a) : ∀ a, op a (inv a) = e := by vrml
      EOF

      lean --plugin=$plugin -DautoImplicit=false -DrelaxedAutoImplicit=false Ladder.lean > lean.log \
        || { cat lean.log; exit 1; }
      cat lean.log
      test "$(grep -c "discharged by" lean.log)" = 2
      grep -q "discharged by smt" lean.log

      status=0
      $out/bin/vrml_gen 2> vrml_gen.log || status=$?
      cat vrml_gen.log
      test "$status" = 2
      grep -q "^usage: vrml_gen" vrml_gen.log

      $out/bin/vrml_worker --plugin=$plugin -DautoImplicit=false -DrelaxedAutoImplicit=false \
        --jobs=1 Ladder.lean > vrml_worker.log || { cat vrml_worker.log; exit 1; }
      cat vrml_worker.log
      grep -qx "### vrml-worker 0 0" vrml_worker.log
      grep -q "discharged by smt" vrml_worker.log
      runHook postInstallCheck
    '';
    passthru = {
      inherit
        leanToolchain
        lakeSources
        mathlibCache
        buildTimeDownloads
        lakePackages
        ;
    };
    meta = {
      description = "Vermilion's Lean libraries, vrml_gen and vrml_worker, with every Lake package built";
      license = lib.licenses.asl20;
      platforms = [ "x86_64-linux" ];
    };
  };
in
{
  lean-toolchain = leanToolchain;
  vermilion-lean = vermilionLean;
}
