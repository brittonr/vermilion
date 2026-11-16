// expect: pass
use vstd::prelude::*;
verus! {
fn f() {
    let v: Vec<u8> = vec![1, 2, 3];
    assert(v.len() == 3 && v[0] == 1 && v[2] == 3);
}
}
