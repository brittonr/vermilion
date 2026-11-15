---
title: Drop the dead Polyrith import and measure whether the smt rung earns its import
labels: [enhancement]
state: open
github: 10
---

*Speed. Stage 1 of the Lean back-end latency plan in
`plans/execution-plan.md` ("3. Lean back-end latency"), recorded on
2026-07-14 (`logs/2026-07-14-editor-perf-and-benchmark.md`) but never
filed or executed.*

Every generated unit, twin, and `vrml_check` run imports
`Vermilion.Obligations`, and therefore its import closure. The measured
back end is about 3.1 s per `lean` process, of which about 2.2 s is
import (`docs/reports/vermilion-vs-verus-timing.md`).

- `lean/Vermilion/Obligations.lean:12` still has
  `import Mathlib.Tactic.Polyrith`. No ladder rung calls `polyrith`, and
  no committed twin outside `case-studies/aeneas/` uses it. `polyrith`
  also needs a network call to Sage, so it cannot be a ladder rung anyway.
  The import is dead weight.
- `import Smt` (lean-smt plus the cvc5 plugin) serves exactly one rung,
  the last one. The plan asks to measure whether it ever *uniquely* closes
  a goal before keeping it on the default import path.

### Tasks

1. Remove the `Polyrith` import. Run `./scripts/build.sh` and the suite,
   and confirm that no twin or example breaks.
2. With `trace.vrml.ladder` on, sweep the differential corpus, examples,
   and dalek-lite Layer A. Count obligations whose *only* closing rung is
   `smt`.
3. If that count is zero (or small and covered by twins), move `smt` behind
   an opt-in module (for example `Vermilion.Obligations.Smt`), imported only
   when `vrml_check --smt` or a twin asks for it.
4. Record the per-process `lean` startup before and after in
   `docs/reports/performance-ledger.md`. Take best-of-3 for an empty
   generated unit and for m1-pipeline end-to-end.

Also refresh the trusted-base note in `trust.md` item 5 if `smt` leaves the
default path.

## Resolution

Commit `66e0615`.

- **Task 1 done.** `import Mathlib.Tactic.Polyrith` is removed from
  `Vermilion/Obligations.lean`. Every example, the case studies run here,
  and an elaboration pass over the dalek-lite twins build without it.
  Re-adding it does not change the outcome of the hard `add_lemmas` goals.
- **Task 2, partial.** With rung hints recording winners (#9), `smt`
  closed 0 of 217 obligations: all examples, `primes`, and the dalek-lite
  manifests judged before the sweep was stopped.
- **Task 3 (gating `smt` behind an opt-in module) is deliberately not
  done.** The data do not cover the full dalek-lite sweep, which is where
  `smt` would earn its place.

Remaining before closing: a full dalek-lite sweep with
`.vermilion/rung-hints.json` (the winners are now recorded automatically),
then the gate decision, and a startup measurement for the ledger.
