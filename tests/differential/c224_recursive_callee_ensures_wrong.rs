// expect: fail @ 21
// c223 with the caller claiming the reverse order: the callee's fact must
// not be stretched into it.
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
proof fn use_fact_wrong(j: int, k: int)
    requires
        tri(j) <= tri(k),
        j < k,
    ensures
        tri(k) <= tri(j),
{
    tri_fact(j, k);
}
}
