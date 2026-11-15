---
title: The differential gate passes at 95% verdict parity and ignores span mismatches and false acceptances
labels: [bug, foundations]
state: open
github: 13
---

*Evidence level: read from `scripts/run_differential.py`, `scripts/run_suite.sh`
and `.github/workflows/capture-avoidance-native.yml`.*

`./scripts/run_suite.sh --differential` (and step 6 of the full gate) runs
`python3 scripts/run_differential.py` and then prints "differential corpus
passed: verdict and failure-span parity hold." But `run_differential.py`
does not enforce that:

- **Verdict gate.** It exits 0 when `verdict_hits / len(cases) >= GATE`,
  with `GATE = 0.95`. With today's 200 cases, up to 10 verdict mismatches
  pass the suite. That includes **false acceptances** (Verus rejects,
  Lean accepts), which are the soundness-relevant direction.
- **Span gate.** Failure-span agreement is computed and printed
  (`span_hits/span_total`), with `<-- MISMATCH` notes in the table, but it
  never affects the exit status. A Lean rejection at the wrong obligation
  still counts as parity.
- **Span comparison.** It looks only at `lean_lines[0]`, the smallest Lean
  failure line. An extra, spurious Lean failure at another line is
  invisible. A case is also accepted when `lean_lines[0] == expect_line`
  even if Verus reported a different line.

The fail-closed gate already exists, `scripts/differential_soundness.py`:
exact parity, coverage, and an explicit `FALSE ACCEPTANCE` message. But only
the `capture-avoidance-native` CI workflow runs it, not the suite that the
directives call "the full gate, rerun after every implementation slice".

### Proposal

- Have `run_suite.sh` (both the `--differential` scope and step 6) run
  `differential_soundness.py docs/reports/generated/differential-m1-results.md tests/differential`
  after the harness, and fail on its exit status.
- In `run_differential.py`, exit non-zero on any false acceptance and on
  any span mismatch for expected-fail cases, regardless of `GATE`. Keep
  the percentage as a reported metric only.
- Compare spans as sets: every Lean failure line must be a Verus failure
  line (or the declared `@ line`), and at least one must match. This
  catches spurious extra failures.
- Make the closing message of `run_suite.sh` reflect what was actually
  checked.

Today's corpus is 200/200 and 101/101, so tightening the gate costs
nothing now. It only stops a future regression from passing silently.
