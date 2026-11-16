---
title: Fragment gaps found acquiring the Terrane reclaim-plan kernel
labels: [feature, vcgen]
state: open
github: null
---

`case-studies/terrane-reclaim-plan/` checks Terrane's GC reclaim-plan kernel
(OnixResearch/terrane, `src/reclaim_plan/verified.rs`) with Lean as the only
verifier. Before Vermilion could lower it, the kernel had to be restated
upstream (Terrane commits 29a7dfa and b64e429). Each restatement keeps the
specifications and theorems the same in meaning, and Verus still reports 75
verified. Each is a construct Vermilion should eventually accept as written:

1. **Two-binder `choose`.** `choose|a, b| P(a, b)` was split into two
   single-binder chooses. Relates to DL2 (`choose`) in
   `case-studies/dalek-lite/PLAN.md`.
2. **Spec functions recursing on `subrange`.** `count_true(s)` was originally
   defined by recursion on `s.subrange(..)`; the emitted `Specs.lean`
   definition failed its termination proof. It is now
   `count_true_upto(s, k)`, recursing on the integer `k`. Fixing this means
   teaching the `decreasing_by` ladder that `subrange` shrinks `len`. That
   ladder is shared, so check the effect on other case studies' `Specs`
   before changing it.
3. **A byte comparison in a `while` condition.** `key_lt` compared bytes in
   its loop condition; it now uses a `same` flag set in the body. The exact
   lowering failure was not recorded when the workaround went in; reproduce
   it before working on this item.
4. **`final(..)` postconditions on `&mut` parameters.** `project_row` now
   takes its edge vector by value and returns the extended vector. Mantle's
   pinned vstd also lacked `final`, so the restatement was needed there too.
5. **A spec step quantified over byte strings.** The key-reachability step
   (`key_reach_fuel`) was restated over entry indices instead of a
   byte-string witness.

Separately, 137 of the 617 obligations (counting one `Decidable` evidence
instance) needed interactive proofs in the
`proofs/` twin. Most of them are loop invariants over `Seq.update` /
`Seq.push` with a case split on the updated index, and wraparound side
conditions of the form `(x + 1) % 2^64 = x + 1`. A small library of
update/push invariant lemmas, plus a ladder rung that tries them, would
probably close many of these automatically; see the `vrml:user` helper
sections in `proofs/reclaim_plan/` for the lemmas that were needed.
