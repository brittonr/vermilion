// expect: lean-only pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn f() {
    let x: i64 = -1;
    assert(x as u8 == 255);
}
}
