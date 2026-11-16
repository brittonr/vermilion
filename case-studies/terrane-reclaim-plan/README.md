# Terrane reclaim-plan kernel

This study checks the garbage-collection planning kernel from
[OnixResearch/terrane](https://github.com/OnixResearch/terrane), pinned at
commit `5aec06fdfc841b3d472e239310f47e724b91e12f`
(`src/reclaim_plan/verified.rs`). [`reclaim_plan.rs`](reclaim_plan.rs) is that
file verbatim, minus its `#[cfg(test)]` modules.

The kernel decides which store paths a garbage collector may delete. Given a
reference graph, a root set, and the set of paths the store is willing to
reclaim, it computes the retained set (everything reachable from a root) and
the candidate set (reclaimable and not retained), and proves the plan sound,
optimal, and unique. It also validates the projection from store-path keys to
graph indices (`project_keys`, `key_mask`). Mantle
([OnixResearch/mantle](https://github.com/OnixResearch/mantle)) vendors this
exact source and runs `project_keys`, `key_mask`, and `check_plan` before
every GC, refusing any plan the kernel rejects.

Verus (0.2026.05.17) verifies all 75 functions. Here the same source goes
through Vermilion, with Lean as the only verifier.

## Status

| | Count |
|---|---:|
| Obligations (44 per-function units, plus shared `Specs.lean`) | 617 |
| Closed by the `vrml` automation | 482 |
| Proved by hand in the `proofs/` twin | 135 |
| `sorry` remaining | 0 |

The 135 hand proofs include one `Decidable` evidence instance
(`reclaim_plan.key_lt.evidence_decidable_prop`, in
[`proofs/reclaim_plan/Evidence.lean`](proofs/reclaim_plan/Evidence.lean)).
The hand-proved theorems spot-checked with `#print axioms` depend only on
`propext`, `Classical.choice`, and `Quot.sound`.

## Running it

```sh
./case-studies/terrane-reclaim-plan/run.sh
```

`run.sh` delegates to `scripts/run_example.sh` with `--manual-proofs`: the run
passes because the `proofs/` twin discharges every obligation, even though the
automation alone does not.

## Generated attempts vs. your proofs

Every run regenerates `generated/reclaim_plan/` (one Lean file per verified
function, plus `Specs.lean` holding the spec definitions once). These files
are machine output: untracked, overwritten on each run, and holding only the
automation's attempts.

[`proofs/reclaim_plan/`](proofs/reclaim_plan/) is the user-owned twin, and it
is what Lake builds. `vrml_sync` reconciles it with each run:

- An obligation the automation closes is byte-identical to the generated file.
- An obligation it cannot close appears as `sorry` with a warning, for you to
  prove.
- A hand proof survives as long as its obligation's statement is unchanged.
  If the Rust source changes the statement, the stale proof is replaced by
  `sorry` (with a warning) and must be redone.

Shared helper lemmas go between `-- vrml:user:begin` and `-- vrml:user:end` in
a unit; sync preserves that section. Twelve units carry lemmas there, mostly
in `plan` and the key-reachability units (for example `rf_eq`/`rf_step` for
`reachable_fuel`, and `ct_nonneg` for `count_true`).

## Adapting the kernel

Before Vermilion could lower the kernel, it had to be restated upstream in
Terrane, keeping the specifications and theorems the same in meaning:

- two-binder `choose` was split into single-binder chooses;
- `count_true` was changed to recurse on an integer index instead of
  `subrange`;
- a byte comparison was moved out of `key_lt`'s loop condition;
- `project_row` takes and returns its edge vector by value instead of using
  a `final(..)` postcondition.

These gaps are tracked in
[`docs/issues/fragment-gaps-found-acquiring-the-terrane-reclaim-plan-kernel.md`](../../docs/issues/fragment-gaps-found-acquiring-the-terrane-reclaim-plan-kernel.md).
Acquiring the kernel also exposed an adapter bug, now fixed, where range facts
of loop-body temporaries leaked into later loops
([closed issue](../../docs/issues/closed/loop-body-call-temporaries-leak-range-facts-into-later-loops.md),
regression case `tests/differential/c217_loop_body_temp_scope_ok.rs`).
