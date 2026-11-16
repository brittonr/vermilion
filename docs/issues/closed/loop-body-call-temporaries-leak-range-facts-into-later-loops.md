---
title: Loop-body call temporaries leak range facts into later loops
labels: [bug, vcgen]
state: closed
github: null
---

`lower_loop` and the `for` lowering in `crates/vermilion_direct/src/lower.rs`
restored `env` after lowering a loop body but not `type_facts`. A temporary
declared inside one loop's body (for example the result binder of the
`vec_index` call that `v[i]` lowers to) kept its range fact in scope, so the
next loop's iteration context assumed a fact about a binder it does not bind.
`vrml_gen` then failed closed:

```text
rendering hygiene violated ... variable `tmp__3` is not bound by the
obligation telescope
```

Found while acquiring Terrane's reclaim-plan kernel
(`case-studies/terrane-reclaim-plan/`): `check_plan` runs a roots loop and
then an edges loop.

## Fix

Commit 533ea8a saves `type_facts` before the loop and restores it before
adding the havoc facts, in both the `while` and `for` lowerings.

Regression case: `tests/differential/c232_loop_body_temp_scope_ok.rs`
(Verus: 3 verified; Vermilion: 14/14 obligations by automation; without the
fix it hits the same hygiene error).
