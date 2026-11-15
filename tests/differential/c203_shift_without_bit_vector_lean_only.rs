// expect: lean-only pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn f() {
    let x: u64 = 8;
    assert(x >> 1u32 == 4);
}
}
