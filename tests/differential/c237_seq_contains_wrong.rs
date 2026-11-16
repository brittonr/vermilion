// expect: fail @ 5
use vstd::prelude::*;
verus! {
proof fn g(s: Seq<int>) requires s.len() == 2, s[0] == 5 {
    assert(s.contains(6));
}
}
