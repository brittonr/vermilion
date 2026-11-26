// expect: pass
use vstd::prelude::*;
verus! {
// `>` on `Option<u64>` is `PartialOrd::gt`, a provided method; its meaning
// comes from `impl<T: PartialOrd> PartialOrdSpecImpl for Option<T>`, which
// compares payloads through `T`'s own specification.
fn ahead(candidate: Option<u64>, current: Option<u64>) -> (r: bool)
    ensures r == match (candidate, current) {
        (None, _) => false,
        (Some(_), None) => true,
        (Some(c), Some(k)) => c > k,
    },
{
    candidate > current
}
fn behind(a: Option<u64>, b: Option<u64>) -> (r: bool)
    ensures (a is Some && b is Some) ==> r == (a->Some_0 < b->Some_0),
{
    a < b
}
fn at_most(a: Option<u64>, b: Option<u64>) -> (r: bool)
    ensures (a is Some && b is Some) ==> r == (a->Some_0 <= b->Some_0),
{
    a <= b
}
fn at_least(a: Option<u64>, b: Option<u64>) -> (r: bool)
    ensures (a is Some && b is Some) ==> r == (a->Some_0 >= b->Some_0),
{
    a >= b
}
fn differs(a: Option<u64>, b: Option<u64>) -> (r: bool)
    ensures r == (a != b),
{
    a != b
}
}
