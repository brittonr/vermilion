// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
spec fn pick<T>(c: bool, a: T, b: T) -> T { if c { a } else { b } }
proof fn f() {
    assert(pick(true, 0int - 1, 5int) == -1int);
}
}
