// expect: fail @ 7
// c236 with a false postcondition: the length is n, not n + 1.
use vstd::prelude::*;
verus! {
fn build_then_set_wrong(n: usize) -> (v: Vec<u64>)
    requires n < 100,
    ensures v@.len() == n + 1,
{
    let mut v: Vec<u64> = Vec::new();
    let mut k: usize = 0;
    while k < n
        invariant 0 <= k <= n, v@.len() == k,
        decreases n - k,
    {
        v.push(0);
        k += 1;
    }
    let mut i: usize = 0;
    while i < n
        invariant 0 <= i <= n, v@.len() == n,
        decreases n - i,
    {
        v.set(i, 1);
        i += 1;
    }
    v
}
}
