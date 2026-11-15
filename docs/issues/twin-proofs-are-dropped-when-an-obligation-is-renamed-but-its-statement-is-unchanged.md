---
title: Twin proofs are dropped when an obligation is renamed but its statement is unchanged
labels: [enhancement]
state: open
github: 20
---

*Evidence level: observed while re-reconciling dalek-lite twins in
`66e0615`, and read from `lower.rs` and `vrml_sync.rs`.*

`vrml_sync` pairs twin blocks with obligations **by name**. A block whose
name disappears is dropped ("its obligation no longer exists"), and the
new name gets a fresh generated block, or a `sorry`. That happens even when
the new obligation has the **same statement hash** as the dropped block.
The hash-based fallback in `reconcile_module` (`fallback_blocks … filter
(hash ==)`) is used only for cross-emission-mode migration.

Names are not stable under unrelated edits:

- **Bit-vector asserts** get `assert_bv_{ordinal}_{index}`, where `ordinal`
  is `self.statements.len()` at the point of lowering. Any extra statement
  earlier in the function renumbers every later `by (bit_vector)` assert:
  a new assertion, a havocked-local binder (#6), or a lowering change.
  In `66e0615`, for example, `square2.assert_bv_6_0` became `assert_bv_7_0`.
  In `lemma_or_bit`, a block with statement hash `635d62c1edcb1059` moved
  from `assert_bv_5_0` to `assert_bv_5_0_1` with its hash unchanged.
- Ordinary asserts take Verus `AssertId`s, which also shift when asserts
  are added above them.

Under the twin methodology, a user's interactive proof survives only while
its statement hash matches. Losing it to a rename with an unchanged hash
contradicts that promise. dalek-lite's interactive proofs are exactly the
hand-written `bv` lemmas that this affects.

### Proposal

- In `reconcile_module`, before dropping orphaned blocks, re-home each one
  to a new obligation of the same function with the identical statement
  hash that has no block of its own. Rewrite the theorem name. Warn
  "proof for X carried over to Y (statement unchanged)".
- Derive bit-vector assert ids from something stable, such as the Rust
  span of the `assert … by (bit_vector)`, or a per-function counter of
  bit-vector asserts only, instead of the global statement count.
- Add a test: insert an assertion above a bit-vector assert whose twin
  holds a user proof. The proof must survive.

Related: the upstream tracker's `bit-vector-assert-id-collision` (#56)
appears to be fixed in code already, since `bitvector_ids` adds a `_N`
suffix on repeats. The committed dalek-lite twins carried the duplicate
names until `66e0615`.
