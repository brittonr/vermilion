---
title: Lean keywords beyond the curated list break rendering
labels: [bug, vcgen]
state: closed
github: 35
---

`leanSegment` escapes Rust names that are Lean keywords, but the list it
consults (`leanReservedWords`) was hand-curated: 35 words. The environment
generated modules elaborate in (`Vermilion.Obligations`, which pulls in
Mathlib, Aesop and lean-smt) has 247 identifier-shaped tokens, and every
one of them breaks a binder when rendered verbatim (checked with
`Lean.Parser.runParserCategory`; a plain identifier parses as the control).

Found by the forecast-kernel acquisition: a Rust parameter named
`include` in a spec fn made the shared Specs module fail to parse, which
took down every obligation of the file. `lemma`, `omit`, `to`, `Type`,
`Prop`, `exists`, `forall`, `try`, `catch`, `return`, `while`, `until`,
`local`, `meta`, `public`, `private`, `alias` and the rest were equally
exposed.

**Fix.** `leanReservedWords` is now the full token set, and
`tests/lean_reserved_words.lean` (run by `scripts/test_render_hygiene.sh`)
recomputes the token table from the same imports and fails, naming the
words, when a toolchain or dependency bump adds a keyword the list lacks.
It also checks every listed word really breaks a binder, so the list
cannot grow ordinary identifiers (which would rename hypotheses and shift
statement hashes for nothing). Corpus c226 (keyword names in a spec fn
and a proof fn; passes) and c227 (same with a false postcondition;
rejected at Verus's span).
