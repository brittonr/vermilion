# Performance ledger

This is a dated measurement record. Tool versions, counts, and timings below
apply to the recorded runs. For current setup and scope, see the
[development guide](../development.md) and [case-study registry](../../case-studies/README.md).

Entries are append-only. Cold dependency compilation is separated from warm
edit-loop measurements.

| Date | Milestone | Scenario | Wall time | Notes |
|---|---|---|---:|---|
| 2026-07-12 | M1a | First Lean/Veil dependency build | several minutes | One-time source build; manager-only dependency split remains future work |
| 2026-07-12 | M1a | Warm full `run_m1_pipeline.sh` (historical; absorbed into `run_suite.sh`) | 25.4 s | Verus verify, 5 Rust tests, two no-op emissions, generated/default/SMT/interactive Lean checks |
| 2026-11-15 | Lean back end (#11) | `vrml_check` on `examples/m2-loops` (3 per-function units), one `lean` per unit (`VRML_ISOLATED=1`) | 3.4–5.9 s | x86_64-linux cloud VM; each process re-imports the Mathlib closure |
| 2026-11-15 | Lean back end (#11) | Same, one `vrml_worker` batch process (`--jobs` = 2 cores) | 2.2–3.0 s | One import for the run; diagnostics byte-identical to the isolated path |
| 2026-11-15 | Lean back end (#12) | Same, persistent `vrml_worker --serve` (watch mode), 2nd/3rd check | 0.53–0.97 s | First check through the server 1.9–2.2 s (the import); warm checks pay elaboration only |

Future entries will include cold build, warm no-op, one-function body edit,
contract edit with caller invalidation, and interactive-proof-only edit as
specified in `plans/incremental-computation.md`.
