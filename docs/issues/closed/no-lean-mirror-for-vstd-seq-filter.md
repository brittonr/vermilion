---
title: No Lean mirror for vstd Seq::filter
labels: [enhancement, vcgen]
state: closed
github: 47
---

*Evidence level: reported from recording a `no_std` code base; reproduced
against both pipelines; fixed in the same session.*

```rust
pub open spec fn evens(s: Seq<u64>) -> Seq<u64> {
    s.filter(|x: u64| x % 2 == 0)
}
```

`vrml_gen` refused the whole IR file, including functions that never
mention `filter`:

```
vrml_gen: …: outside the supported fragment: vstd `vstd::seq_lib::Seq::filter` has no Lean mirror yet
```

### Fix

`Vermilion.Seq.filter` in `lean/Vermilion/Vstd/SeqLib.lean`: `List.filter`
with the predicate decided classically, registered for
`vstd::seq_lib::Seq::filter`.

vstd marks `filter` `#[verifier::opaque]`, so Verus knows it through
lemmas unless the user reveals it. Four are in the always-on
`group_seq_lib_default`, and those are the simp/grind facts of the mirror,
each proved from the model:

| vstd | mirror |
|---|---|
| `lemma_filter_len` | `len_filter_le` |
| `lemma_filter_pred` | `filter_pred` |
| `lemma_filter_contains` | `filter_contains` |
| `filter_distributes_over_add` | `filter_add` |

The model definition is in neither set, so the ladder sees `filter` as far
as an un-`reveal`ed Verus proof does. `reveal(Seq::filter)` has no effect
on the machine attempt; a proof that needs the definition goes in the
twin.

The model is `noncomputable` (a spec predicate is a `Prop`). A generated
definition that applies it must be `noncomputable` too, so the registry
lists such mirrors (`noncomputableSpecFns`) and `Expr.needsClassical`
consults it.

Corpus c260–c262: the four default facts; a false length claim; a true
claim about `filter` of a pushed element, which needs the definition. The
last two fail in both verifiers.
