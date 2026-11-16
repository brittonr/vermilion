// expect: fail @ 5
use vstd::prelude::*;
verus! {
proof fn g(m: Map<int, int>) requires m.dom().contains(1) {
    assert(m.remove(1)[1] == m[1]);
}
}
