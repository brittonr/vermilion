---
title: A generic datatype first mentioned in a callee contract is declared with that call's type arguments
labels: [bug, vcgen]
state: closed
github: 42
---

*Evidence level: reproduced; fixed in the same session.*

```rust
pub fn step(c: &mut Counter, input: Option<u64>) -> (r: Result<u64, u64>)
    ensures
        r is Ok ==> final(c).n == input->Some_0,
        r is Err ==> final(c).n == old(c).n,
{
    let v = input.ok_or(7u64)?;
    c.n = v;
    Ok(v)
}
```

Verus verifies this. Vermilion rejected two of its obligations with an
elaboration error, not a failed proof:

```
Lean rejected obligation `gap2n.step.ensures_4_0`
     Lean says: don't know how to synthesize implicit argument `T`
```

The generated `Specs.lean` declared

```lean
inductive core.result.Result (T : Type) (E : Type) where
  | Ok (_0 : Int)
  | Err (_0 : Int)
```

`Option::ok_or<T, E>` is the first contract here to mention `Result<T, E>`,
and it is lowered under the substitution `T := u64, E := u64`. The
datatype's own parameters carry the same names, and `register_datatype`
lowered the field types under the caller's substitution: the declaration
came out specialized to the first instantiation. Every later use at other
type arguments (`Result<Infallible, u64>` in the same function) then either
failed to elaborate, as here, or elaborated against field types that were
not its own.

The same specialized declaration was in a tracked twin:
`case-studies/percolator/proofs/bounded_arithmetic/Specs.lean` had
`Ok (_0 : Int) | Err (_0 : bounded_arithmetic.V16Error)`.

### Fix

Datatype registration is declaration-scoped, as spec-function
registration already was
(`docs/issues/closed/lower-generic-spec-functions-used-by-question-mark.md`):
field types are lowered with no active substitution. A failed registration
also no longer leaves its in-flight entry behind.

Corpus c255. The percolator twin is regenerated with the generic
declaration.
