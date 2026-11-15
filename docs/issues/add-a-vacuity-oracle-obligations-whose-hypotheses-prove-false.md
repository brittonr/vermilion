---
title: "Add a vacuity oracle: obligations whose hypotheses prove False"
labels: [enhancement, foundations]
state: open
github: 16
---

Verdict parity cannot see a **vacuous** obligation: one whose hypotheses
are contradictory, so it "verifies" whatever its goal says. Unsound
lowering bugs show up exactly this way. The closed issue
`quantifier-binders-capture-substituted-variables-so-false-vcs-become-vacuous-and-verify`
was one, and the `assert forall` capture fixed in #6 was another. Today
nothing looks for vacuity systematically.

### Probe run (2026-11-15, executed)

I took every generated unit module of the examples, the case studies
(except dalek-lite and aeneas) and the differential corpus. In each one I
replaced every obligation's goal with `False` and tried
`vrml_norm; first | omega | (simp_all; done) | grind` at
`maxHeartbeats 40000`, through `vrml_worker`.

- **Result: 1,162 obligations; 15 prove `False` from their hypotheses.**
  Six example/case-study groups could not be loaded because their
  generated `Specs` olean had not been built yet, so they were not covered.
- The 15, by source:
  - `imo_1988_6` `is_perfect_square.assert_2`/`assert_15` and
    `sqrt2_contradiction.ensures_2`;
  - percolator `active_bitmap_set.ensures_0_0`/`ensures_0_1`;
  - differential cases `c16` (`assert_1`), `c119` and `c120` (two each),
    `c172` (`assert_2`), and `c29` (four).
- **Inspected: all legitimate dead code**, not lowering bugs:
  - `active_bitmap_set`: a guard that contradicts `requires`;
  - `c16`: code after a failed `assert`;
  - `c172`: an unreachable loop body;
  - `c29`: code after `continue` with `s == 0` invariant in context;
  - `is_perfect_square`: an explicit `assert(false)` proof by
    contradiction.
- `c119`/`c120` (empty and reversed ranges) and `sqrt2_contradiction`
  match by name and shape but were not opened one by one.

So the probe is cheap, but on its own it cannot separate dead code from a
bug. It needs an oracle.

### Proposal

- **Mutation differential (the oracle).** For each function of each
  expect-pass corpus case and example, generate a mutant with `assert(false)`
  inserted at the end of the body, before each return and inside each loop
  body. Run both verifiers. Verus proving it means dead code, and is fine.
  **Lean proving it while Verus rejects is a vacuity bug** (a false
  acceptance by construction), and fails the gate.
- **Lean-side vacuity report.** Add `vrml_check --vacuity`, which runs the
  probe above per obligation and lists vacuous ones next to the verdict.
  Treat a newly vacuous obligation (absent from a checked-in allowlist of
  known dead code) as a regression.
- Run both in the full gate.

### Progress (mutation half landed)

- `scripts/differential_vacuity.py` implements the mutation differential:
  `assert(false);` after statement-ending lines and at the start of nested
  blocks inside every exec/proof fn body of each expect-pass case (up to
  `--per-case N`, default 6, sampled evenly). Mutants Verus cannot
  elaborate are skipped. The Lean side runs under sweep budgets with a
  300 s wall-clock limit, because a `False` goal on a live path can keep an
  uncapped rung searching for an hour (seen on c93's broadcast lemmas).
- It runs in `run_suite.sh` after the exact soundness gate, in both the
  full and `--differential` scopes.
- First full run, 4 positions per case: 269 mutants, **0 vacuity bugs**,
  9 dead positions (both verifiers prove them: early returns, empty ranges,
  short-circuit loop bodies, code after `break`/`continue`), 256 live,
  4 skipped.
- Separately, while re-rendering dalek-lite for #22, a real vacuous
  obligation turned up there: `lemma_p_is_odd.assert_5` had the
  hypothesis `((0 - 1) % 2) = 1`, false over `Nat`. It is fixed by #22.

Still open: the Lean-side `vrml_check --vacuity` report with an allowlist
of known dead code, which would cover examples and case studies that the
mutation oracle does not reach.
