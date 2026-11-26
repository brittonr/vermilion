---
title: Generated-check summary counts a broken twin proof as discharged
labels: [bug]
state: open
github: 34
---

With `--manual-proofs`, when a hand-written twin proof does not
kernel-check, `run_example.sh` falls back from the fast path to the full
generated check. That check prints a success line counting the broken
obligation as discharged:

```
case-studies/forecast-kernel/proofs/kernel/ledger_depletion.lean:599:2: error: Type mismatch
…
`kernel.ledger.depletion.ensures_5` depends on [sorryAx]
twin check failed: case-studies/forecast-kernel/proofs/kernel/ledger_depletion.lean
the proofs twin did not kernel-check on the fast path — running the full generated check for diagnostics
✓ all 123 obligations in case-studies/forecast-kernel/generated/kernel/ (per-function units) verified by Lean — 98 newly checked, 25 discharged interactively. 🎉
  • `kernel.ledger.depletion.ensures_5` — …/ledger_depletion.lean:…
…
twin check failed: case-studies/forecast-kernel/proofs/kernel/ledger_depletion.lean
```

The run's verdict is right (exit 1, from the second twin check), but the
middle line claims every obligation verified, including the one whose
proof was just rejected. "Discharged interactively" appears to come from
static twin coverage (the twin has a non-`sorry` body), not from the twin
having kernel-checked.

Expected: the generated-check summary should not claim twin-covered
obligations as discharged before the twin check has passed. It could
report them as "covered by the twin, pending its check", or the runner
could suppress the ✓ line when it already knows the twin failed.

Repro: forecast-kernel's `vermilion/run.sh` with one twin proof in
`vermilion/proofs/kernel/ledger_depletion.lean` changed to
`exact le_of_lt loop_0_exit_5`.
