---
title: Vermilion as a standalone tool (reproduce proofs outside this repo)
labels: [feature]
state: closed
github: 50
---

User request (2026-07-20, during the dalek-lite DL8 acquisition): it
should be possible to reproduce Vermilion verification runs on a
standalone copy of a target project, in a separate folder — using
Vermilion **as a tool**, not from inside this development repository.

Today everything is repo-hosted: `run_example.sh` resolves this repo's
root, twins build through the monolithic `lakefile.lean` (automatic
proof-root discovery), and `.vermilion/` state sits at the repo root.
Two standing disciplines already point the right way: **no absolute
paths** anywhere in manifests/imports/plumbing (everything
repository-relative), and the pinned Verus installs to
`~/.cache/vermilion/verus`, never into the repo.

Missing pieces (packaging, not architecture):

1. **Installable distribution**: the four binaries (`vermilion_direct`,
   `vrml_gen`, `vrml_check`, `vrml_sync`), the Vermilion Lean library as
   a prebuilt **olean cache** (it depends on Mathlib — consumers must
   not rebuild it), and `setup_verus.sh`, all keyed to
   `~/.cache/vermilion/<version>`.
2. **`vrml init`**: materialize in any target folder the scaffold this
   repo provides implicitly — a project-local lakefile template
   importing the prebuilt library and globbing `proofs/`, plus
   project-local `.vermilion/` state.
3. **`--project-root`**: factor `run_example.sh`'s repo-root assumptions
   behind an explicit root (mechanical, given the no-absolute-paths
   discipline).

Acceptance: in a fresh directory outside this repo, `vrml init`, copy
`case-studies/dalek-lite/` (or any example), run its `run.sh`, and get
the identical verdicts, generated modules, statement hashes, and twin
reconciliation — Lean as the only verifier, interactive proofs riding in
`proofs/` twins. The per-function emission A/B and differential
harnesses stay in this repo (they are development tools, not user
surface). Update `docs/TUTORIAL.md` in the same slice that lands the
user-visible workflow.

**Resolved 2026-11-26.**

- **Home and project.** The tools keep a *home* (the tools, the Lean
  library, its Lake packages) apart from a *project* (sources,
  `generated/`, `proofs/`, `.vermilion/`). `run_example.sh` and
  `vrml_watch.sh` take `--project-root`. `vrml_check` and `vrml_watch` take
  the library's search path, the cvc5 plugin and the batch worker from
  `VERMILION_HOME` and add the project's own build directory
  (`crates/vermilion_backend/src/home.rs`). A checkout is its own project,
  as before.
- **`vrml init`** (`scripts/vrml`, `scripts/vrml_init.py`) writes the
  scaffold: `.vermilion/home`, a link to the home; `lakefile.lean`, which
  requires the library through the link and takes the same `lean_lib`
  stanzas as the repository's; `lake-manifest.json`, which names the
  library and each of its packages by its path under the link, so Lake
  uses them as built and fetches nothing; `lean-toolchain`; and
  `scripts/run_example.sh`, which runs the home's driver on the project,
  so a copied `examples/<name>/run.sh` works unchanged. `vrml run`, `vrml
  watch` and `vrml register` do the same from anywhere inside the project.
- **Distribution.** The flake output `vermilion` (x86_64-linux) is an
  installed home: the Verus fork, the adapter, the Rust tools, the Lean
  release, the library with Mathlib as built, and `vrml`. It is a Nix
  store path, not a directory under `~/.cache/vermilion/<version>`. A
  checkout with its tools built serves as a home too. The installed
  lakefile is the repository's up to the `-- vrml:repository-libraries`
  line: the proof libraries below it name directories relative to the
  repository, which a requiring project would resolve against itself.
- **Acceptance.** `scripts/test_standalone_project.sh` (suite, contract
  phase) verifies `examples/m2-loops` in the repository and as a copy in a
  fresh project in a temporary directory, with the checkout as home: the
  same verdict, byte-identical `generated/` (modules and manifest, so
  statement hashes) and `proofs/` twins, and no artifact that names where
  the project is. The flake check `standalone-project` runs
  `examples/m1-pipeline` and `examples/m2-loops` with the installed tool
  in the build sandbox, requires the checked-in twins of m2-loops
  unchanged, and builds them with Lake from the project's workspace,
  without the network.

Not covered: dalek-lite as the copied study (its runner clones upstream
and builds a stub crate with rustup), and the editor in a project
(`docs/issues/the-editor-integration-has-not-been-run-in-a-project-outside-the-repository.md`).
`docs/TUTORIAL.md` step 8 and `docs/development.md` ("Home and project")
describe the workflow.
