{
  description = "Vermilion: a Lean 4 backend for the Verus verifier";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs =
    { self, nixpkgs }:
    let
      inherit (nixpkgs) lib;
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "aarch64-darwin"
      ];
      forAllSystems = f: lib.genAttrs systems (system: f nixpkgs.legacyPackages.${system});

      # The pinned Verus revision (scripts/setup_verus.sh) checks for exactly
      # this Z3 release, which nixpkgs no longer carries. Use the upstream
      # release binaries that Verus's own tools/get-z3.sh would fetch, made
      # runnable on NixOS by autoPatchelf. Upstream ships no aarch64-linux
      # build of this release.
      z3Version = "4.12.5";
      z3Releases = {
        x86_64-linux = {
          name = "z3-${z3Version}-x64-glibc-2.31";
          hash = "sha256-3IOkoZ65ZHq/8V83tgsNDwLnfdLcgjioaw7KNfCsjHQ=";
        };
        aarch64-darwin = {
          name = "z3-${z3Version}-arm64-osx-11.0";
          hash = "sha256-3/G7jcBUTNca6RQw92AT+Wdbzv2RR75DO2Y0kL8aMNA=";
        };
      };

      mkVerusZ3 =
        pkgs:
        let
          release = z3Releases.${pkgs.stdenv.hostPlatform.system};
        in
        pkgs.stdenv.mkDerivation {
          pname = "verus-z3";
          version = z3Version;
          src = pkgs.fetchurl {
            url = "https://github.com/Z3Prover/z3/releases/download/z3-${z3Version}/${release.name}.zip";
            inherit (release) hash;
          };
          nativeBuildInputs = [
            pkgs.unzip
          ]
          ++ lib.optional pkgs.stdenv.hostPlatform.isLinux pkgs.autoPatchelfHook;
          buildInputs = lib.optional pkgs.stdenv.hostPlatform.isLinux pkgs.stdenv.cc.cc.lib;
          sourceRoot = release.name;
          dontConfigure = true;
          dontBuild = true;
          installPhase = ''
            runHook preInstall
            install -Dm755 bin/z3 $out/bin/z3
            runHook postInstall
          '';
          doInstallCheck = true;
          installCheckPhase = ''
            $out/bin/z3 --version | grep -q "${z3Version}"
          '';
          meta = {
            description = "Z3 ${z3Version}, the solver release pinned by Vermilion's Verus fork";
            license = lib.licenses.mit;
            platforms = builtins.attrNames z3Releases;
            sourceProvenance = [ lib.sourceTypes.binaryNativeCode ];
          };
        };

      # The Rust tooling around the Lean back end (vrml_check, vrml_sync,
      # vrml_watch, vrml_source_guard). The pipeline scripts still run the
      # cargo-built ./target/debug binaries; this derivation exists so the
      # crate builds and tests hermetically under `nix flake check`.
      mkVrmlTools =
        pkgs:
        pkgs.rustPlatform.buildRustPackage {
          pname = "vermilion-backend";
          version = "0.1.0";
          src = lib.fileset.toSource {
            root = ./.;
            fileset = lib.fileset.unions [
              ./Cargo.toml
              ./Cargo.lock
              ./crates/vermilion_backend
            ];
          };
          cargoLock.lockFile = ./Cargo.lock;
          cargoBuildFlags = [
            "-p"
            "vermilion_backend"
          ];
          cargoTestFlags = [
            "-p"
            "vermilion_backend"
          ];
          meta = {
            description = "Vermilion checking, twin-sync and watch tools";
            license = lib.licenses.asl20;
            mainProgram = "vrml_check";
          };
        };
    in
    {
      packages = forAllSystems (
        pkgs:
        {
          vrml-tools = mkVrmlTools pkgs;
          default = self.packages.${pkgs.stdenv.hostPlatform.system}.vrml-tools;
        }
        // lib.optionalAttrs (z3Releases ? ${pkgs.stdenv.hostPlatform.system}) {
          verus-z3 = mkVerusZ3 pkgs;
        }
      );

      checks = forAllSystems (
        pkgs:
        let
          system = pkgs.stdenv.hostPlatform.system;
        in
        {
          inherit (self.packages.${system}) vrml-tools;
          nix-formatting = pkgs.runCommand "nix-formatting" { nativeBuildInputs = [ pkgs.nixfmt ]; } ''
            nixfmt --check ${./flake.nix}
            touch $out
          '';
          # The unit tests of the Python tooling; no other gate runs them.
          script-tests =
            pkgs.runCommand "script-tests"
              {
                nativeBuildInputs = [ pkgs.python3 ];
                src = lib.fileset.toSource {
                  root = ./.;
                  fileset = lib.fileset.unions [
                    ./scripts/differential_outcomes.py
                    ./scripts/sync_issues.py
                    ./tests/test_differential_outcomes.py
                    ./tests/test_sync_issues.py
                  ];
                };
              }
              ''
                cd $src
                python3 -B -m unittest discover -s tests -p 'test_*.py'
                touch $out
              '';
        }
        // lib.optionalAttrs (self.packages.${system} ? verus-z3) {
          inherit (self.packages.${system}) verus-z3;
        }
      );

      devShells = forAllSystems (
        pkgs:
        let
          system = pkgs.stdenv.hostPlatform.system;
          verusZ3 = self.packages.${system}.verus-z3 or null;
        in
        {
          default = pkgs.mkShell {
            packages = [
              # rustup, not a fixed toolchain: the scripts run the pinned Verus
              # toolchain (with rustc-dev) via `rustup run`, and the Verus
              # checkout selects it through its own rust-toolchain.toml.
              pkgs.rustup
              # elan reads lean-toolchain; the nixpkgs build patches the Lean
              # toolchains it downloads so they run on NixOS.
              pkgs.elan
              pkgs.python3
              pkgs.git
              pkgs.curl
              pkgs.gnutar
              pkgs.unzip
              pkgs.gh
              pkgs.nixfmt
              # The VS Code extension's unit tests (run_suite.sh step 1).
              pkgs.nodejs
            ]
            # lean-cvc5 compiles its FFI with `clang -stdlib=libc++`. Expose
            # only clang/clang++ so `cc` stays the stdenv compiler that cargo
            # and the Verus build link with.
            ++ lib.optional pkgs.stdenv.hostPlatform.isLinux (
              pkgs.runCommand "clang-libcxx" { } ''
                mkdir -p $out/bin
                ln -s ${pkgs.llvmPackages.libcxxClang}/bin/clang $out/bin/clang
                ln -s ${pkgs.llvmPackages.libcxxClang}/bin/clang++ $out/bin/clang++
              ''
            )
            # Its link-time half: the symlinked wrapper above does not carry
            # libcxxClang's propagated library path.
            ++ lib.optional pkgs.stdenv.hostPlatform.isLinux pkgs.llvmPackages.libcxx
            ++ lib.optional (verusZ3 != null) verusZ3;

            env = {
              # The scripts run each cargo workspace's tools from that
              # workspace's own target/ (the repository root and
              # crates/vermilion_direct). A machine-wide CARGO_TARGET_DIR or
              # `build.target-dir` would put them elsewhere; cargo resolves a
              # relative value against the directory it is run from, which is
              # where the scripts look.
              CARGO_TARGET_DIR = "target";
            }
            # Picked up by scripts/setup_verus.sh in place of Verus's
            # tools/get-z3.sh download, whose dynamically linked binary does
            # not run on NixOS.
            // lib.optionalAttrs (verusZ3 != null) {
              VERMILION_Z3 = lib.getExe' verusZ3 "z3";
            };

            shellHook = ''
              if ! rustup show active-toolchain >/dev/null 2>&1; then
                echo "vermilion: no default Rust toolchain; run 'rustup default stable' once" >&2
              fi
            ''
            # The Verus driver loads rustc's libLLVM, which needs zlib. rustup's
            # proxies get it from the nixpkgs wrapper, but the scripts start
            # `rust_verify` directly, with the toolchain's lib directory ahead
            # of this path.
            + lib.optionalString pkgs.stdenv.hostPlatform.isLinux ''
              export LD_LIBRARY_PATH="${lib.makeLibraryPath [ pkgs.zlib ]}''${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
            '';
          };
        }
      );

      formatter = forAllSystems (pkgs: pkgs.nixfmt);
    };
}
