---
title: Literal-only integer terms elaborate over Nat, so 0 - 1 = 0 (false acceptance)
labels: [bug, vcgen, foundations]
state: closed
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

### Resolution (2f84116, 9f3e9b7)

Fixed as described above. Verified: corpus 217/217, 111/111 spans, 0
false acceptances; all 37 examples pass. In dalek-lite only one
re-rendered subterm changes value between `Nat` and `Int`, and it was a
live vacuous acceptance: `lemma_p_is_odd.assert_5` had the hypothesis
`((0 - 1) % 2) = 1` (the `by (compute)` fact `(-1int) % 2 == 1`), which
over `Nat` reads `0 = 1`. Over `Int` the function's 8 obligations all
pass for real.

### Follow-up: generic applications and fields (reopened and fixed again)

The first fix only anchored literal-only subterms. A subtraction whose
operand is a generic application or field *of literals* is still elaborated
over `Nat`. Three more false acceptances (Verus rejects all three):

| Program | Before |
|---|---|
| `assert(id(0int) - 1 == 0)` (generic `id`) | accepted |
| `assert((5int, 3int).0 - 6 == 0)` | accepted |
| `assert(G { v: 0int }.v - 1 == 0)` (generic `G<T>`) | accepted |

Fix: the left operand of every subtraction neither of whose operands is
certainly `Int` (`Expr.surelyInt`) is ascribed `: Int`. Corpus c210-c214
(c210 is the dalek-lite shape: a `by (compute)` fact with a negative
constant, followed by a false assertion).

That rule anchors many statements whose elaboration it does not change
(`pow2 e - 1` with a monomorphic `pow2`), so it would have changed their
statement hashes and orphaned user proofs (power-of-2's
`lemma_pow2_make_div` lost its proof on the first try). Statement hashes
are now computed over the anchor-free rendering (`renderTopPlain`), so
anchor placement is not part of a statement's identity: `vrml_sync`
restores the anchored statement in the twin and keeps the proof body,
which is re-checked against it. This also reverts the hash churn of the
first fix. The dalek-lite twins are back at their pre-#22 hashes with
anchored statements, and the 30 `sorry` placeholders from the first
re-sync are gone again (see #24 for why those blocks hold failing
attempts).

Checked: corpus 222/222 (115/115 spans) in both emission modes, 0 false acceptances; all
37 examples and 11 non-aeneas, non-dalek case-study runners pass with no
proof lost; vacuity gates pass.
