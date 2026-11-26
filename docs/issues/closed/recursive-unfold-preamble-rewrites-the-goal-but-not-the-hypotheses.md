---
title: Recursive-unfold preamble rewrites the goal but not the hypotheses
labels: [bug, vcgen]
state: closed
github: 38
---

In the forecast-kernel acquisition, `kernel.spread.lemma_cumulative_monotone`
has a `call_requires` obligation whose goal is, verbatim, one of its own
hypotheses — the `ensures` of the lemma called just before:

```
(call_lemma_prefix_monotone_ensures_0 :
   kernel.spread.prefix_sum w j ≤ kernel.spread.prefix_sum w k) :
   kernel.spread.prefix_sum w j ≤ kernel.spread.prefix_sum w k
```

It stays `sorry`, as do the `call_requires` obligations of
`lemma_cumulative_bounds`. The ladder is not at fault: on this exact
statement `vrml_ladder` alone closes it with `grind`. The emitted attempt
first runs the bounded-rewriting preamble for the recursive spec fn
(docs/vcgen.md, spec-fn unfold policy):

```
iterate 2 (try first | (rw [kernel.spread.prefix_sum]; try norm_num) | …)
vrml [...]
```

`rw` rewrites the goal only, so both `prefix_sum` occurrences in the goal
are unfolded while the identical hypothesis stays folded, and nothing
relates them any more.

Possible fixes (each changes the emitted proof text of every obligation
with a recursive unfold, so tracked twins and case studies regenerate):

- try the folded goal first: `first | assumption | (iterate …; vrml […])`,
  or run `vrml` once before the preamble;
- rewrite hypotheses too (`rw [f] at *`), keeping goal and context in the
  same normal form;
- hand the preamble's equations to `vrml` as hypotheses instead of
  rewriting (closer to the per-occurrence ground-equation design in
  `.claude/memory/spec-fns-no-inlining-no-fuel.md`).

Any of these is a VC-rendering change, so `docs/vcgen.md` must change in
the same slice.

Repro: forecast-kernel's `vermilion/run.sh`; obligations
`kernel.spread.lemma_cumulative_monotone.call_requires_{1,2}_0` and
`kernel.spread.lemma_cumulative_bounds.call_requires_{2,3,4,5}_0`.

**Fix.** The attempt for an obligation with recursive unfolds is now a
`vrml_first` over unfolding depths `N, 0, 1, …, N − 1` (the full bound
first, so obligations that closed before cost the same). The folded
attempt closes goals that are verbatim a hypothesis; shallower depths
keep an induction hypothesis one step down in reach. `vrml_first` is a
new combinator in `Vermilion/Obligations.lean`: each alternative runs
against a fresh heartbeat baseline and heartbeat exhaustion counts as
that alternative's failure (core `first` rethrows it, which aborted the
remaining depths in the first version of this fix); like core `first`,
all but the last alternative run without error recovery, so the last
alternative's own error is the one reported. `docs/vcgen.md` and
`docs/ir.md` describe the new form; `tests/vrml_first.lean`
(`scripts/test_vrml_first.sh`, in the suite) covers the combinator;
corpus c223 (passes; failed before) and c224 (false variant, now
rejected at Verus's span; was rejected at the wrong one).

forecast-kernel, automation only: 98 → 110 of 123 obligations.
Existing twins keep their blocks (statement hashes are unchanged), so no
tracked twin changes.
