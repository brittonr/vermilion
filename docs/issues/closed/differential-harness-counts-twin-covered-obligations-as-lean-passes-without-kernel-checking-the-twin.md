---
title: Differential harness counts twin-covered obligations as Lean passes without kernel-checking the twin
labels: [bug, foundations]
state: closed
github: 14
---

*Evidence level: read from `scripts/run_differential.py`,
`scripts/differential_outcomes.py` and `vrml_check`; not reproduced with a
broken twin.*

The differential harness runs `vrml_check <manifest>` per case and
classifies the result with `classify_lean`, which **skips**
`covered_by_twin` diagnostics: "an informational receipt for a previously
kernel-checked twin". But nothing in the harness kernel-checks the twin:

- `run_differential.py` never runs `vrml_check --twin-check`, and never
  builds the `DifferentialProofs` Lake library.
- `twin_covers` is a static, textual check: same marker hash, same
  declaration text, a different body, no hole (since #1). It does not
  elaborate anything.

So for a corpus case whose obligation (or typeclass evidence) is covered by
`tests/differential/proofs/<case>.lean`, the Lean verdict "pass" rests on a
twin that may not compile at all. `c139_bool_ite_evidence_ok` passes today
exactly this way: its `Decidable` evidence is the twin's
`Classical.propDecidable`, which the harness never checks. Editing that
twin body into something ill-typed would leave the differential verdict at
"pass".

The harness also cannot tell "Lean pass via automation" from "Lean pass via
a user twin proof". `.claude/memory/interactive-proofs-first-class.md`
records that distinction as a design TODO for parity reporting.

### Proposal

- When any obligation of a case is twin-covered, run
  `vrml_check <manifest> --twin-check` (it includes the `#vrml_audit` from
  #1). Treat a failing twin as a Lean **rejection**, or as an
  infrastructure failure, never a pass.
- Add a column to the results table: `auto` / `twin (N)` / `refused`, so
  twin-discharged parity is visible and reported separately.
- Add a regression case: a copy of `c139` whose twin evidence body is
  ill-typed must not reach "pass".

### Resolution (0fa8831)

- When a case has twin-covered obligations, the harness runs
  `vrml_check --twin-check` (with the `#vrml_audit`). A twin that fails is
  a Lean rejection.
- The results table has a `Lean pass via` column: `auto`, `twin (N)`, or
  `fail`. c139 now reports `twin (1)`.
- Doing this exposed a second gap: coverage detection falls back to the
  legacy per-file twin when per-function unit twins do not exist, but
  `--twin-check` refused that case. `twin_check` now falls back the same
  way (when every unit does), so the kernel check covers exactly the text
  coverage was claimed from.
- `test_typeclass_evidence.sh` pins that an ill-typed evidence twin fails
  `--twin-check`; it was also checked by hand against the c139 corpus twin.
