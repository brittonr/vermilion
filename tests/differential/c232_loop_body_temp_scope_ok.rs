// expect: pass
// A call temporary declared inside one loop's body (`v[i]`, which lowers to
// a `vec_index` call with a result binder) must stay scoped to that body: a
// later loop's iteration context may not assume its range fact, or the
// emitted theorem mentions a binder it does not bind (HYGIENE).
use vstd::prelude::*;
verus! {
fn all_small_then_count(v: &Vec<u64>) -> (n: usize)
    ensures n <= v.len(),
{
    let mut i: usize = 0;
    while i < v.len()
        invariant 0 <= i <= v.len(),
        decreases v.len() - i,
    {
        if v[i] > 10 {
            return 0;
        }
        i = i + 1;
    }
    let mut n: usize = 0;
    let mut j: usize = 0;
    while j < v.len()
        invariant 0 <= j <= v.len(), n <= j,
        decreases v.len() - j,
    {
        n = n + 1;
        j = j + 1;
    }
    n
}
}
