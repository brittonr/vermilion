---
title: hide(f) was ignored, so a hidden spec fn still unfolded
labels: [bug, vcgen]
state: closed
github: 28
---

*Evidence level: executed against both pipelines; fixed in the same
session.*

`hide(f)` is not a statement in Verus's SST: `rust_verify` turns it into the
function attribute `attrs.hidden`, applied to the whole body. The lowering
only handled `reveal`/`reveal_with_fuel` statements (`StmX::Fuel`) and
ignored `attrs.hidden`, so a hidden spec fn stayed visible to the machine
attempt:

```rust
spec fn f(x: int) -> int { x + 1 }
proof fn g() { hide(f); assert(f(1) == 2); }   // Verus rejects; Vermilion accepted
```

The claim is true, so this is not unsound in the logical sense, but the
user directive in `.claude/memory/spec-fns-no-inlining-no-fuel.md` requires
machine attempts to reproduce Verus's visibility verdicts (`hide`
suppresses the equations), and the differential gate counts it as a false
acceptance.

### Fix

`function_view` now emits `reveal f 0` (hidden) for each spec fn in
`attrs.hidden` before the body, so `hide` behaves like a hide at the top of
the body and later `reveal`s re-open it as usual. Corpus c228 (wrong) and
c229 (hide then scoped reveal, ok). No example, case study or dalek-lite
source uses `hide`.
