// expect: fail @ 5
use vstd::prelude::*;
verus! {
proof fn g(s: Set<int>, t: Set<int>) requires s.contains(1) {
    assert(s.intersect(t).contains(1));
}
}
