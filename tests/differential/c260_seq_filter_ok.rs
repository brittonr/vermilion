// expect: pass
use vstd::prelude::*;
verus! {
// `Seq::filter` is opaque in vstd; these are the facts its always-on
// lemmas give (`group_filter_ensures`, `filter_distributes_over_add`).
pub open spec fn evens(s: Seq<u64>) -> Seq<u64> {
    s.filter(|x: u64| x % 2 == 0)
}
fn empty_evens() -> (v: Vec<u64>)
    ensures evens(v@) =~= v@,
{
    let v: Vec<u64> = Vec::new();
    v
}
proof fn kept_are_even(s: Seq<u64>, i: int)
    requires 0 <= i < evens(s).len(),
    ensures evens(s)[i] % 2 == 0,
{
}
proof fn no_longer(s: Seq<u64>)
    ensures evens(s).len() <= s.len(),
{
}
proof fn even_is_kept(s: Seq<u64>, i: int)
    requires 0 <= i < s.len(), s[i] % 2 == 0,
    ensures evens(s).contains(s[i]),
{
}
proof fn splits(a: Seq<u64>, b: Seq<u64>)
    ensures evens(a + b) == evens(a) + evens(b),
{
}
}
