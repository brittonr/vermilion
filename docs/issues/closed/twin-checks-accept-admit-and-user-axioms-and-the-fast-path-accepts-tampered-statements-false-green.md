---
title: Twin checks accept admit and user axioms, and the fast path accepts tampered statements (false green)
labels: [bug, foundations]
state: closed
github: 1
---

**Severity: soundness of the reported verdict (checking/reporting path, TCB item 6 in `docs/trust.md`).**

Two acceptance paths can report success without a kernel-checked proof of
the generated obligation:

- **Normal `--manual-proofs` path:** `twin_covers` (`vrml_check.rs`)
  treats a block whose signature matches but whose body differs and has
  no `sorry` substring as "covered by a manual twin proof". Those records
  are excluded from the failures, and the twin is then judged by
  `lean`'s exit status. That catches tampered statements, but `admit`
  (vector 2) and user-section axioms or `sorry`'d helpers (vector 3) pass.
- **Fast path:** `run_example.sh --manual-proofs --lib` skips the
  generated-module check when `vrml_sync --probe` says the twin is current.
  The verdict is then the exit status of `lean <twin>` alone. Here
  **all four** vectors pass, including a tampered statement (vector 1).

The vectors:

1. **The statement text is never compared.** `twin_file_current`
   (`vrml_sync.rs`) only checks that each block's *marker line*
   `-- vrml:begin <name> <hash>` carries the current hash, and that the block
   text has no `sorry`. The theorem signature inside the block can say
   anything. `reconcile_module` also keeps such a block verbatim on every
   sync, so the edit persists.
2. **Holes are detected by substring.** `contains("sorry")` misses `admit`.
   Lean 4.33 treats `admit` as a `sorry` (it warns and depends on `sorryAx`)
   and **exits 0**.
3. **User sections are unchecked.** `-- vrml:user:begin` sections, and
   anything appended to the Specs twin (accepted by `starts_with` on the
   generated text), may contain `axiom`s, or helper lemmas proved by `sorry`
   that a block then uses. The block itself contains no `sorry`, and
   `lean` exits 0.
4. **No axiom audit.** `vrml_check` never collects the axioms that
   `@[vrml_obligation]` / `@[vrml_evidence]` declarations depend on.
   `trust.md` item 5 already says an axiom audit is required.

### Reproduction (executed)

Build `vrml_sync` (`cargo build -p vermilion_backend --bin vrml_sync`; it is
plain Rust). Write a per-file manifest with one obligation
`demo.inc.ensures_0`, hash `aaaabbbbccccdddd`, and a generated block proving
`x + 1 < 101` under `x < 100`. Then write a twin that keeps the marker line
but changes the goal to `True` and the proof to `admit`:

```
-- vrml:begin demo.inc.ensures_0 aaaabbbbccccdddd
@[vrml_obligation] theorem ensures_0
    (x : Int)
    (requires_0 : x < 100) :
    True := by
  admit
-- vrml:end demo.inc.ensures_0
```

```
$ vrml_sync demo.json --probe            ; echo $?
0                                         # "twin current" -> generated check skipped
$ vrml_sync demo.json --fail-on-sorry    ; echo $?
proofs twin unchanged ex/proofs/demo.lean (1 obligations, 0 sorry)
0
```

Separately, with core Lean 4.33.0:

```
$ lean admit.lean     # `theorem t1 ... := by admit`, plus `axiom cheat` used by t2
admit.lean:2:8: warning: declaration uses `sorry`
't1' depends on axioms: [sorryAx]
exit=0
```

Together, the fast path prints "proofs twin kernel-checked" for a theorem
that no longer states the obligation.

Normal path: with the twin's goal restored to `x + 1 < 101` but the body
still `admit`, `vrml_check demo.json --twin-coverage-only` (built from this
repository; no Lean needed) emits the record with
`"covered_by_twin": true` ("covered by a manual twin proof") and exits 0.
The remaining arbiter, `lean` on the twin, then exits 0 (above).

The full Lake/Mathlib twin-check run was not executed here (no Mathlib in
the audit environment). Each step above was.

### Proposed fix

Make the twin's *elaborated* theorems the evidence, not its text.

- Add a Lean-side audit command, for example
  `lake env lean --run Vermilion/Audit.lean <generated> <twin>`, or a
  `#vrml_audit` command appended to each twin. For every manifest record
  it must:
  - require a declaration of that name in the twin, tagged
    `@[vrml_obligation]` or `@[vrml_evidence]`;
  - require its type to be `==` (up to `instantiateMVars` and
    `Expr.eqv`, or `isDefEq` with reducible transparency) to the type the
    *generated* module elaborates for the same name;
  - run `Lean.collectAxioms` on it and require the result to be within an
    allowlist (`propext`, `Classical.choice`, `Quot.sound`, plus whatever
    lean-smt reconstruction legitimately needs). Reject `sorryAx`,
    `Lean.ofReduceBool` (`native_decide`) unless opted in, and every
    user-declared axiom.
- Make `--probe` and the fast path call the audit. Keep marker hashes as a
  cheap pre-filter only.
- Count holes with `collectAxioms` (the `sorryAx` dependency), not with
  `contains("sorry")`, in `vrml_sync --fail-on-sorry` too.
- Regression tests: an edited statement under an intact marker, `admit`, a
  user-section `axiom`, a user-section helper proved by `sorry`, and
  `native_decide`. Each must fail the run.

Related: the August false green recorded in `trust.md`, and
`docs/issues/proof-caching.md` (ilyasergey/vermilion#6). Any proof cache must key on the
audited declaration, not on the marker.

## Resolution

Commit `66e0615`.

Fixed. Two layers:

- **Lean-side audit (authoritative).** A new `#vrml_audit` command
  (`lean/Vermilion/Obligations.lean`) checks every
  `@[vrml_obligation]`/`@[vrml_evidence]` declaration of the module with
  `collectAxioms` and fails unless the axioms are within `propext`,
  `Classical.choice` and `Quot.sound`. That rejects `sorry`/`admit`
  (`sorryAx`), user `axiom`s reached through helper lemmas, and
  `native_decide` (per-declaration compiler-trust axioms). `bv_decide` in
  4.33 needs nothing beyond the three, so the committed dalek-lite
  `bv_decide` helper still passes. `vrml_check --twin-check`, which the
  fast path also uses, now checks a copy of each twin with `#vrml_audit`
  appended. Lean's messages are mapped back to the twin's own path.
- **Text checks (pre-filter).** `vrml_sync --probe` (`twin_file_current`)
  now requires each block's theorem declaration to equal the generated
  one, not just its marker hash. `reconcile_module` restores the generated
  statement when a twin edited it, keeps the proof body, and warns.
  Hole detection (`twin::has_hole`) also catches the `admit` tactic, in
  probe, sync and `twin_covers`.

Verified:
- The repro from this issue: an edited goal under an intact marker now
  makes `--probe` exit 1, and sync restores the statement. With `admit`,
  probe exits 1 and the block is no longer "covered by twin".
- The audit rejects `admit`, a user `axiom`, a `sorry`'d helper and
  `native_decide`, and accepts `Classical.em`. Shown on a scratch module,
  and on `primes` with an `admit` injected: the twin check fails both
  through `vrml_worker` and through `VRML_ISOLATED=1` per-file `lean`.
- Unit tests in `crates/vermilion_backend/src/twin.rs`.
- `docs/trust.md` (TCB item 6) describes the audit.
