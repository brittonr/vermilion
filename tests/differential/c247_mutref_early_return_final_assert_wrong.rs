// expect: fail @ 8
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn settle(x: &mut u64, c: bool)
{
    if c { *x = 1; return; }
    assert(*final(x) == 1); // this path ends with 2
    *x = 2;
}
}
