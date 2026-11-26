// expect: pass
use vstd::prelude::*;
verus! {
pub struct Counter { pub n: u64 }
pub enum Fault { Empty, Full }
// `?` with a datatype error: Verus resolves the moved residual under its
// variant test, and binds the `Continue` payload in the arm that falls
// through.
fn pick(input: Option<u64>) -> (r: Result<u64, Fault>)
    ensures
        input is Some ==> r == Ok::<u64, Fault>(input->Some_0),
        input is None ==> r == Err::<u64, Fault>(Fault::Empty),
{
    let v = input.ok_or(Fault::Empty)?;
    Ok(v)
}
fn step(c: &mut Counter, input: Option<u64>) -> (r: Result<u64, Fault>)
    ensures
        r is Ok ==> final(c).n == input->Some_0,
        r is Err ==> final(c).n == old(c).n,
{
    let v = input.ok_or(Fault::Empty)?;
    c.n = v;
    Ok(v)
}
}
