---
title: emod x 0 reduces to x, contradicting trust.md's "opaque at divisor zero"
labels: [bug, foundations]
state: closed
github: 4
---

*Evidence level: the prelude definitions were executed in core Lean 4.33.
The Verus side has not been run.*

`docs/trust.md` (Embedding conventions) says `ediv`/`emod` are "opaque at
divisor zero (an arbitrary, unconstrained value — mirroring SMT's
underspecification, so nothing can be proved about `x / 0` on either
side)".

That holds for `ediv` (`divZero x`), but not for `emod`. The prelude
defines

```lean
noncomputable def emod (x y : Int) : Int :=
  if y = 0 then x - y * ediv x y else x % y
```

so `emod x 0 = x - 0 * divZero x = x`, which is a definite value:

```lean
theorem modzero (x : Int) : emod x 0 = x := by simp [emod]   -- accepted, exit 0
```

In SMT-LIB's integer theory, `mod` by zero is unconstrained beyond being a
function of its arguments. So Vermilion very likely proves `x % 0 == x` in
spec code where Verus does not. That is a verdict-coherence divergence in
the *accepting* direction. It is not a soundness hole for executable code,
because exec `%` checks the divisor, but it is a false statement about the
embedding in the trust document.

### Fix (pick one, then update `trust.md` and `docs/vcgen.md` if affected)

- Make `emod` opaque at zero as well, with an `opaque modZero : Int → Int`,
  keeping `emod_of_ne_zero`. The coupling `x = y*ediv + emod` then holds
  only for `y ≠ 0`, which matches SMT-LIB.
- Or keep the coupled definition and correct `trust.md` to say that `x % 0`
  is pinned to `x`.

Either way, add a differential case `proof fn mod_zero(x: int) ensures x % 0 == x {}`
and record both verdicts in the corpus. The expected outcome is Verus
fails; Vermilion should fail too if the opaque option is chosen.

## Resolution

Commit `66e0615`.

Fixed by making `emod` opaque at zero, like `ediv`. A separate
`opaque modZero : Int → Int` is used, so `x % 0 = x` is no longer
provable; `emod_of_ne_zero` is unchanged. `docs/trust.md` now says both
`x / 0` and `x % 0` are unconstrained, with separate opaque functions.

No committed twin relied on the old definition: all examples, the case
studies run here, and an elaboration pass over the dalek-lite twins build
under the new prelude. The suggested differential case
(`proof fn mod_zero(x: int) ensures x % 0 == x`) was not added. The Verus
verdict was not run here, so add it with both verdicts recorded.
