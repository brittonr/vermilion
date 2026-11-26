---
title: Shared definitions olean is reused after the library changes
labels: [bug]
state: closed
github: 39
---

`vrml_check` caches the compiled `Specs`/`Evidence` module and reuses it
when a `.vrml-src` stamp matches. The stamp held only the module's source
path and text. When the Vermilion library changed underneath (a lemma
added or removed, a tactic changed), the old olean was reused, so a
definition whose termination proof the current library no longer closes
kept reading as verified. `--clean-env` did not help: generated modules
compile into `.lake/build/lib/lean/generated/…`, which it leaves alone.

Observed while landing `Seq.len_dropLast_lt`: corpus case c215 passed
against the library *without* the lemma, from the olean compiled with it.
After deleting the olean, the same run failed as expected.

**Fix.** The stamp now also records an imports fingerprint: for each
`import`, Lake's transitive `depHash` from the imported module's
`.trace`, or the stamp of a module the checker compiled itself. Any
library rebuild that changes what the module elaborates against forces a
recompile. Existing stamps miss once and recompile.
