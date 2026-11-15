---
title: Judge generated units and kernel-check twins in one Lean process per run
labels: [enhancement]
state: open
github: 11
---

*Speed. Stage 2 of the Lean back-end latency plan in
`plans/execution-plan.md`.*

Today a single verification run starts many cold `lean` processes, and each
one pays the roughly 2.2 s Mathlib-closure import:

- `run_lean_parallel` (`vrml_check.rs`) spawns **one `lean` per unit
  file**. In per-function mode, the default, that is one per verified
  function, plus the `Specs`/`Evidence` olean builds (`ensure_specs_olean`).
  Parallelism hides some of the wall time but none of the CPU or memory:
  N processes each map and initialize the same environment.
- The `--manual-proofs` flow then runs a *second* round of processes for
  the twin kernel-check (`--twin-check`) over largely identical content.
  `--skip-identical` avoids only byte-identical twins.

### Proposal

Add a `vrml_check` driver mode that, per run:

- starts **one** Lean process (or a small pool sized to cores) that imports
  `Vermilion.Obligations` once;
- elaborates each unit's commands in a fresh `Environment` derived from that
  imported base (`Lean.Elab.Frontend` over the unit source, with
  `Environment` snapshots so units cannot see each other's declarations);
- emits the same per-obligation JSON diagnostics as today, so the editor
  and `vrml_sync` see no change;
- handles both generated units and twins in the same session.

Keep the existing per-process path as a fallback (`--isolated`) and use it
for crash isolation. A unit that crashes or stack-overflows the worker is
retried isolated (see the ilyasergey/vermilion#51 history in the ladder's node cap).

### Acceptance

Ledger entries (best-of-3) for m1-pipeline, a 20-function per-function
example, and dalek-lite Layer A. Each entry gives cold wall time, total CPU
time, and peak RSS, before and after. Twin and generated verdicts must be
identical across the old and new paths (extend `test_emission_modes.sh` or
add a sibling).

Related: #12
(stage 3), and #1.
The audit that issue needs (declaration-type comparison plus
`collectAxioms`) fits naturally into the same in-process pass.
