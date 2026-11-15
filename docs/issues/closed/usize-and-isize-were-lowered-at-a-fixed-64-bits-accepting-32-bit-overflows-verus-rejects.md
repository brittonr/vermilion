---
title: "usize/isize were lowered at a fixed 64 bits, accepting 32-bit overflows Verus rejects"
labels: [bug, vcgen, foundations]
state: closed
github: 26
---

*Evidence level: executed against both pipelines; Verus's own source read
for the arch model.*

Verus verifies a crate that does not pin its word size
(`global size_of usize == N;`) for an architecture word of **32 or 64**
bits (`vir::ast::ArchWordBits::Either32Or64`): every `usize` overflow check
must hold at both widths. Vermilion lowered `usize`/`isize` everywhere at a
fixed 64 bits. As a hypothesis that is sound (`x < 2^64` holds on both),
but as an overflow obligation or a clip it is too weak, and Vermilion
accepted programs Verus rejects:

| Program | Verus | Vermilion (before) |
|---|---|---|
| `fn f(x: usize) -> usize requires x == 4294967295 { x + 1 }` | rejects (overflow) | **accepts** |
| `let x: isize = -2147483648; let y = x - 1;` | rejects | **accepts** |
| `fn f(x: u64) -> (r: usize) ensures r == x { x as usize }` | rejects | **accepts** |

The same program with `global size_of usize == 8;` verifies in Verus, which
confirms the diagnosis. No example, case study or dalek-lite source pins
the width.

The comment in `lower.rs` ("the arch-neutral facts (valid on both) are the
64-bit bounds") and the matching lines in `docs/trust.md` and `docs/ir.md`
conflated hypotheses with obligations.

### Fix

- A crate that pins the width keeps a concrete encoding at that width
  (`Exactly(64)` is byte-identical to before).
- Otherwise the width is symbolic: a new IR atom `(usizemod)`
  (`Vermilion.usizeMod`, an `opaque` value of the subtype
  `{m // m = 2^32 ∨ m = 2^64}`: no axiom) is the modulus. The `usize`
  range is `0 ≤ x < usizeMod`; a `usize` clip is `emod x usizeMod`; an
  `isize` clip and range use `usizeMod / 2`. `IntegerTypeBound` (`u8::MAX`,
  `usize::MAX`, `isize::MIN`, the word size itself) is now lowered for
  both cases; it was unsupported before.
- `vrml_norm` splits any obligation that mentions `usizeMod` into its two
  values and substitutes each, so the goal must hold at 32 and 64 bits,
  exactly Verus's reading, and the clips become remainders by literals.
- At a symbolic width only `&`, `|`, `^` and `>>` on `usize` are lowered;
  `<<`, `!` and `isize` bit operations fail closed (their meaning depends
  on the width).
- Corpus: c215-c218 and c222 (wrong), c219-c221 (ok, including a pinned
  64-bit crate).

### Resolution

Implemented as described. Verification:

- Corpus 230/230 in both emission modes, 120/120 failure lines, 0 false
  acceptances; soundness gate, vacuity allowlist, and mutation oracle
  (315 mutants, 0 vacuity bugs, 0 Lean infrastructure skips) pass.
- All 37 examples and 11 case-study runners pass. Their usize statements
  changed meaning, so hashes changed. 37 hand-written proofs were carried
  over to the new statements (same body, re-checked). Proofs that read
  the old 64-bit literal clip were ported to the new
  `Vermilion.emod_usizeMod_of_lt` lemma. That meant 9 `have` rewrites
  across binary-search, merge-sort (both twins), percolator, vec-reverse
  and m3-vec-set. vermilion-blog and both merge-sort twins of
  `extend_from_idx` needed a bound restated. No proof was dropped.
- dalek-lite: 124 blocks re-rendered (5 user proofs in `impl__6_add`
  carried over and kernel-checked). The failing obligations of the six
  affected twin files are exactly the same set before and after (19
  declarations, all pre-existing, see #24).
