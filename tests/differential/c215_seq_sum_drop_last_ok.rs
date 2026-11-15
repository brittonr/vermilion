// expect: pass
// A spec fn recursing through drop_last under `decreases s.len()` (the
// forecast-kernel `seq_sum` shape): its Lean definition's termination goal
// is `s.dropLast.len < s.len` under `¬ s.len = 0`.
use vstd::prelude::*;
verus! {
spec fn sum(s: Seq<int>) -> int
    decreases s.len(),
{
    if s.len() == 0 { 0 } else { sum(s.drop_last()) + s.last() }
}
proof fn sum_empty() {
    assert(sum(Seq::<int>::empty()) == 0);
}
}
