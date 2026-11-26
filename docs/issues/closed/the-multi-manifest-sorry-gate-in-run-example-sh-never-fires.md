---
title: The multi-manifest sorry gate in run_example.sh never fires (pipeline status of tail)
labels: [bug]
state: closed
github: 25
---

*Evidence level: read from `scripts/run_example.sh`; consistent with the
dalek-lite runs in this session, which printed "N obligation(s) … still need
manual proofs" and kept going.*

In the multi-manifest branch (`--generated-root`, used by dalek-lite), each
manifest is reconciled with

```bash
./target/debug/vrml_sync "$m" --failures ".vermilion/ga-$mstem-check.json" \
  ${sync_flags[@]+"${sync_flags[@]}"} 2>&1 | tail -1 || agg=1
```

Under `--manual-proofs`, `sync_flags` holds `--fail-on-sorry`, and the
script's own comment says that "any residual `sorry` fails the run". But the
`|| agg=1` tests the exit status of `tail`, not `vrml_sync`, and the script
does not set `pipefail` for this pipeline. So a `sorry` never fails a
`--manual-proofs` acquisition run. dalek-lite currently has 38 `sorry`
bodies and its runner does not report them as failures.

### Fix, and why it is not applied yet

`set -o pipefail` around the pipeline (or `PIPESTATUS[0]`) makes the gate
do what the comment says. Applied today, it turns dalek-lite's runner red on
its 38 `sorry` bodies. Whether that is right depends on the policy question
in #24 (sweep budgets versus default budgets for twin reconciliation), so it
is filed rather than fixed.

### Not a bug (closed on re-reading)

`run_example.sh` sets `set -euo pipefail` at line 38, so the pipeline's
status is `vrml_sync`'s, and `|| agg=1` does fire: a residual `sorry` makes
the acquisition run exit 1. This issue misread the pipeline. The practical
consequence runs the other way: dalek-lite's runner exits 1 while its twins
hold `sorry` bodies (38 now), which is the documented partial status. The
question of which budget profile should decide twin `sorry`s stays in #24.
