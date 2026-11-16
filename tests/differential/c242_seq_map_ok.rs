// expect: pass
use vstd::prelude::*;
verus! {
proof fn g(s: Seq<int>) requires s.len() == 2 {
    let t = s.map(|i: int, x: int| x + i);
    assert(t.len() == 2 && t[1] == s[1] + 1);
}
}
