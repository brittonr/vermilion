// expect: fail @ 4
use vstd::prelude::*;
verus! {
fn f() { let x: isize = -2147483648; let y = x - 1; }
}
