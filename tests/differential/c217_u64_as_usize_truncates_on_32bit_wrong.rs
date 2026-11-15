// expect: fail @ 4
use vstd::prelude::*;
verus! {
fn f(x: u64) -> (r: usize) ensures r == x { x as usize }
}
