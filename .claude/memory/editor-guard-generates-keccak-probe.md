---
name: editor-guard-generates-keccak-probe
description: "One exception to the aeneas read-only rule: the editor guard may generate the keccak_iota probe modules under the gitignored generated/ directory"
metadata:
  node_type: memory
  type: feedback
---

On 2026-11-26 the user allowed one exception to
[[aeneas-folder-read-only]]: `scripts/test_differential_editor.sh` may
generate the `keccak_iota` probe's modules under
`case-studies/aeneas/probes/generated/` when they are missing.

- The exception covers that gitignored `generated/` directory only. The
  guard runs the Verus front end, the adapter and `vrml_gen`, and nothing
  else: it does not judge the probe and does not reconcile its twins.
  `run_example.sh` on the probe would rewrite tracked files under
  `case-studies/aeneas/probes/proofs/`, which the exception does not cover.
- Everything else in `case-studies/aeneas/` stays read-only as before.

**Why:** the editor guard pins a generated unit of that probe, no suite
phase produces it, and without it `run_suite.sh` and
`run_suite.sh --differential` ended red on every fresh checkout.

**How to apply:** keep the guard's generation limited to
front end → adapter → `vrml_gen`. Any other work inside the folder still
needs its own explicit instruction.
