// expect: fail @ 7
use vstd::prelude::*;
verus! {
spec fn f(x: int) -> int { x + 1 }
proof fn g() {
    hide(f);
    assert(f(1) == 2);
}
}
