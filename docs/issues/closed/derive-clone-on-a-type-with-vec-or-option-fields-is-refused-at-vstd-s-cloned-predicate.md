---
title: derive(Clone) on a type with Vec or Option fields is refused at vstd's cloned predicate
labels: [enhancement, vcgen]
state: closed
github: 44
---

*Evidence level: reported from recording a `no_std` code base; reproduced
against both pipelines; fixed in the same session.*

```rust
#[derive(Clone)]
pub struct Point { pub xs: Vec<u64>, pub tag: Option<u64> }
```

Verus verifies the derived `clone` (it has no specification of its own,
only its body's obligations). The adapter refused it:

```
error[vermilion]: outside the supported fragment: in postcondition of `clone`: @span vstd/pervasive.rs:417:5:417:37
unsupported closure contract predicate: the closure type argument is not an anonymous closure datatype or a supported slice-range function item
  --> gap3_derive_clone.rs:8:10
```

The derive calls `clone` on each field. vstd specifies those through
`cloned(a, b)`, which is `call_ensures(T::clone, (&a,), b) || a == b`: a
contract predicate on the function ITEM `T::clone`. The adapter modeled
such predicates for anonymous closures only.

### What the predicate is

Verus leaves `call_ensures(f, args, ret)` uninterpreted for a function item
and gives it one axiom per item, in one direction:
`call_ensures(f, args, ret) ==> <ensures of f>`
(`vir::ast_simplify::add_fndef_axioms_to_function`). For a trait method
that is the declaration's ensures and those of the implementation the type
arguments select.

### Fix

- An occurrence lowers to `symbol(a, …, r) ∧ ensures[a, …, r]`. Under the
  axiom the predicate is equivalent to that conjunction, so the rewrite is
  valid in every position. The symbol is a fresh predicate among the
  enclosing function's universal binders, one per (item, Rust type
  arguments). The key is the Rust type, never its Lean model: `u8::clone`
  and `u16::clone` both relate `Int`s and are different predicates.
- `cloned` and `strictly_cloned` lower as their bodies at the type the
  application names; a definition generic in `T` cannot say "the clone of
  whichever type `T` is".
- The predicate inside any other spec function body, `call_requires` on a
  function item, and `hide`/`reveal` of `cloned` are refused.

Corpus c257–c259: nested derives over `Vec`, `Option` and enums; a claim
about a derived clone's result, which fails in both verifiers; a false
ensures on a hand-written `clone` built from field clones, which fails in
both.

### Not covered

Two things Verus proves and Vermilion does not yet are tracked separately:

- a postcondition stating `cloned(*x, r)` about `r = x.clone()` for an
  abstract `T`
  (`docs/issues/a-call-does-not-assume-call-ensures-of-its-callee-so-cloned-about-a-clone-s-result-is-unprovable.md`);
- `r == *self` for a struct rebuilt from cloned fields: the statement is
  generated and true, the machine attempt does not prove it
  (`docs/issues/no-ladder-rung-proves-a-struct-rebuilt-from-its-fields-equal-to-the-original.md`).
