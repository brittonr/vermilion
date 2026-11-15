// expect: fail @ 13
// c215's definition with a false fact: the termination lemma must not let a
// wrong value of the recursive spec fn through.
use vstd::prelude::*;
verus! {
spec fn sum(s: Seq<int>) -> int
    decreases s.len(),
{
    if s.len() == 0 { 0 } else { sum(s.drop_last()) + s.last() }
}
proof fn sum_empty_wrong() {
    let s = Seq::<int>::empty();
    assert(sum(s) == 1);
}
}
