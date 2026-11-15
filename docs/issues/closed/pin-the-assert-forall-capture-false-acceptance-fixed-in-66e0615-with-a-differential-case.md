---
title: Pin the assert-forall capture false acceptance (fixed in 66e0615) with a differential case
labels: [enhancement, foundations]
state: closed
github: 18
---

*Evidence level: executed against both pipelines.*

The lowering fix for #6 (`declare_havocked_locals`) closed a **live false
acceptance**. This program is wrong: inside the loop, `i` (the loop
variable) is in `[2, 3]`, and the `assert forall` claims `g(i) == 5` for
its own bound `i ∈ [0, 1)`, where `g(0) == 0`.

```rust
spec fn g(x: int) -> int { x }
fn f() {
    let mut i: u32 = 2;
    while i < 3 invariant 2 <= i <= 3 decreases 3 - i {
        assert forall|i: int| 0 <= i < 1 implies #[trigger] g(i) == 5 by {};
        i = i + 1;
    }
}
```

| Pipeline | Verdict |
|---|---|
| Verus (pinned) | rejects: `assertion failed` |
| Vermilion at `3a4e718` (before the fix) | **accepts** (`vrml_check` exit 0) |
| Vermilion at `66e0615` (after) | rejects `assert_0` |

**Why the old pipeline accepted it.** It emitted `assert_0` with both
`loop_0_iteration_1 : 2 ≤ i ∧ i ≤ 3` and `assume_4 : 0 ≤ i ∧ i < 1` over
the **same** binder `i`. The `assert forall`'s variable reached the IR
unbound, and rendered as the loop variable's name. The hypotheses
contradict each other, so the goal held vacuously. The verdict parity
corpus never caught it: none of its 200 cases has an `assert forall`
whose variable shadows a live local.

### Proposal

- Add the program above as
  `tests/differential/cNNN_assert_forall_shadows_loop_var_wrong.rs`
  (`// expect: fail @ <assert line>`) and its `_ok` twin (`g(i) == 0`), so
  the fix is pinned against regressions.
- Cover the other shapes too: shadowing a parameter, shadowing a local
  assigned before the block, and two nested `assert forall` blocks with the
  same name.
- This class (contradictory hypotheses, so an accepted wrong program) is
  what the vacuity oracle proposed in #16 detects without a hand-written
  case.

### Resolution (0fa8831)

Corpus cases, all agreeing with Verus:
- c193 / c194: shadows the loop variable (wrong / ok)
- c195: shadows a parameter (wrong)
- c196: shadows a local assigned before the block (wrong)
- c197 / c198: two sequential `assert forall` with the same name (wrong / ok)
- c199: nested `assert forall` with the same name (wrong, fails at the inner
  assertion)
