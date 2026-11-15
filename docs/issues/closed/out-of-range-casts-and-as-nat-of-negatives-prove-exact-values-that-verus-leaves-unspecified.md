---
title: "Out-of-range casts and `as nat` of negatives prove exact values that Verus leaves unspecified"
labels: [enhancement, vcgen, foundations]
state: closed
github: 17
---

*Evidence level: executed. Each probe ran through pinned Verus (full SMT
verification) and the Vermilion pipeline.*

| Probe | Verus | Vermilion |
|---|---|---|
| `let x: i64 = -1; assert(x as u8 == 255)` | **fails** | passes |
| `let x: u64 = 0xffff_ffff; assert(x as i32 == -1)` | **fails** | passes |
| `proof fn f(x: nat) ensures (x - 5) as nat == 0 \|\| x >= 5` | **fails** | passes |
| `let x: u64 = 8; assert(x >> 1u32 == 4)` (no `bit_vector`) | **fails** | passes |
| `assert((-1i64) as u8 == 0)` (false) | fails | fails |
| signed `/` and `%` truncation, div/mod by zero, shift overflow, `-x` overflow, `u8` add overflow, `i32::MIN / -1` | fail where expected | identical |

**What is going on.**
- **Casts.** Verus does not prove these rows. Its model of an `as` cast
  (VIR `Clip` without `truncate`) appears to constrain the result only for
  in-range operands, so the value of an out-of-range cast is unspecified
  there; this is inferred from the verdicts, not read from `sst_to_air`.
  Vermilion lowers every VIR `Clip`
  exactly: `lower_clip` ignores the `truncate` flag. Unsigned widths reduce
  modulo `2^w`, signed widths use two's complement, and `nat` saturates at
  0. `docs/trust.md` states the exact semantics, but not that they
  **diverge from Verus**.
- **What it means.** For exec casts, Vermilion's value is Rust's actual
  semantics, so it is not unsound; Verus is merely weaker. For ghost
  `int as nat`, Vermilion picks one model (0) of a value Verus leaves free.
  Either way it is a **verdict divergence in the accepting direction**,
  which the differential gate treats as a false acceptance.
- **Coverage.** The corpus has no case for any of these, so the divergence
  is untested and unrecorded.
- **The shift row** is the Lean-native capability the README advertises.
  It belongs in the same "Lean proves more" ledger.

### Decide and record

1. Keep exact clipping, the Rust semantics. Document each row in
   `docs/trust.md` as a deliberate divergence, and give the differential
   harness an explicit expectation class, e.g. `// expect: lean-only pass`,
   so these cases are pinned rather than counted as mismatches.
2. Or match Verus: make an out-of-range clip opaque unless the cast carries
   `truncate`, by reading the flag in `lower_clip` and using a new opaque
   prelude function. Exact semantics stay available in twins through a
   proved lemma under the truncate attribute.

Either way, add the probes above to `tests/differential/`. The probe
sources are one-liners; they are reproduced in the table.

### Resolution (0fa8831): option 1

- Exact clipping is kept (Rust semantics). `docs/trust.md` records each row
  as a deliberate divergence from Verus.
- New expectation header `// expect: lean-only pass`: expected Verus fail,
  Lean pass. `run_differential.py` and `differential_soundness.py` exempt
  those cases and no others from the false-acceptance check.
- Corpus: c200 (`-1i64 as u8 == 255`), c201 (`0xffff_ffffu64 as i32 == -1`),
  c202 (`(x - 5) as nat`), c203 (shift without `bit_vector`), and the
  control c204 (`(-1i64) as u8 == 0`, expected fail).
- c204 was **accepted** by Lean at first: the obligation
  `((0 - 1) % 256) = 0` had no typed leaf, so its numerals defaulted to
  `Nat`. The renderer now ascribes `: Int` to every maximal literal-only
  subterm containing a subtraction (`Expr.closedNumeric`/`natHazard` in
  `Print.lean`, `docs/vcgen.md`; generalized in #22).
