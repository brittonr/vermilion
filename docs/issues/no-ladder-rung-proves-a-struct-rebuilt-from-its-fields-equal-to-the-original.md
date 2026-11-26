---
title: No ladder rung proves a struct rebuilt from its fields equal to the original
labels: [enhancement, vcgen]
state: open
github: 46
---

*Evidence level: executed against both pipelines (Verus fork 4860083); the
obligation was then proved by hand in Lean. Incompleteness only: the
obligation is rejected, nothing false is proved.*

```rust
pub struct Pair { pub a: u64, pub b: Option<u64> }

impl Clone for Pair {
    fn clone(&self) -> (r: Self)
        ensures r == *self,
    {
        Pair { a: self.a.clone(), b: self.b.clone() }
    }
}
```

Verus verifies this. Vermilion lowers it and the machine attempt fails:

```
error[vermilion]: postcondition not satisfied
  --> gap3c.rs:9:17
   = note: Lean rejected obligation `gap3c.impl__0.clone.ensures_2`
        Lean says: vrml: no ladder rung closed the goal (tried [grind, …
```

The statement is true and its hypotheses are enough (range facts left
out):

```lean
theorem ensures_2
    (self : gap3c.Pair)
    (clone_call_ensures_0 : (Int → Int → Prop))
    (tmp_ : (core.option.Option Int))
    (call_clone_ensures_1 : is_None (get_Pair_b self) → is_None tmp_)
    (call_clone_ensures_2 : is_Some (get_Pair_b self) →
      (is_Some tmp_ ∧
        ((clone_call_ensures_0 (get_Some__0 (get_Pair_b self)) (get_Some__0 tmp_)
            ∧ (get_Some__0 tmp_ = get_Some__0 (get_Pair_b self)))
          ∨ (get_Some__0 (get_Pair_b self) = get_Some__0 tmp_)))) :
    gap3c.Pair.Pair (gap3c.Pair.get_Pair_a self) tmp_ = self
```

This closes it:

```lean
cases self with
| Pair a b =>
  cases b <;> cases tmp_ <;> simp_all <;> grind
```

Without the split on `self` the same script fails: the goal equates a
constructor application with a variable, and the accessors in the
hypotheses stay stuck on it. No rung splits a datatype-valued variable.

A rung for this shape would split the variables of generated inductive
types that occur in the goal's equation or under an accessor, to a bounded
depth, and then run the existing closers. The twin proof above is the
supported route until then.

Found with a hand-written `Clone`; any function that returns a datatype
rebuilt field by field has the same goal.
