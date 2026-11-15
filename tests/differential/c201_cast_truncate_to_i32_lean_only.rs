// expect: lean-only pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn f() {
    let x: u64 = 0xffff_ffff;
    assert(x as i32 == -1);
}
}
