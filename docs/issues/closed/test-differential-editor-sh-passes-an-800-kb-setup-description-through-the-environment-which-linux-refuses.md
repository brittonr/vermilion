---
title: "test_differential_editor.sh passes an 800 KB setup description through the environment, which Linux refuses"
labels: [bug]
state: closed
github: 32
---

*Evidence level: reproduced on Linux at the pinned Lean 4.33.0; fixed in
the same session.*

`check_setup` kept `lake setup-file`'s JSON in a shell variable and handed
it to its Python checker as `SETUP_JSON` in the environment. For a unit
that imports a sibling `Specs` module the description lists the whole
import closure: 1120 modules, 0.7–0.8 MB for
`generated.keccak_iota.impl__6_index`. Linux fails `execve` when one
argument or environment string exceeds 128 KiB:

```
scripts/test_differential_editor.sh: line 33: python3: Argument list too long
```

The script exits 126 there, so neither `./scripts/run_suite.sh
--differential` nor the full suite, whose last step this is, could finish
green on Linux. CI does not run the script.

### Fix

The checker's program is passed with `-c` and the description is piped to
its stdin. No assertion changed.

With that fixed the guard reached its fresh proof root and failed there for
a separate reason, the Lake shim's stale configuration path (tracked
separately). With both fixed it passes, cold and warm.

### Not addressed

The guard also reads
`case-studies/aeneas/probes/generated/keccak_iota/`, an untracked artifact
that no suite phase produces. On a checkout that never ran that probe it
still fails, with `bad import 'generated.keccak_iota.Specs'`.
