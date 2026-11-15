# 2026-11-15: forecast-kernel acquisition

The user ran their new `brittonr/forecast-kernel` crate (a Verus kernel for
service-industry project forecasting: `spread`, `capacity`, `ledger`) through
Vermilion, then asked to land the fix it needed and continue. The crate's
`vermilion/run.sh` assembles its modules into one file under
`case-studies/forecast-kernel/` (untracked here) and runs
`scripts/run_example.sh`; `--z3` runs the pinned Verus on the same file.

Baseline at 9f5ebde: Verus/Z3 verifies all 17 functions. Lean proved
nothing, because the shared `Specs` module failed to compile on a
`drop_last` termination goal.

- **Landed: `Seq.len_dropLast_lt`** (6850197). Closes the termination goal of
  `decreases s.len()` recursion through `s.drop_last()` under a
  `s.len() == 0` guard. Corpus c215/c216. With it, Lean proves 96 of the
  kernel's 121 obligations (capacity complete, ledger 5 open, spread 20).
- **Landed: imports in the shared-olean cache key** (2d5f377). While
  checking c215 against the unpatched library it passed from a stale
  olean; `vrml_check` now keys `Specs`/`Evidence` oleans on the imported
  modules' Lake `depHash` too.
- **Filed, open:** `recursive-unfold-preamble-rewrites-the-goal-but-not-the-hypotheses`
  (the `iterate … rw [f]` preamble unfolds the goal only, so a goal
  identical to a hypothesis is lost; `vrml_ladder` alone closes it) and
  `out-of-bounds-seq-index-loses-its-machine-type-range`. Both are
  rendering/lowering changes that regenerate tracked twins, so they were
  left for the user to schedule.
- **Folded into #49:** the kernel's order-dependent `prefix_sum` refusal is
  the cross-module termination-check gap; a single file with inline
  modules reproduces it when the consumer module comes first.

Validation: corpus 224/224 per-function (twice), 116/116 spans, 0 false
acceptances; `test_incrementality.sh`; m2-specfns, m3-datatypes,
m2-recursion; backend unit tests. Not run: per-file corpus mode,
`run_suite.sh`, the dalek-lite runners, `test_emission_modes.sh`, issue
sync (`sync_issues.py` needs GitHub GraphQL, which this session lacks; new
files carry `github: null`).
