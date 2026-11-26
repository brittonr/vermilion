// expect: pass
use vstd::prelude::*;
verus! {
pub struct Counter { pub n: u64 }
// `Option::ok_or<T, E>` is the first contract to mention `Result<T, E>`,
// whose own parameters carry the same names: the datatype must still be
// declared generically.
fn step(c: &mut Counter, input: Option<u64>) -> (r: Result<u64, u64>)
    ensures
        r is Ok ==> final(c).n == input->Some_0,
        r is Err ==> final(c).n == old(c).n,
{
    let v = input.ok_or(7u64)?;
    c.n = v;
    Ok(v)
}
}
