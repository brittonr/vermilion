// expect: pass
use vstd::prelude::*;
verus! {
// A derived `Clone` whose field clones are specified through vstd's
// `cloned`, a predicate on the function item `T::clone`.
#[derive(Clone)]
pub struct Inner { pub id: u64, pub tags: Vec<u8> }
#[derive(Clone)]
pub enum Shape { Dot, Line(Vec<u64>), Area(Option<Vec<u64>>, u64) }
#[derive(Clone)]
pub struct Outer { pub inner: Inner, pub shapes: Vec<Shape>, pub last: Option<Inner> }
fn count(o: &Outer) -> (n: usize)
    ensures n == o.shapes@.len(),
{
    let copy = o.clone();
    o.shapes.len()
}
}
