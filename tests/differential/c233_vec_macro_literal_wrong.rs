// expect: fail @ 6
use vstd::prelude::*;
verus! {
fn f() {
    let v: Vec<u8> = vec![1, 2, 3];
    assert(v[2] == 2);
}
}
