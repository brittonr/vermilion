// expect: fail @ 10
use vstd::prelude::*;
verus! {
pub open spec fn evens(s: Seq<u64>) -> Seq<u64> {
    s.filter(|x: u64| x % 2 == 0)
}
// True, but it needs the definition, which is opaque without `reveal`.
proof fn push_even(s: Seq<u64>)
    ensures
        evens(s.push(4)) == evens(s).push(4),
{
}
}
