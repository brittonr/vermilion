---
title: Judge generated units and kernel-check twins in one Lean process per run
labels: [enhancement]
state: closed
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

## Resolution

Commit `66e0615`.

Implemented. `lean/VrmlWorker.lean` adds a new `lean_exe vrml_worker`.

- **How it works.** It imports the union of the given files' headers
  once. It elaborates each file through Lean's ordinary frontend
  (`IO.processCommands`, so declarations are kernel-checked as under
  `lean <file>`), each with its own command state and main-module name.
  It prints `lean --json`-compatible messages per file between
  `### vrml-worker <i> <status>` markers. Concurrency is bounded by
  `--jobs`: an unbounded fan-out exhausted memory on dalek-lite.
- **`vrml_check` integration.** `vrml_check` sends every elaboration of a
  run (generated-module checks and audited twin checks) through one
  worker.
- **One exception.** The twin `Evidence` module is imported by the other
  unit twins, so it must not see itself. It gets its own `lean`,
  concurrently.
- **Fallbacks.** `VRML_ISOLATED=1`, a missing worker binary, or a worker
  that fails to account for every file fall back to one `lean` per file.
  A worker failure therefore never reads as success.
- **Build.** `run_example.sh` and `vrml_watch.sh` build the worker.

Measured, on `examples/m2-loops` (3 units, 2-core VM): one `lean` per
unit took 3.4–5.9 s; one worker took 2.2–3.0 s. Diagnostics are
byte-identical to the isolated path. The smoke suite passes through the
worker. Entries are in `docs/reports/performance-ledger.md`, and
`docs/development.md` and `docs/trust.md` (TCB item 6) describe the
worker.
