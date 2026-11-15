// expect: fail @ 7
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
proof fn f() {
    assert((-1int) % 2 == 1) by (compute);
    assert(1int == 2);
}
}
