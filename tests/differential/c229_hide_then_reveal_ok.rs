// expect: pass
use vstd::prelude::*;
verus! {
spec fn f(x: int) -> int { x + 1 }
proof fn g() {
    hide(f);
    assert(f(1) == 2) by { reveal(f); }
}
proof fn h() { assert(f(1) == 2); }
}
