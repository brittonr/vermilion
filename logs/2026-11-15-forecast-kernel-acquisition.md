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

## Follow-up: kernel fully proved in Lean

The kernel now carries its own `proofs/` twin (forecast-kernel
`vermilion/proofs/`, synced in and out by its `run.sh`, which runs with
`--lib ForecastKernel --manual-proofs`). Against 4f8f0bf: 123 obligations,
98 by automation, 25 by hand-written twin proofs over helper lemmas in the
Specs twin's user section; twin kernel-checked, 0 `sorry`, standard axioms
only. Most of the 25 trace to the recursive-unfold preamble issue and to the
u64/u128 cast chain in `spread`.

A negative control (one twin proof corrupted) failed correctly, but exposed
a misleading summary line: filed as
`generated-check-summary-counts-a-broken-twin-proof-as-discharged`.

## Follow-up: recursive-unfold attempts tried at every depth

User go-ahead ("do it") on the preamble issue. The attempt for an
obligation with recursive unfolds is now `vrml_first` over depths
`N, 0, 1, …, N − 1`; `vrml_first` (new, `Vermilion/Obligations.lean`)
rebases heartbeats per alternative and counts exhaustion as failure.
Two bugs in the first cut, both caught before landing: core `first`
rethrew heartbeat exhaustion (7 kernel obligations aborted mid-attempt),
and `iterate d (…); vrml` parsed as iterating the whole sequence (c41,
c60, c99 regressed until the `iterate` was parenthesised).

Validation: corpus 234/234 in both emission modes (rebased on #26), 122/122 spans, 0 false
acceptances (c223 passes and failed before; c224 now fails at Verus's
span); `tests/vrml_first.lean`; all 37 examples and 10 case-study runners
(aeneas and dalek-lite not run) pass with no tracked twin changes.
forecast-kernel by automation alone: 98 → 110 of 123, at roughly twice
the wall time for its 13 remaining failures, which now try every depth.

## Follow-up: every Lean keyword escaped

The kernel's new `scenario` module named a parameter `include`, which is a
Lean keyword missing from the hand-curated `leanReservedWords` (35 of the
247 identifier-shaped tokens in the generated modules' environment). The
Specs module failed to parse. The list is now the full token set, guarded
by `tests/lean_reserved_words.lean`; corpus c226/c227.
