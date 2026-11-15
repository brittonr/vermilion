---
title: "Literal-only integer terms elaborate over Nat, so 0 - 1 = 0 (false acceptance)"
labels: [bug, vcgen, foundations]
state: open
github: 22
---

*Evidence level: executed against both pipelines; fixed in the same
session.*

A literal-only integer term has no typed leaf, so Lean elaborates its
numerals at the default `Nat`, where `0 - 1 = 0`. Every IR integer is
meant to be an `Int`, so the emitted theorem was weaker than the
obligation, and Vermilion accepted programs Verus rejects:

| Program | Rendered obligation | Verus | Vermilion |
|---|---|---|---|
| `assert((-1i64) as u8 == 0)` | `((0 - 1) % 256) = 0` | fails | **passed** |
| `assert(((-1i64) as u8, 5u8) == (0u8, 5u8))` | `tuple_2 ((0 - 1) % 256) 5 = tuple_2 0 5` | fails | **passed** |
| `assert(W { v: (-1i64) as u8 } == W { v: 0u8 })` (generic `W<T>`) | `W.W ((0 - 1) % 256) = W.W 0` | fails | **passed** |
| `assert(id((-1i64) as u8) == id(0u8))` (generic spec fn) | `id ((0 - 1) % 256) = id 0` | fails | **passed** |
| `assert(pick(true, 0int - 1, 5int) == 0int)` (generic spec fn) | `pick True (0 - 1) 5 = 0` | fails | **passed** |

The first row was found by the new `lean-only pass` control case (c204);
the others are generalizations of it.

### Fix

`Expr.renderD` ascribes `: Int` to every maximal literal-only subterm that
contains a subtraction (`Expr.closedNumeric` and `Expr.natHazard` in
`lean/Vermilion/Ir/Print.lean`), wherever it occurs. Literal-only terms
without a subtraction cannot differ between `Nat` and `Int` (negative
literals already default to `Int` through `Neg`), so they stay unannotated
and their statement hashes are unchanged.

Corpus cases c204-c208 (wrong) and c209 (ok) pin the fix;
`tests/render_hygiene.lean` has `#guard`s for the rendering.
