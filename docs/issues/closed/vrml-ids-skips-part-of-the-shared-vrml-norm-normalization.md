---
title: "`vrml [ids]` skips part of the shared `vrml_norm` normalization"
labels: [enhancement, vcgen]
state: closed
github: 8
---

*Evidence level: static reading of `lean/Vermilion/Obligations.lean`. The
proof-rate impact has not been measured.*

The two entry points of the discharger normalize differently:

| | simp-only set before the ladder |
|---|---|
| `vrml` → `vrml_norm` | `inUnsignedRange`, `inSignedRange`, **`natClip`, `sclip`**, `iteP`, **`Int.reducePow`, `Nat.reducePow`** |
| `vrml [ids]` | `inUnsignedRange`, `inSignedRange`, `iteP`, `ids…` |

`generateObligations` seeds visibility from *every* visible spec fn in the
document, so in any file that defines a spec fn the bracket form is used for
essentially every obligation. Across the committed twins, 5518 blocks end in
`vrml [...]` and only 324 in bare `vrml`. The bracket form is therefore the
*common* path, not the exception. Those obligations so it climb the ladder with `natClip`/`sclip` folded
and `2 ^ 64`-style literals unreduced. `natClip_eq`/`sclip_eq` are
`@[simp, grind =]`, so some rungs recover. `omega` does not see through
`natClip`, and the first rungs (`grind`, `omega`) then run on a
different goal shape depending only on whether the file defines a spec
fn. The two lists are maintained by hand in two macros and have
already drifted.

### Fix

Define `vrml [ids]` as `vrml_norm` extended with `ids`. For example,
`vrml_norm` could take an optional simp-arg list, so there is a single
source of truth. Then re-run the differential corpus and the dalek-lite
scoreboard to record any rung-distribution change. Expect equal or better
proof rates, and possibly faster closes because fewer rungs are needed.

## Resolution

Commit `66e0615`.

Fixed.

- `vrml_norm` gained a bracket form, `vrml_norm [ids]`. `vrml [ids]` is
  now `vrml_norm [ids]; all_goals vrml_ladder`, so both entry points share
  one normalization list. `natClip`, `sclip` and the `reducePow` simprocs
  now apply to the 94% of obligations that use the bracket form.
- The smoke suite (all 37 examples) and the case studies run here stay
  green.
- The obligations that failed in dalek-lite's `add_lemmas` fail
  identically with the old macro and the old library; that is checked
  against a worktree at the previous `main`. So it is pre-existing, not
  caused by this change.
