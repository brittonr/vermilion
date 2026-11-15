// expect: fail @ 5
use vstd::prelude::*;
verus! {
enum Shape { Circle(u8), Rect(u8, u8) }
proof fn g(s: Shape) requires s is Circle { assert(s->Rect_0 == 0); }
}
