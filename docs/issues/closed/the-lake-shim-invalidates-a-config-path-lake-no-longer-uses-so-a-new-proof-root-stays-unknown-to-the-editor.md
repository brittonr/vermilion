---
title: "The Lake shim invalidates a config path Lake no longer uses, so a new proof root stays unknown to the editor"
labels: [bug, vscode-extension]
state: closed
github: 33
---

*Evidence level: reproduced at the pinned Lean 4.33.0; fixed in the same
session.*

Proof-twin roots are discovered while `lakefile.lean` elaborates
(`discoverProofRoots`), so they are not part of the configuration hash:
Lake sees a new first-level root under a `proofs/` directory only once the
root package's compiled configuration is rebuilt. `editor/bin/lake` forces
that by deleting the compiled configuration when the set of proof roots
changes — at `.lake/config/[anonymous]/lakefile.olean`.

Lake keeps it at `.lake/config/<pkgIdx>/lakefile.olean`
(`LoadConfig.configDir`; the root package is index 0; the same in 4.31,
4.33 and 4.35). The delete was a no-op, and `lake setup-file` kept
answering from the root list of the last elaboration.

`scripts/test_differential_editor.sh` is the guard for this. Once it could
run on Linux (#32) it failed at its fresh proof root:

```
Lake still treats the module as '_unknown'
```

for `examples/m1-pipeline/proofs/c999_editor_fresh_specs/fresh.lean`. In
the editor that is a new twin whose module name and sibling `Specs` import
do not resolve until something else rebuilds the configuration.

### Fix

The shim removes `.lake/config/0/lakefile.olean` and its trace. The guard
passes, cold and warm.
