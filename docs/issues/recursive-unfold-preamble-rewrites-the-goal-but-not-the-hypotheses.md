---
title: Recursive-unfold preamble rewrites the goal but not the hypotheses
labels: [bug, vcgen]
state: open
github: null
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
