// expect: pass
// Rust names that are Lean keywords (`include`, `lemma`, `to`, `omit`) in a
// spec fn's parameters, which land in the shared Specs module, and in a
// proof fn's binders. An unescaped `include` broke forecast-kernel's Specs.
use vstd::prelude::*;
verus! {
spec fn pick(include: bool, lemma: int) -> int {
    if include { lemma } else { 0 }
}
proof fn keywords(include: bool, to: int, omit: int)
    requires to >= 0, omit == to,
    ensures pick(include, to) >= 0,
{
}
}
