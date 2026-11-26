// expect: fail @ 7
use vstd::prelude::*;
verus! {
pub struct Pair { pub a: u64, pub b: Option<u64> }
impl Clone for Pair {
    fn clone(&self) -> (r: Self)
        ensures r.b is None,
    {
        Pair { a: self.a.clone(), b: self.b.clone() }
    }
}
}
