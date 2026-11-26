// expect: fail @ 5
use vstd::prelude::*;
verus! {
fn ahead(candidate: Option<u64>, current: Option<u64>) -> (r: bool)
    ensures r == (candidate is Some),
{
    candidate > current
}
}
