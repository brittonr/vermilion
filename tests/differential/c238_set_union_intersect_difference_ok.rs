// expect: pass
use vstd::prelude::*;
verus! {
proof fn g(s: Set<int>, t: Set<int>) requires s.contains(1), !t.contains(1), t.contains(2) {
    assert(s.union(t).contains(2));
    assert(s.difference(t).contains(1));
    assert(!s.intersect(t).contains(1));
}
}
