// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
spec fn id<T>(x: T) -> T { x }
struct G<T> { v: T }
proof fn f() {
    assert(id(0int) - 1 == -1);
    assert((5int, 3int).0 - 6 == -1);
    assert(G { v: 0int }.v - 1 == -1);
}
}
