// expect: fail @ 7
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
struct G<T> { v: T }
proof fn f() {
    assert(G { v: 0int }.v - 1 == 0);
}
}
