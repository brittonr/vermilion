// expect: pass
// A loop after a loop whose body pushes: the first body's `push` result is
// local to it, so the second loop's iteration facts must not mention it
// (forecast-kernel's group_totals; vrml_gen failed its hygiene check).
use vstd::prelude::*;
verus! {
fn build_then_set(n: usize) -> (v: Vec<u64>)
    ensures v@.len() == n,
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
