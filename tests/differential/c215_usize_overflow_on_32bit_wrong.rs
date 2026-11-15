// expect: fail @ 4
use vstd::prelude::*;
verus! {
fn f(x: usize) -> usize requires x == 4294967295 { x + 1 }
}
