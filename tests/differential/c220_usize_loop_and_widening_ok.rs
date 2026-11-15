// expect: pass
use vstd::prelude::*;
verus! {
fn f(v: &Vec<u8>, x: u32) -> (r: usize) ensures r == v.len() {
    let _y: usize = x as usize;
    let mut i: usize = 0;
    while i < v.len() invariant i <= v.len() decreases v.len() - i { i = i + 1; }
    i
}
}
