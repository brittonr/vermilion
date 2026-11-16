// expect: fail @ 6
use vstd::prelude::*;
verus! {
fn f(v: &mut Vec<u8>) requires old(v).len() == 3 {
    v.insert(1, 9);
    assert(v[2] == old(v)[2]);
}
}
