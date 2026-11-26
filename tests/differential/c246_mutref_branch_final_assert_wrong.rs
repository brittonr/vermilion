// expect: fail @ 8
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn pick(x: &mut u64, c: bool)
{
    if c { *x = 1; } else { *x = 2; }
    assert(*final(x) == 2); // false when c
}
}
