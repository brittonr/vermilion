// expect: pass
use vstd::prelude::*;
verus! {
global size_of usize == 8;
fn f(x: usize) -> usize requires x == 4294967295 { x + 1 }
proof fn g() { assert(usize::MAX == 18446744073709551615); }
}
