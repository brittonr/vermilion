---
title: The editor guard pins a generated unit that no suite phase produces, so a fresh checkout ends red
labels: [bug]
state: closed
github: 50
---

*Evidence level: reproduced on a checkout without the probe's output; fixed
in the same session.*

`scripts/test_differential_editor.sh` asks Lake to resolve
`case-studies/aeneas/probes/generated/keccak_iota/impl__6_index.lean`. That
file is generated output of a probe which neither `run_suite.sh` nor
`run_suite.sh --differential` runs, and `generated/` is untracked. On a
checkout where the probe never ran, the guard, the last step of both
suites, failed with `bad import 'generated.keccak_iota.Specs'` (left open
in #32).

### Fix

The guard produces the unit when it is missing: the Verus front end with the
VIR export, `vermilion_direct`, then `vrml_gen`. It does not judge the probe
and does not reconcile its proof twins, so nothing tracked under
`case-studies/aeneas/` changes. That folder is read-only by directive; its
owner allowed this one exception for the gitignored `generated/` directory
(`.claude/memory/editor-guard-generates-keccak-probe.md`).

Checked with the directory absent: `./scripts/run_suite.sh --differential`
generated it and passed, and `git status case-studies/aeneas` stayed clean.
