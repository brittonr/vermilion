// expect: pass
use vstd::prelude::*;
verus! {
enum Shape { Circle(u8), Rect(u8, u8) }
proof fn g(s: Shape) requires s is Circle {
    let x: Option<int> = Some(3);
    assert(x.unwrap() == 3);
    assert(s->Rect_0 == s->Rect_0);
}
}
