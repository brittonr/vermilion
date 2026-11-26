// expect: fail @ 7
use vstd::prelude::*;
verus! {
pub enum Fault { Empty, Full }
fn pick(input: Option<u64>) -> (r: Result<u64, Fault>)
    ensures
        input is None ==> r == Err::<u64, Fault>(Fault::Full),
{
    let v = input.ok_or(Fault::Empty)?;
    Ok(v)
}
}
