---
title: Comparison operators on Option are refused: default-body ensures and generic spec impls
labels: [enhancement, vcgen]
state: closed
github: 43
---

*Evidence level: reported from recording a `no_std` code base; reproduced
against both pipelines; fixed in the same session. The integer `max`/`min`
half is
`docs/issues/closed/support-std-ord-min-max-default-body-contracts.md`.*

```rust
pub fn ahead(candidate: Option<u64>, current: Option<u64>) -> (r: bool)
    ensures r == match (candidate, current) {
        (None, _) => false,
        (Some(_), None) => true,
        (Some(c), Some(k)) => c > k,
    },
{
    candidate > current
}
```

Verus verifies this. The adapter refused it, as it refused `>=`, `<`, `<=`
and `!=` on the same types:

```
error[vermilion]: outside the supported fragment: unsupported default-body ensures on call to `gt`
```

### Two causes

1. `PartialOrd::gt` is a method the trait PROVIDES. vstd specifies it on
   the trait with ordinary ensures (`obeys_partial_cmp_spec() ==> (r <==>
   self.partial_cmp_spec(other) == Some(Greater))`) and adds the provided
   body's own fact as `default_ensures`, which Verus keeps apart
   (`enss.1`). The adapter refused any contract that had them. The useful
   half is the ordinary ensures; the default ones are stated through
   `call_ensures(Self::partial_cmp, …)`, a function-item predicate (see
   the derived-`Clone` issue).
2. With the call lowered, `obeys_partial_cmp_spec`/`partial_cmp_spec` at
   `Self = Option<u64>` had no definition. Their implementation is
   `impl<T: PartialOrd> PartialOrdSpecImpl for Option<T>`, generic in `T`:
   the resolver matched implementations by type equality only, so the two
   became unconstrained symbols and the postcondition was unprovable. And
   that implementation compares payloads with `T`'s own
   `partial_cmp_spec`, so it has no single Lean definition generic in `T`
   either.

### Fix

- `default_ensures` are assumed exactly when the call runs the provided
  body (the SST call's `is_trait_default`, which is what selects them in
  Verus's encoding), and ignored otherwise instead of refusing the call.
- A trait spec function at a concrete `Self` resolves through an
  implementation generic in its own parameters by first-order matching,
  accepted when exactly one implementation matches.
- A spec function whose body dispatches on one of its type parameters is
  emitted once per concrete instantiation, as `<name>_at_<types>`:
  `partial_cmp_spec_at_u64 (self other : Option Int)`. The application
  stays an application of a named definition.

Corpus c250/c251: all five operators on `Option<u64>`, and a false claim
that fails in both verifiers.
