// expect: fail @ 12
// c226 with a false postcondition: escaping must not let it through.
use vstd::prelude::*;
verus! {
spec fn pick(include: bool, lemma: int) -> int {
    if include { lemma } else { 0 }
}
proof fn keywords_wrong(include: bool, to: int, omit: int)
    requires
        to >= 0,
        omit == to,
    ensures pick(include, to) > 0,
{
}
}
