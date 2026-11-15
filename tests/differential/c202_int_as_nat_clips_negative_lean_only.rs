// expect: lean-only pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
proof fn f(x: nat)
    ensures (x - 5) as nat == 0 || x >= 5,
{
}
}
