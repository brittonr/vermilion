---
title: Make the loop havoc-set walk exhaustive over StmX (no catch-all)
labels: [enhancement, foundations, verus]
state: open
github: 7
---

*Hardening; no known exploit. Evidence level: static reading.*

`collect_assigned` (`crates/vermilion_direct/src/lower.rs`) computes the
set of variables a loop may modify. That set is every variable the loop
havocs, and the comment explains it replaces vir's unset `modified_vars`.
It matches `Assign`, `Call{dest}`, `Block`, `DeadEnd`, `OpenInvariant`,
`If`, `Loop`, `AssertQuery`, and `ClosureInner`, then ends in
`_ => {}`.

The remaining `StmX` variants appear not to write program variables.
Upstream Verus has `Assert*`, `Assume`, `Fuel`, `RevealString`,
`BreakOrContinue`, `Return`, and `Air`; this list still needs to be
confirmed against the pinned fork's `vir::sst::StmX`. The `&mut` writeback
path is covered today: the committed twin
`examples/vermilion-blog/proofs/vermilion_blog/extend_from_idx.lean` havocs
`r` (`r.push` in a `for` loop) to a fresh `r_2` before the exit facts. But the arm is a fail-*open* catch-all in
the one function whose omissions are unsound. A variable missing from the
havoc set keeps its pre-loop value in the continuation and inside isolated
iterations. `trust.md`'s fail-closed audit ("no identity catch-alls")
targets exactly this pattern, but it covered expression and statement
*lowering*, not this auxiliary walk. The same pattern appears in the
loop-depth `walk` at ~L3551.

The Verus fork is pinned but actively bumped (DL7 vstd drift). A new or
changed `StmX` variant that carries a write, for example a future
`AssignField` or a reshaped `&mut` writeback, would compile silently and be
dropped from the havoc set.

### Proposal

- List every `StmX` variant explicitly in `collect_assigned` (and in the
  sibling walks), with comments on why each non-writing variant
  contributes nothing. A Verus bump that adds a variant then fails to
  compile here, instead of producing an unsound havoc set.
- Optionally, cross-check the result against vir's own
  `compute_assign_info` when the exported SST provides it, and refuse the
  loop on disagreement.
- Add a regression case to `tests/lowering_isolation`: a loop that writes
  through each supported destination shape (`x = …`, `x.f = …`,
  `x[i] = …`, `&mut` call argument, `*r = …`), each followed by an
  assertion that must fail if the variable were not havocked.
