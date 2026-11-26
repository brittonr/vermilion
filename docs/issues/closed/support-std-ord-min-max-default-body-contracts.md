---
title: Support std Ord min and max default-body contracts
labels: [feature, vcgen]
state: closed
github: 23
---

`case-studies/percolator/liquidation_fee_minmax.rs` verifies with Verus but
Vermilion refuses the final expression
`raw_fee.max(min_liquidation_abs).min(liquidation_fee_cap)` with:

```text
unsupported default-body ensures on call to `max`
```

Handle the statically resolved default implementation contracts for
`core::cmp::Ord::{min,max}` on machine integers. The result should lower to
the same ordinary conditional semantics already used by Verus, with range
facts on the returned machine integer. This is not a request for dynamic
trait dispatch.

Add pass/fail differential guards for both `min` and `max`, update
`docs/ir.md`, and update `docs/vcgen.md` if the call rule changes. The
Percolator liquidation-fee driver should then verify end to end without
rewriting the executable expression.

**Resolved 2026-11-26.** The refusal was not specific to `min`/`max`: any
call whose contract carried `default_ensures` was refused. vstd states the
provided body's own facts that way, next to the trait method's ordinary
ensures, and Verus keeps the two apart. They are now assumed exactly when
the call runs the provided body (the SST call's `is_trait_default`) and
ignored otherwise; nothing is special-cased for integers or for these two
methods (`docs/trust.md`, "Trait dispatch"; `docs/ir.md`). Guards: c248
(`max` and `min` on `u64`), c249 (a false claim about `max`, which fails
in both verifiers). The Percolator liquidation-fee slice verifies
unchanged and moved from `explore.sh` to `run.sh`: five obligations, four
closed by the machine attempt and the derived `clone`'s by its existing
twin. Comparison operators on `Option`, which reach the same contracts,
are
`docs/issues/closed/comparison-operators-on-option-are-refused-default-body-ensures-and-generic-spec-impls.md`.
