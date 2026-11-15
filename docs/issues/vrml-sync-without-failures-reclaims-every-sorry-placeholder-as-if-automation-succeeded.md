---
title: vrml_sync without --failures reclaims every sorry placeholder as if automation succeeded
labels: [bug]
state: open
github: 21
---

*Evidence level: observed. Re-syncing the 27 dalek-lite manifests by hand
without `--failures` replaced 8 `sorry` placeholders with generated
automation attempts that are known to fail. They had to be restored
manually before `66e0615`.*

`reconcile_module` treats "not in the failing set" as "automation now
proves it". It does so for both cases:

- for a placeholder block (`has_hole(previous)`), it says "now proven
  automatically; its `sorry` placeholder was replaced";
- for a changed statement, it emits the generated attempt.

When `--failures` is omitted, the failing set is **empty**, so every
placeholder is reclaimed. The usage string allows that invocation
(`vrml_sync <manifest.json> [--failures …]`), and nothing warns.
`run_example.sh` guards one route to an empty failure set (a checker that
crashed without output; see the August false green in `trust.md`), but not
a user or script calling `vrml_sync` directly.

**Effect.** It is not a false green by itself: the twin check later fails
on the reinstated attempts. But it silently destroys the record of which
obligations need manual proofs, `--fail-on-sorry` then counts 0, and
committing such a twin moves hand-tracked work into "red for unknown
reasons".

### Proposal

- Make `--failures <check.json>` mandatory for reconciliation, or add an
  explicit `--assume-automation-succeeded` flag for the rare intentional
  case.
- Without failure information, keep existing placeholders as they are, and
  put changed-statement blocks in as `sorry` rather than as the generated
  attempt.
- Add a test: syncing without `--failures` must leave the twin's `sorry`
  count unchanged.
