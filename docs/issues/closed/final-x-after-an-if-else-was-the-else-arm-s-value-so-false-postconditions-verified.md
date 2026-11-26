---
title: "final(x) after an if/else was the else arm's value, so false postconditions verified"
labels: [bug, vcgen, foundations]
state: closed
github: 30
---

*Evidence level: executed against both pipelines (Vermilion 481e075, Verus
fork 4860083); fixed in the same session.*

Verus resolves a `&mut` borrow once per path. When the last write to a
`&mut` parameter sits inside an `if`/`else` or a `match`, each arm carries
its own `assume has_resolved(x)`. The lowering recorded the referent value
at each `has_resolved` in one function-wide map and read `final(x)` from
it, but that map was not part of the path state: `Lowering::branch` saved,
restored and joined the substitution environment around the arms and left
the snapshots alone. After the branch, the snapshot of the arm lowered last
— the `else` arm — stood for `final(x)` on both paths. The join symbol for
the current value was introduced and constrained, and no goal mentioned it.

For `x: &mut u64` and `c: bool`:

| Program | Emitted goal | Verus | Vermilion (before) |
|---|---|---|---|
| `if c { *x = 1; } else { }`, `ensures *final(x) == *old(x)` | `x = x` | rejects | **accepts** |
| `if c { *x = 1; } else { *x = 2; }`, `ensures *final(x) == 2` | `2 = 2` | rejects | **accepts** |
| `if c { } else { *x = 1; }`, `ensures *final(x) == 1` | `1 = 1` | rejects | **accepts** |
| `if c { incr(x); } else { }`, `ensures *final(x) == *old(x)` | `x = x` | rejects | **accepts** |
| a three-arm `match` writing 1, 2, 3, `ensures *final(x) == 3` | `3 = 3` | rejects | **accepts** |
| `if c { *x = 1; } else { *x = 2; } assert(*final(x) == 2);` | `2 = 2` | rejects | **accepts** |
| `if c { *x = 1; return; } assert(*final(x) == 1); *x = 2;` | `1 = 1` | rejects | **accepts** |
| `if c { *x = 1; } else { *x = 2; }`, `ensures c ==> *final(x) == 1` | `c → 2 = 1` | accepts | rejects |

The last row is the incompleteness half: a true postcondition about the
`then` arm's write was unprovable. The row above it is the same leak along
a different edge: the snapshot of an arm that returned stayed visible on
the fall-through path until that path resolved the borrow itself (also
when the returning `if` sits in a loop body and the assert follows the
loop).

An `if` without an `else` was not affected: Verus then emits the
fall-through resolution after the `if`, which re-snapshots at the joined
value. Straight-line code and loops were not affected either, and no
existing corpus case, example or case study has the affected shape.

Found in a downstream `&mut self` method (`PendingFrame::round`): an
unconditional field write, then a second field written in one arm of a
value-producing `if`/`else`; its true `reported ==> …` postcondition was
the one obligation automation could not close. In a reduction of that
shape, the `reported ==>` postcondition is the only one that fails; the
`!reported ==>` "unchanged" postcondition is stated about the `else` arm's
snapshot, where it holds with or without its guard, so the same claim
with the guard dropped — false whenever the frame reports — verifies.

### Fix

Resolution snapshots are path state, scoped like the environment they were
read from. They moved out of `mut_futures`, which keeps the call-created
prophecy symbols, into `SpecRegistry::resolution_snapshots`:

- `Lowering::branch` gives each arm its own copy and joins them. A borrow
  both arms resolved is resolved after the join; where the arms' snapshots
  differ, its future is the joined current value. No write follows a
  resolution (the assumption `docs/trust.md` already lists), so each arm's
  snapshot is that arm's final referent value — what the environment join
  merges. A borrow only one arm resolved is unresolved after the join.
- Loop bodies (`while`, range `for`), dead-end scopes, closure bodies and
  assertion queries restore the snapshots they started with, as they do
  the environment.
- `call_futures`, the side set that told the two kinds of `mut_futures`
  entry apart and was never reset between functions, is gone.

`final(x)` mentioned after an arm that returned, before the fall-through
path resolves the borrow, is now what any mention before resolution
already was: an unconstrained prophecy symbol. Such an assert is rejected
at its span, as in Verus.

Corpus c244 (ok: the `round` shape, an `if`/`else if` chain and an early
return; three of its obligations fail before the fix), c245 (a
postcondition that holds of the `else` arm only), c246 (`final(x)`
asserted after a join) and c247 (`final(x)` asserted after an arm that
returned). `docs/trust.md`, `docs/ir.md` and `DESIGN.md` describe the path
scoping.

The emitted IR is byte-identical before and after for every existing
corpus case and example, the single-file case studies and probes, the
aeneas SHA-3 sources and dalek-lite's 416 lowered functions, so no
statement hash and no proof twin changes. Checked: corpus 263/263 (138/138
spans), 0 false acceptances; the mutation oracle finds 0 vacuous
obligations over 366 mutants and the vacuity allowlist is unchanged; the
smoke suite passes (all 37 examples, emission determinism, pipeline
contracts).

### Not addressed

Mentioning `final(x)` *before* the borrow resolves still allocates a
prophecy symbol that the later `has_resolved` never equates with the
referent: after `assert(*final(x) == *final(x)); *x = 2;` the
postcondition `*final(x) == 2` is emitted as `x_post = 2` for an
unconstrained `x_post`, while Verus proves the function. That gap predates
this issue; it is incompleteness, not a false acceptance.
