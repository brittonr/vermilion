---
title: Loop-body-local type facts leak into later loops
labels: [bug, vcgen]
state: closed
github: null
---

The direct adapter accumulates type facts (`type_facts` in
`crates/vermilion_direct/src/lower.rs`) for every value it introduces,
and copies them into the iteration telescope of each loop it lowers.
Facts added while lowering a loop body (a call result, the `tmp__post`
that `Vec::push` produces) stayed in that list after the body ended. The
body is isolated, so those variables are bound only inside it; a later
loop copied their facts into its own iteration hypotheses and `vrml_gen`
stopped with

```
internal error: rendering hygiene violated in …: loop_1_iteration_3:
variable `tmp__post` is not bound by the obligation telescope
```

Twenty lines reproduce it: one loop that pushes, then a loop that sets.
Found by forecast-kernel's `rollup::group_totals` (a zero-filling push
loop before the accumulation loop).

**Fix.** Both loop lowerings (`while` and the recognized `for`) save
`type_facts` before the body and restore it before adding the havoc
facts at the exit, as the isolated assertion-query lowering already did.
Branches were not affected (checked). Corpus c236 (push loop then set
loop; failed in vrml_gen before) and c237 (false postcondition; rejected
at Verus's span).

Landed alongside a Render refinement found on the same kernel: obligations
whose goal applies no bounded recursive function get plain `vrml`, and
the rest try unfold depths `N, 0, 1` instead of every depth up to `N`
(see `docs/vcgen.md`).
