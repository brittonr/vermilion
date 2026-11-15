// expect: pass
// Goals that are verbatim a fact already in context, about a recursive
// spec fn (forecast-kernel's lemma_cumulative_monotone shape): a requires
// restated as an ensures, and a callee's ensures restated by its caller.
// Unfolding `tri` in the goal alone used to separate it from that fact.
use vstd::prelude::*;
verus! {
spec fn tri(n: int) -> int
    decreases n,
{
    if n <= 0 { 0 } else { tri(n - 1) + n }
}
proof fn tri_fact(j: int, k: int)
    requires tri(j) <= tri(k),
    ensures tri(j) <= tri(k),
{
}
proof fn use_fact(j: int, k: int)
    requires tri(j) <= tri(k),
    ensures tri(j) <= tri(k),
{
    tri_fact(j, k);
}
}
