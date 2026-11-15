// expect: fail @ 6
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn f() {
    assert((-1i64) as u8 == 0);
}
}
