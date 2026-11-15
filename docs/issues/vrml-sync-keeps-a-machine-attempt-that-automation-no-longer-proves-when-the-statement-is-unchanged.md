---
title: "vrml_sync keeps a machine attempt that automation no longer proves when the statement is unchanged"
labels: [bug, foundations]
state: open
github: 24
---

*Evidence level: observed in dalek-lite while re-syncing for #22.*

When an obligation's statement hash is unchanged, `vrml_sync` keeps the
twin's block as it is, even when `--failures` says automation no longer
proves it and the block is the machine attempt itself (identical to the
generated block, no hole). The twin then holds a "proof" that does not
check.

In dalek-lite this was the state of at least 30 blocks (16 in `field_u64`
`impl__9_sub`, 10 in `pow_lemmas`, 4 in `shift_lemmas`). Their generated
obligations fail under default budgets, with the old and the new
rendering alike, yet the committed twins carried the generated attempt
rather than `sorry`. The verdicts were still reported honestly (the
generated check does not count an identical twin block as coverage), but
the twin file did not kernel-check, and nothing said so.

### The policy question

Turning such a block into `sorry` is the documented convention ("sorry
plus a warning where automation fails"). But dalek-lite's runner judges
under sweep budgets (`--rung-budget 200` and so on), where more goals fail
than under default budgets. If sync turned every failing unchanged
machine block into `sorry`, each sweep would churn twins into `sorry`, and
the next default-budget run would reclaim them. Options:

1. Replace a failing, unchanged, identical-to-generated block with `sorry`
   only when the check ran at default budgets. `vrml_check` would record
   its budget profile in the completion record from #23.
2. Always replace it, and accept the churn under sweep budgets.
3. Keep the current behaviour, but have `vrml_sync` warn about each such
   block, so the stale attempt is at least visible.
