// expect: fail @ 4
use vstd::prelude::*;
verus! {
proof fn f() { assert(usize::MAX == 18446744073709551615); }
}
