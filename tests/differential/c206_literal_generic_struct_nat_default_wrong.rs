// expect: fail @ 7
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
struct W<T> { v: T }
fn f() {
    assert(W { v: (-1i64) as u8 } == W { v: 0u8 });
}
}
