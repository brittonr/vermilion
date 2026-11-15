// expect: fail @ 8
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
spec fn g(x: int) -> int { x }
proof fn f() {
    assert forall|i: int| 2 <= i < 3 implies #[trigger] g(i) == 2 by {};
    assert forall|i: int| 0 <= i < 1 implies #[trigger] g(i) == 2 by {};
}
}
