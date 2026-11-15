---
title: "A killed or crashed vrml_check leaves a truncated failures file that vrml_sync reads as success"
labels: [bug, foundations]
state: open
github: 23
---

*Evidence level: observed. A dalek-lite sweep was interrupted, and the
interruption reclaimed real `sorry` placeholders in tracked twins.*

`run_example.sh` judges each acquisition manifest and then reconciles it:

```
vrml_check "$m" ... > .vermilion/ga-$mstem-check.json
vrml_sync "$m" --failures .vermilion/ga-$mstem-check.json
```

`vrml_check` streams one JSON diagnostic per failing obligation as it
goes. If the checker is killed or crashes partway through a manifest (OOM,
a timeout, a user `Ctrl-C`, `pkill`), the failures file is **truncated but
non-empty**. The run script's fail-closed guard only catches the case of
a nonzero exit **with an empty file**. `vrml_sync` then reads every
obligation missing from the truncated stream as "automation succeeded" and
replaces its `sorry` placeholder with the generated attempt, which is known
to fail.

Observed in this session: interrupting a sweep while `field_u64` and
`field_lemmas_mul_lemmas` were being judged un-sorried four placeholders in
`impl__16_square2` and `lemma_mul_boundary`. Committed as-is, the twins no
longer kernel-check, and the reason for the change is gone from the history.
This is the same failure class as #21, reached through a different input.

### Fix

- `vrml_check` ends every complete judgment with a completion record,
  `{"$message_type":"vrml_check_complete"}`, after the last failure has been
  printed. Infrastructure exits print no record.
- `vrml_sync --failures FILE` trusts the file only if it holds that record.
  Otherwise it says so and falls back to the conservative reading of #21:
  existing placeholders are kept, and new or changed obligations get
  `sorry`.
- `test_typeclass_evidence.sh` pins both directions: a truncated stream
  keeps the placeholder, and a complete stream with no failures reclaims it.
