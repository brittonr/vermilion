---
title: ""Fill a prefix" loops over Seq::update needed a twin proof"
labels: [enhancement, vcgen]
state: closed
github: 29
---

*Evidence level: executed.*

The ordinary loop

```rust
while i < v.len() invariant ..., forall|j: int| 0 <= j < i ==> v[j] == 0 { v.set(i, 0); i = i + 1; }
```

verifies in Verus, but the invariant-preservation obligation
`∀ j < i + 1, (v.update i 0)[j] = 0` defeated every ladder rung. It needs a
case split on `j = i`, with `index_update_same` and `index_update_other`.
m3-vec-set carried a hand-written twin proof for exactly this.

### Fix

`Vermilion.Seq.index_update_in_range` (`@[grind =]`): for an in-range
index, `(xs.update i x).index j = if j = i then x else xs.index j`.
`grind` e-matches it and splits the `if`. The lemma is restricted to
in-range updates, which is all vstd specifies; off-range updates are a
model choice (#19) that automation must not see. `len_update` is also
`grind`-tagged.

Corpus c226 (ok) and c227 (off-by-one, wrong). On the dalek-lite
`field_u64` units that use `Seq.update` (8 units, 342 obligations, sweep
budgets), the failing set is identical with and without the lemma (232 and
232).
