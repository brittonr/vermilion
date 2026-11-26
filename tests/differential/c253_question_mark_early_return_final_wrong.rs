// expect: fail @ 8
use vstd::prelude::*;
verus! {
pub struct Counter { pub n: u64 }
pub enum Fault { Empty }
fn step(c: &mut Counter, input: Option<u64>) -> (r: Result<u64, Fault>)
    ensures
        r is Err ==> final(c).n == 0,
{
    let v = input.ok_or(Fault::Empty)?;
    c.n = v;
    Ok(v)
}
}
