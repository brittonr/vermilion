// expect: pass
use vstd::prelude::*;
verus! {
fn f(v: &mut Vec<u8>) requires old(v).len() == 3 {
    v.insert(1, 9);
    assert(v.len() == 4 && v[1] == 9 && v[0] == old(v)[0] && v[3] == old(v)[2]);
}
}
