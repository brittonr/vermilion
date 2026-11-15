// expect: fail @ 5
use vstd::prelude::*;
verus! {
global size_of usize == 4;
fn f(x: usize) -> usize requires x == 4294967295 { x + 1 }
}
