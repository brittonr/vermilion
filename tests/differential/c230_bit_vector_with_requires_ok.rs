// expect: pass
use vstd::prelude::*;
verus! {
proof fn g(x: u8) requires x == 3 {
    assert(x & 1 == 1) by (bit_vector) requires x == 3;
    assert(x | 4 == 7) by (bit_vector) requires x == 3;
}
}
