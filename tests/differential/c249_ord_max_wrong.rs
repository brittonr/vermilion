// expect: fail @ 5
use vstd::prelude::*;
verus! {
fn upper(a: u64, b: u64) -> (r: u64)
    ensures r == a,
{
    a.max(b)
}
}
