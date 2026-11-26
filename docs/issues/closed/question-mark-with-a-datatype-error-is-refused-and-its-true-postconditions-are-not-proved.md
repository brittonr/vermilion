---
title: `?` with a datatype error is refused, and its true postconditions are not proved
labels: [bug, vcgen]
state: closed
github: 48
---

*Evidence level: reported from recording a `no_std` code base (23 refused
functions); reproduced against both pipelines; fixed in the same session.*

```rust
pub enum Fault { Empty }

pub fn pick(input: Option<u64>) -> (r: Result<u64, Fault>)
    ensures r is Ok ==> input is Some,
{
    let v = input.ok_or(Fault::Empty)?;
    Ok(v)
}
```

Verus verifies this. The adapter refused the function:

```
error[vermilion]: outside the supported fragment: unsupported SST resolution marker outside an assume
  --> gap2o.rs:11:13
```

Three separate things stood between `?` and a verdict.

1. **The marker.** Verus resolves every value it drops or moves. For the
   residual of `?` it guards the payload by the variant test:
   `assume(tmp is Break ==> has_resolved(tmp->Break_0))`. The adapter
   accepted `has_resolved` only as a whole assumed expression. A `Copy`
   payload (`u64`, `()`) gets no marker, which is why those lowered. The
   same marker for an owned operand sits in a `while` condition's setup
   (`while i < items.len()` with `items: Vec<u64>`) and was refused there
   as "the while condition's setup prefix is not a pure computation".
2. **The binding.** With the marker present, Verus places the `Continue`
   payload's binding in the `else` arm of the desugared `if` and reads it
   after the join. A variable assigned in one arm only was dropped at the
   join, so the generator stopped with `variable 'val' is not bound by the
   obligation telescope`.
3. **The proof.** On the early return the result is `from_residual`'s,
   which vstd specifies as an `Err`. The obligation `r is Ok ==> …` is then
   vacuous, but showing it needs a case split on the opaque result after
   the conditionals are split; no rung did that, so the function lowered
   (with a `Copy` payload) and its true postcondition was rejected. And
   nothing said WHICH error comes back: vstd states the conversion as the
   uninterpreted `spec_from`, whose one axiom,
   `spec_from::<T, T>(t, s) ==> t == s`, is in the always-on default
   broadcast group and was not modeled.

### Fix

- A `has_resolved` marker on a value that is not a reference is dropped,
  also under a variant guard and in a loop condition's setup. Only a
  `&mut` carries a prophecy; leaving an assumption out is always sound. A
  guarded marker on a `&mut` stays refused.
- A binding made in one arm only is visible after the branch exactly when
  the other arm cannot reach the join.
- The `split_ifs_hyps` rung finishes each branch with `omega` or `grind`
  instead of `omega` alone.
- `spec_from::<S, T>(value, ret)` at `S = T`, compared as Rust types,
  lowers to its conjunction with `value == ret`: equivalent under vstd's
  axiom, wherever it occurs.

Corpus c252–c256: datatype and integer error payloads with postconditions
on both exits, a false claim about `final(x)` on the early return, a wrong
error value, and the owned loop operand. The two negatives fail in both
verifiers. Percolator's `withdrawal_question_mark` lost its one
interactive proof: the machine attempt now closes that obligation.

`docs/ir.md`, `docs/trust.md` and `docs/vcgen.md` describe the changes.
