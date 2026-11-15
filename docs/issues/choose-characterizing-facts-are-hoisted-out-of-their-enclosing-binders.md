---
title: choose characterizing facts are hoisted out of their enclosing binders
labels: [bug, vcgen]
state: open
github: 2
---

*Evidence level: static reading of `Vcgen.lean` and `Hygiene.lean`, plus a
core-Lean check of the auto-bound behaviour. No pipeline run.*

`Expr.collectChoose` (`lean/Vermilion/Ir/Vcgen.lean`) descends through
`.quant` and `.lambda` bodies. It returns each `(binder, predicate)` pair
**without** the variables those enclosing binders bind. `withChooseFacts`
then prepends one top-level hypothesis per pair:

```
choose_spec_i : (∃ x, p x) → (fun x => p x) (Vermilion.chooseSpec p)
```

When `p` mentions a variable bound by an enclosing quantifier or lambda,
that variable is **free** in the hoisted hypothesis. For example,
`forall|i: int| 0 <= i < n ==> f(i) == choose|x: int| x > i`, which the
adapter does not refuse: it only refuses multi-binder choose, non-variable
bodies, and non-scalar types.

What happens next:

- `Obligation.hygieneViolations` only reports *capture*. A free name that no
  telescope entry binds is not flagged, so `vrml_gen` does not fail closed.
- The generated modules leave `autoImplicit` on. Lean therefore elaborates
  the dangling `i` as an implicit binder with an *inferred* type, for the
  whole theorem. Core Lean 4.33 check:
  `theorem t (x : Int) (h : y = y) : x = x` has type
  `∀ {α : Sort u_1} {y : α} (x : Int), y = y → x = x`.
- The result is a hypothesis about some arbitrary `i`, not about the goal's
  bound `i`. It is useless to every rung. If a telescope binder happens to
  share the name, the hypothesis silently talks about *that* variable
  instead.

This is not unsound, because every instance of `chooseSpec_spec` is a
theorem. But a `choose` under a quantifier gets **no** usable
characterizing fact, and nothing reports why.

### Fix options

1. Close the hoisted fact over the enclosing binders:
   `∀ i, (∃ x, p x i) → p (chooseSpec (p · i)) i`. This is still an
   instance of `chooseSpec_spec`, so the trusted base is unchanged.
   `collectChoose` would carry the binder stack it passed through.
2. Or, until (1) lands, refuse choose-under-binder in `lower.rs`.

Either way, update `docs/vcgen.md`'s `(CHOOSE)` rule, which currently says
"every distinct (binder, predicate) pair occurring in" the obligation.
Add a differential case with a choose under `forall`.

Related: hardening for unbound names in generated modules
(#6) and
`docs/issues/closed/support-choose-in-spec-expressions.md`.
