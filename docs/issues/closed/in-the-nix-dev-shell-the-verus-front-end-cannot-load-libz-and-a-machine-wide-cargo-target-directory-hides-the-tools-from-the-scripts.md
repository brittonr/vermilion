---
title: In the Nix dev shell the Verus front end cannot load libz, and a machine-wide cargo target directory hides the tools from the scripts
labels: [bug]
state: closed
github: null
---

*Evidence level: reproduced on NixOS (x86_64-linux) inside `nix develop`;
fixed in the same session.*

Two faults kept `./scripts/build.sh` and the suites from running inside the
flake's dev shell.

- `rust_verify` did not start: `error while loading shared libraries:
  libz.so.1: cannot open shared object file`. rustup's proxies get zlib from
  the nixpkgs wrapper, but the scripts start the Verus driver directly, with
  the toolchain's `lib` directory on the library path.
  `scripts/run_differential.py`, `scripts/differential_vacuity.py` and
  `scripts/bench_vs_verus.py` also *replaced* `LD_LIBRARY_PATH` where
  `scripts/verus_env.sh` prepends to it, so no inherited entry could help.
- With `CARGO_TARGET_DIR` (or `build.target-dir`) set machine-wide, cargo
  puts `vrml_check`, `vrml_sync` and `vermilion_direct` outside the
  repository, while every script runs them from `target/debug` and
  `crates/vermilion_direct/target/release`. What the scripts ran was then
  not what had just been built.

### Fix

- The dev shell puts zlib on `LD_LIBRARY_PATH` and sets
  `CARGO_TARGET_DIR=target`. Cargo resolves a relative value against the
  directory it runs in, which gives each of the two workspaces its own
  `target/`, where the scripts look.
- The three harness scripts prepend the toolchain's library directory to the
  inherited path.
- `nix flake check` gained `script-tests`, which runs the Python tooling's
  unit tests; no other gate ran them.

Checked inside `nix develop` with elan's own `bin` directory off `PATH`:
`./scripts/build.sh`, the smoke suite and
`./scripts/run_suite.sh --differential` each exit 0, and `nix flake check`
passes.
