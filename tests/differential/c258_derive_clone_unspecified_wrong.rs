// expect: fail @ 7
use vstd::prelude::*;
verus! {
#[derive(Clone)]
pub struct Point { pub xs: Vec<u64>, pub tag: Option<u64> }
fn same(p: &Point) -> (q: Point)
    ensures q.tag == p.tag,
{
    p.clone()
}
}
