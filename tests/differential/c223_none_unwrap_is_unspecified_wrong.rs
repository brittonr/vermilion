// expect: fail @ 4
use vstd::prelude::*;
verus! {
proof fn g() { let x: Option<int> = None; assert(x.unwrap() == 0); }
}
