---
title: Experimental verified-hash cache is unsound if enabled; the timing report overstates incrementality
labels: [bug, foundations]
state: open
github: 5
---

*Evidence level: static reading of `vrml_check.rs`.*

`vrml_check` still carries the experimental verified-hash cache
(`VERMILION_CHECK_CACHE`, `.vermilion/verified-hashes.json`).

**1. If enabled, the cache can skip a check that should fail.**

- Entries are keyed **only** by the obligation's statement hash.
- The cache is invalidated only by the mtime of
  `.lake/build/lib/lean/Vermilion/Obligations.olean`.
- The statement text names user spec functions by application (`f x`). The
  definitions live in `Specs.lean`, and the decidability evidence in
  `Evidence.lean`.

So editing a spec-fn body (or a datatype, an evidence term, or a vstd
mirror lemma outside `Obligations.olean`) leaves the hash unchanged. The
obligation is then skipped, even though its machine proof was only ever
checked against the *old* definition. `plans/incremental-computation.md`
already lists these dependencies as missing from the key. The code path
remains one environment variable away, and nothing in the repository sets
the variable.

**Proposal:** delete the cache plumbing (`VerifiedCache`, `load_cache`,
`save_cache`, `CACHE_PATH`) until the full design in
`plans/incremental-computation.md` exists. Any successor must key on the
audited declaration and its transitive constants. See
#1. Lean's own
`.olean` trace hashes give this nearly for free in per-function mode: a
unit whose olean trace is unchanged need not be re-elaborated.

**2. The timing report overstates incrementality.**

`docs/reports/vermilion-vs-verus-timing.md` says the startup cost is
"amortized by the incremental `vrml_check` (only hash-changed obligations
re-judged)". That is not the default behaviour:

- Watch mode narrows re-checks to *functions* with changed hashes
  (`vrml_check --only`), but still starts a fresh `lean` process, and
  re-imports Mathlib, per unit.
- A plain `vrml_check` run re-judges everything.

Please correct the sentence, or annotate the dated report, so the 4.2× gap
is not presented as already amortized.
