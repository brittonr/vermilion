---
title: "Wrong-variant field reads returned default, so None.unwrap() was provably 0"
labels: [bug, vcgen, foundations]
state: closed
github: 27
---

*Evidence level: executed against both pipelines; fixed in the same
session.*

A datatype field read through the wrong variant (`None::<int>.unwrap()`,
`s->Rect_0` for a `Circle`) is unspecified in Verus. Vermilion's generated
accessors returned `default`, so the `vrml` automation proved facts about
it that Verus cannot:

| Program | Verus | Vermilion (before) |
|---|---|---|
| `let x: Option<int> = None; assert(x.unwrap() == 0);` | rejects | **accepts** |
| `requires s is Circle; assert(s->Rect_0 == 0);` | rejects | **accepts** |

Nothing executable is affected (exec `unwrap` requires `is_some`), but it
is a verdict divergence in the accepting direction, and `docs/trust.md`
already claimed (since #19) that automation did not reach these values.

### Fix

`Vermilion.unspecified (tag : String) : α` is a new `opaque` value, one per
accessor (tagged with its name). Wrong-variant reads return it. Nothing can
be proved about it except reflexivity. Unguarded datatype field range
facts stay sound: they all hold of `default`, so assuming them about the
opaque constant is consistent, which is also Verus's reading (its type
invariants hold for every value of the field type).

Corpus c223, c224 (wrong) and c225 (ok). `trust.md` and `ir.md` updated.
Corpus 235/235 in both emission modes, 0 false acceptances; all examples
and case studies pass. dalek-lite has no multi-variant datatypes and is
unaffected.
