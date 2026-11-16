// expect: pass
use vstd::prelude::*;
verus! {
proof fn g(s: Seq<int>) requires s.len() == 2, s[0] == 5 {
    assert(s.contains(5));
    assert(s.first() == 5 && s.last() == s[1]);
}
}
