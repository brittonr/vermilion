// expect: pass
use vstd::prelude::*;
verus! {
// The owned `items` is resolved at the loop head, inside the condition's
// setup: a marker for a value that is not a reference.
fn append(log: &mut Vec<u64>, items: Vec<u64>)
    ensures final(log)@.len() == old(log)@.len() + items@.len(),
{
    let mut i: usize = 0;
    while i < items.len()
        invariant
            i <= items@.len(),
            log@.len() == old(log)@.len() + i,
        decreases items@.len() - i,
    {
        log.push(items[i]);
        i = i + 1;
    }
}
}
