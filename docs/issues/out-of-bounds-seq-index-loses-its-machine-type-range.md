---
title: Out-of-bounds Seq index loses its machine-type range
labels: [bug, vcgen]
state: open
github: null
---

A `Seq<u64>` parameter lowers to `Vermilion.Seq Int` with the range fact
only for in-bounds indices:

```
∀ i, 0 ≤ i ∧ i < w.len → inUnsignedRange 64 (w.index i)
```

In Verus every `w[i]` has type `u64`, in bounds or not, so `w[i] as int
≥ 0` holds for any `i`. Spec fns that index past the end therefore lose
facts Verus has. In the forecast-kernel, `prefix_sum(w, k)` reads
`w[k - 1]` for unbounded `k`, and the recursive cases of
`lemma_prefix_nonneg` and `lemma_prefix_monotone` stay `sorry` although
Verus proves them.

The Lean model returns `default` (0) out of bounds, so the facts are true
there, but no hypothesis or library lemma states them.

Options: emit the range fact unguarded for element types whose range is
a type invariant, or add an `index` out-of-bounds lemma
(`¬(0 ≤ i ∧ i < s.len) → s.index i = default`) to the ladder's simp set.
The first matches Verus's typing; the second leans on the model's choice
of `default` (see docs/trust.md on off-domain collection models).
