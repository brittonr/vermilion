// expect: fail @ 7
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
spec fn id<T>(x: T) -> T { x }
fn f() {
    assert(id((-1i64) as u8) == id(0u8));
}
}
