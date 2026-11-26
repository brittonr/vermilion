---
title: A call does not assume call_ensures of its callee, so cloned(x, r) about a clone's result is unprovable
labels: [enhancement, vcgen]
state: open
github: 41
---

*Evidence level: executed against both pipelines (Verus fork 4860083).
Incompleteness only: the obligation is rejected, nothing false is proved.*

```rust
pub fn dup<T: Clone>(x: &T) -> (r: T)
    ensures cloned(*x, r),
{
    x.clone()
}
```

Verus verifies this. Vermilion lowers it and rejects the postcondition:

```
error[vermilion]: postcondition not satisfied
  --> gap3g.rs:6:13
   = note: Lean rejected obligation `gap3g.dup.ensures_1`
```

```lean
theorem ensures_1
    (T : Type) [Inhabited T]
    (x : T)
    (clone_call_ensures_0 : (T → T → Prop))
    (tmp_ : T) :
    clone_call_ensures_0 x tmp_ ∨ (x = tmp_)
```

Nothing connects `tmp_`, the result of `x.clone()`, to the predicate: the
trait declares no ensures for `clone`, so the call contributes no
hypothesis.

### What Verus does

After a call to `f`, Verus assumes the generic condition
`call_ensures(f, (args…), ret)` for the call's own arguments and result
(`vir::sst_to_air`, `StmX::Call`: `emit_generic_conditions`, assumed
through `sst_util::sst_call_ensures`). It does so only when `f`'s `FnDef`
type survives pruning, that is, when something in reach speaks of
`call_ensures(f, …)`. Here `cloned(*x, r)` does.

### What it needs here

A function-item predicate is lowered as `symbol(a, …, r) ∧ ensures[a, …,
r]` (`docs/trust.md`, "Function-item contract predicates"). The missing
fact is `symbol(args, ret)` after the call; the ensures conjunct is
already assumed as the call's contract.

The symbol is created at the first occurrence of the predicate in the
enclosing function. That can come after the call, as above, where it is in
the postcondition. Assuming the fact at every call to every function would
add a binder and a hypothesis to obligations that never mention the
predicate and would change their statement hashes, so the lowering has to
know, before it reaches a call, whether the enclosing function mentions
the predicate for that item at those type arguments. An occurrence can be
direct, inside `cloned`/`strictly_cloned`, or in a callee contract assumed
at another call (`Option<T>::clone` ensures `cloned::<T>(…)`).

Guard when done: the program above as a positive corpus case, and a
negative one claiming `cloned(*x, r)` for an `r` that no call produced.
