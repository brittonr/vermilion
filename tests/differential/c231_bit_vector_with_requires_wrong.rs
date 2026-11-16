// expect: fail @ 5
use vstd::prelude::*;
verus! {
proof fn g(x: u8) requires x == 3 {
    assert(x & 1 == 0) by (bit_vector) requires x == 3;
}
}
