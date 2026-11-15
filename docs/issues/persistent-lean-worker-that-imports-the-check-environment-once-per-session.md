---
title: Persistent Lean worker that imports the check environment once per session
labels: [enhancement, vscode-extension]
state: open
github: 12
---

*Speed. Stage 3 of the Lean back-end latency plan in
`plans/execution-plan.md`, and item 3 of
`plans/incremental-computation.md`. This is the structural fix for the
measured 4.2× gap to Verus, which is dominated by the roughly 2.2 s Mathlib
import per `lean` process, not by proof search.*

`vrml_watch` is already a persistent process, but it still starts a fresh
`lean` per re-check (`plans/incremental-computation.md`: "a persistent
watcher process, not a persistent Lean worker"). Every editor save
therefore pays the import again.

### Proposal

A long-lived `vrml_worker` (Lean executable) that:

- imports `Vermilion.Obligations` (and the cvc5 plugin, if still on the
  default path) **once**, at session start;
- accepts jobs over stdin/stdout JSON lines:
  `{unit_path | source, mode: generated|twin, only: [functions], options}`;
- elaborates each job against a fresh copy of the base `Environment`, so
  no declaration, instance, simp attribute, or option leaks between jobs.
  The module-wide `Decidable` evidence instances make leak-freedom
  load-bearing, not cosmetic;
- supports cancellation (a newer save supersedes an in-flight job) and
  reports per-obligation results incrementally, so the editor can show
  pending, stale, checked, and refused states;
- is restarted when the Vermilion library or toolchain changes (olean
  hashes, not mtimes) and after any job that hits the node or heartbeat
  caps in a way that may have corrupted state.

`vrml_watch` and the VS Code extension talk to the worker, while
`vrml_check` keeps its one-shot path for CI.

### Acceptance

Following the plan, publish cold and warm timings and editor
save-to-diagnostic latency, and flag any regression over 20%. The stated
target is amortized post-first-file latency near the measured ~0.9 s of
actual elaboration and tactics. Verdicts must be identical to the one-shot
path on the full suite.

Related: #11
(stage 2, a stepping stone that shares the Frontend-per-unit code), and
#9
(complementary: it cuts proof-search time, while this cuts import time).

## Progress

Commit `66e0615`.

The persistent worker exists and watch mode uses it:

- **Server mode.** `vrml_worker --serve DIR` answers JSON-line jobs over
  the FIFOs `DIR/request`/`DIR/response`. It caches imported environments
  by import set, and re-imports when a direct import's `.olean`
  modification time (to the nanosecond) changes
  (a regenerated `Specs`, a rebuilt library). Initializers run at most
  once per process, and plugins load once. The `smt` rung (cvc5 plugin)
  works through the worker, and its reconstructed proofs pass
  `#vrml_audit`.
- **Client.** When `VRML_WORKER_DIR` is set, `vrml_check` uses the
  server. The request FIFO is opened non-blocking, so a dead server
  falls back to a fresh worker instead of hanging.
- **Watch mode.** `vrml_watch` starts one server per session and exports
  `VRML_WORKER_DIR` to its `vrml_check` children.

Measured on `examples/m2-loops` (3 units, 2-core VM): the first check
through the server took 1.9–2.3 s (the import); warm re-checks took
0.53–0.97 s, against 3.4–5.9 s with one `lean` per unit. This is the
plan's ~0.9 s target. Recorded in `docs/reports/performance-ledger.md`.

Still open:
- the VS Code extension still runs `run_example.sh` per verify, so it
  should start (or reuse) a server and set `VRML_WORKER_DIR`;
- cancellation of an in-flight job when a newer save arrives;
- a timeout on the client's response read (a server that dies mid-job
  currently blocks that `vrml_check`).
