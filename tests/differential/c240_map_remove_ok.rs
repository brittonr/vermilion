// expect: pass
use vstd::prelude::*;
verus! {
proof fn g(m: Map<int, int>) requires m.dom().contains(1), m.dom().contains(2) {
    assert(!m.remove(1).dom().contains(1));
    assert(m.remove(1)[2] == m[2]);
}
}
