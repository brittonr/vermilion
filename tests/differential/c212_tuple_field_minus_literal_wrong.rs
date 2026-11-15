// expect: fail @ 6
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
proof fn f() {
    assert((5int, 3int).0 - 6 == 0);
}
}
