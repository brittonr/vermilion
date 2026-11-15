// expect: fail @ 7
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
spec fn id<T>(x: T) -> T { x }
proof fn f() {
    assert(id(0int) - 1 == 0);
}
}
