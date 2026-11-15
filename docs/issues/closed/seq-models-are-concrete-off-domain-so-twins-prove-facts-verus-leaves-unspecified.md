---
title: Seq models are concrete off-domain, so twins prove facts Verus leaves unspecified
labels: [bug, foundations]
state: closed
github: 19
---

*Evidence level: executed. Lean against the current prelude, and Verus on
the same claims.*

`docs/trust.md` says the `List`-slice model of `Seq::subrange` is its
meaning "only in range; off-range it is unspecified (as in Verus)", and
describes `Map` lookup as unconstrained off-domain. But the `Seq` models
are ordinary computable definitions with fixed off-domain values:

- `Seq.index s i` is `if 0 ≤ i then s.getD i.toNat default else default`,
  so every out-of-range read is `default` (`0` for `Int`);
- `Seq.subrange s i j` is `(s.drop i.toNat).take (j - i).toNat`, so a
  reversed range is `[]`;
- `Seq.update s i x` with `i < 0` is `s`.

**What a twin can prove.** These all check in a twin under the current
prelude (`lake env lean`, exit 0). Pinned Verus fails each corresponding
`proof fn`.

```lean
example (s : Seq Int) : Seq.index s (-1) = 0 := by simp [Seq.index]
example (s : Seq Int) (h : Seq.len s = 0) : Seq.index s 0 = 0 := by
  simp [Seq.len] at h; subst h; simp [Seq.index]
example (s : Seq Int) : Seq.len (Seq.subrange s 3 1) = 0 := by
  simp [Seq.subrange, Seq.len]
example (s : Seq Int) : Seq.update s (-1) 5 = s := by simp [Seq.update]
```

The automated ladder does not find these (it does not unfold the models),
so the **verdict corpus agrees today**. The divergence is only reachable
through user twin proofs, the "interactive proofs first-class" path, and
through future simp-set growth. It is the same pattern as #4 (`x % 0`),
which made `emod` opaque at zero.

No executable behaviour is affected: exec indexing checks bounds. The
issue is that a "verified" spec-level claim can rest on a model choice
Verus does not make, against what `trust.md` states.

### Fix options

1. Make the off-domain values opaque, like `divZero`/`modZero`:
   - `index` returns `seqIndexOOB s i` (an `opaque`) off range;
   - `subrange`/`update` off range return opaque functions of their
     arguments.
   
   In-range `@[simp]` lemmas keep their form, so automation is unaffected.
2. Or keep the concrete models and correct `trust.md`. List every
   off-domain value Vermilion fixes (`Seq.index`, `subrange`, `update`,
   wrong-variant field accessors, `Map.index` off-domain) as a deliberate,
   documented strengthening.

Either way, add a twin-level check to `tests/` that tries the four
`example`s above, and expects them to fail under option 1 or to be listed
under option 2.

### Resolution: option 2 (document)

The off-domain values are load-bearing in the prelude: 18 lemma proofs in
`lean/Vermilion/Vstd/` unfold `index`/`update`/`subrange` (for example
`Seq.ext`, `index_update_other`), so the opaque route is a model redesign,
not a local change.

- `docs/trust.md` now lists every fixed off-domain value as a deliberate
  strengthening ("Concrete off-domain values"): `Seq.index`, `subrange`,
  `update`, `Map.index` of constructed maps, wrong-variant accessors and
  out-of-range recursive spec fns. The incorrect "unspecified (as in
  Verus)" wording for `subrange` and "unconstrained off-domain" for `Map`
  is gone.
- `tests/off_domain_models.lean` (run by `test_render_hygiene.sh`) pins the
  four examples above plus `Map.empty`, so making one opaque later is a
  visible change made together with the doc entry.
