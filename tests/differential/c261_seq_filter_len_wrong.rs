// expect: fail @ 8
use vstd::prelude::*;
verus! {
pub open spec fn evens(s: Seq<u64>) -> Seq<u64> {
    s.filter(|x: u64| x % 2 == 0)
}
proof fn keeps_everything(s: Seq<u64>)
    ensures evens(s).len() == s.len(),
{
}
}
