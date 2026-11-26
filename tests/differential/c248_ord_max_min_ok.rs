// expect: pass
use vstd::prelude::*;
verus! {
// `Ord::max`/`Ord::min` are provided trait methods: vstd specifies them on
// the trait, with the provided body's own facts as `default_ensures`.
fn upper(a: u64, b: u64) -> (r: u64)
    ensures r >= a && r >= b && (r == a || r == b),
{
    a.max(b)
}
fn lower(a: u64, b: u64) -> (r: u64)
    ensures r <= a && r <= b && (r == a || r == b),
{
    a.min(b)
}
fn clamp_fee(raw: u128, floor: u128, cap: u128) -> (r: u128)
    requires floor <= cap,
    ensures floor <= r <= cap,
{
    raw.max(floor).min(cap)
}
}
