---
title: Differential verdict cache key omits the Lean toolchain, Lake dependency pins and Verus toolchain
labels: [bug]
state: closed
github: 15
---

*Evidence level: read from `scripts/run_differential.py`.*

`run_differential.py` replays both verdicts of a case from
`.vermilion/differential-cache.json` when the case source hash and an
"environment" string are unchanged. The environment is:

- the mtimes of `rust_verify`, `vermilion_direct`, `vrml_gen` and
  `vrml_check`;
- a SHA-256 over `lakefile.lean` and `lean/**/*.lean`;
- the emission mode and a schema tag.

It does **not** include:

- `lean-toolchain` (the Lean version that elaborates every obligation);
- `lake-manifest.json` (the Mathlib, lean-smt and cvc5 revisions behind
  every ladder rung and simp set). A Mathlib bump that changes a simp lemma
  can flip Lean verdicts, while the cache keeps replaying the old ones;
- the Verus checkout's `rust-toolchain.toml` and vstd sources (vstd is
  rebuilt into a separate artifact, so the `rust_verify` mtime does not
  always move);
- the Z3 binary (`VERUS_Z3_PATH`, now also `VERMILION_Z3` under Nix);
- the cvc5 plugin used by the `smt` rung.

mtimes are also a weak identity, since `touch` or a checkout preserves or
moves them independently of content.

### Proposal

Add `lean-toolchain`, `lake-manifest.json`, the Verus `rust-toolchain.toml`,
the pinned Verus revision (from `setup_verus.sh` or `.vermilion-built-pin`)
and the Z3 version string to the environment key. Prefer content hashes
over mtimes for the four tool binaries. Bump the schema tag so existing
caches are invalidated once.

### Resolution (0fa8831)

The cache environment key now hashes, by content rather than mtime: the
`rust_verify`, `vermilion_direct`, `vrml_gen` and `vrml_check` binaries,
`libvstd.rlib`, `vstd.vir`, the Verus `version.txt`, the Rust toolchain
channel, `z3 --version`, the cvc5 plugin, `lean-toolchain`,
`lake-manifest.json`, the lakefile and every Lean source. The schema tag is
`classified-outcomes-v4`, so old caches are discarded.
