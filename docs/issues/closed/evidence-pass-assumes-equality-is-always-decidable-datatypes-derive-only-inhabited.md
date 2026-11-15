---
title: Evidence pass assumes equality is always decidable; datatypes derive only Inhabited
labels: [bug, vcgen]
state: closed
github: 3
---

*Evidence level: static reading, plus a core Lean 4.33 snippet that was
executed. Not reproduced through the full pipeline.*

`Expr.constructivelyDecidable` (`lean/Vermilion/Ir/Vcgen.lean`) returns
`true` for every non-connective `.binary` operator, `eq`/`ne` included,
**regardless of operand type**. So `iteP (a = b) …` never requests
`Decidable` evidence. But the rendered models frequently have no
`DecidableEq` instance:

- `renderDatatype` emits user `inductive`s with `deriving Inhabited` only.
- Generic type parameters are bound as `(T : Type) [Inhabited T]`, with no
  `DecidableEq T`, so `Seq T = Seq T` (`List T`) is undecidable too.
- `Vermilion.Map` holds a function and cannot be `DecidableEq` at all.

Core Lean 4.33 reproduction of the model shapes:

```lean
inductive D where | A (x : Int) | B
deriving Inhabited
theorem t1 (a b : D) : iteP (a = b) (1:Int) 2 = iteP (a = b) 1 2 := rfl
-- error(lean.synthInstanceFailed): failed to synthesize Decidable (a = b)
theorem t2 (T : Type) [Inhabited T] (s1 s2 : List T) : iteP (s1 = s2) (1:Int) 2 = … := rfl
-- error(lean.synthInstanceFailed): failed to synthesize Decidable (s1 = s2)
```

A spec-level `if x == y` on a struct, an enum with payload, or a generic
`Seq` therefore produces an obligation **statement** that does not
elaborate. Such an obligation cannot be discharged even by a user twin.
It works only by accident when some *other* obligation in the module
triggered the module-wide classical `Decidable p` evidence instance.
Separately, `Expr.needsDecidableEvidence` has no `.choose` arm, so an
`ite` inside a `choose` predicate is never inspected.

### Fix

- Emit `deriving Inhabited, DecidableEq` for rendered inductives whose
  fields all have decidable equality (`Int`, other derived datatypes,
  `Seq`/`Set`/`Multiset` of those). Fall back to `Inhabited` only, and
  request evidence, otherwise. Field types come from the `DataView`; record
  per-datatype decidability in the generator.
- In `constructivelyDecidable`, treat `eq`/`ne` as constructive only when
  the operand type is known to be decidable. That needs the IR to carry
  (or the generator to infer) the operand type for `eq`. The conservative
  alternative is to request evidence whenever the operands are not
  scalar-typed.
- Add the missing `.choose` arm to `needsDecidableEvidence`.
- Add differential cases: an enum-with-payload `==` guard, and a generic
  `Seq<T>` `==` guard inside a spec `if`.

Related: ilyasergey/vermilion#48 (Bool-parameter conditionals). Note that ilyasergey/vermilion#48 calls the abstract
`∀ p, Decidable p` instance "unprovable", but the committed percolator twin
discharges it with `Classical.propDecidable p`. The real issue there is
that the evidence is not instantiated at the concrete condition.

## Resolution

Commit `66e0615`.

Fixed through the evidence path. `DecidableEq` is not derived on rendered
datatypes; that would change every `Specs` module, and type parameters and
`Map` would still lack it.

- `Expr.constructivelyDecidable` now treats `=`/`≠` as constructive only
  when one operand's model type is statically known to have `DecidableEq`:
  `Int`, `StrSlice`, and `Seq`/`Set`/`Multiset` of such types.
- The type comes from a new conservative `Expr.inferTy`, over the binder
  types in scope (the obligation telescope, then quantifier, lambda and
  `choose` binders as they are entered) and the operand's shape (literals,
  arithmetic, `Seq.index` of a typed sequence, `Map.index` of a typed map,
  and so on).
- Equality at a user datatype, a `Map`, a type parameter, or an operand
  whose type is not evident now requests the module's `Decidable`
  evidence. Before, it produced a statement that could not elaborate.
- `needsDecidableEvidence` gained the missing `.choose` arm.
- Spec-fn bodies (`SpecFn.needsPropDecidable`) use the same typed walk.

No example or case-study twin changed. Every equality guard there is
recognized as `Int`-typed, so no new evidence modules appear.
`docs/vcgen.md` `(EVIDENCE-DECIDABLE-PROP)` is updated.
`tests/render_hygiene.lean` pins `Int` equality (constructive), and
datatype/`Map` equality (needs evidence).
