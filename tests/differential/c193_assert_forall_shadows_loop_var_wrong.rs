// expect: fail @ 9
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
spec fn g(x: int) -> int { x }
fn f() {
    let mut i: u32 = 2;
    while i < 3 invariant 2 <= i <= 3 decreases 3 - i {
        assert forall|i: int| 0 <= i < 1 implies #[trigger] g(i) == 5 by {};
        i = i + 1;
    }
}
}
