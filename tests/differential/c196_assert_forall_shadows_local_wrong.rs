// expect: fail @ 8
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
spec fn g(x: int) -> int { x }
fn f() {
    let i: u32 = 7;
    assert forall|i: int| 0 <= i < 1 implies #[trigger] g(i) == 7 by {};
}
}
