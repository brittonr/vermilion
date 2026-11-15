// expect: pass
use vstd::prelude::*;
verus! {
proof fn f() { assert(usize::MAX >= 4294967295 && isize::MIN <= -2147483648 && u8::MAX == 255); }
}
