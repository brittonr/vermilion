// expect: fail @ 7
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
spec fn g(x: int) -> int { x }
fn f(i: u32) requires 2 <= i <= 3 {
    assert forall|i: int| 0 <= i < 1 implies #[trigger] g(i) == 5 by {};
}
}
