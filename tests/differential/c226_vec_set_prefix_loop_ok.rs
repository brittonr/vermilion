// expect: pass
use vstd::prelude::*;
verus! {
fn zero_all(v: &mut Vec<u32>)
    ensures final(v).len() == old(v).len(), forall|j: int| 0 <= j < final(v).len() ==> final(v)[j] == 0,
{
    let mut i: usize = 0;
    while i < v.len()
        invariant v.len() == old(v).len(), i <= v.len(), forall|j: int| 0 <= j < i ==> v[j] == 0,
        decreases v.len() - i,
    {
        v.set(i, 0);
        i = i + 1;
    }
}
}
