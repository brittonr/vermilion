// expect: fail @ 9
use vstd::prelude::*;
verus! {
fn zero_all(v: &mut Vec<u32>)
{
    let mut i: usize = 0;
    while i < v.len()
        invariant i <= v.len(),
            forall|j: int| 0 <= j <= i && j < v.len() ==> v[j] == 0,
        decreases v.len() - i,
    {
        v.set(i, 0);
        i = i + 1;
    }
}
}
