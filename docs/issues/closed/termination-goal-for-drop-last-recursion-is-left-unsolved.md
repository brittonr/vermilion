---
title: Termination goal for drop_last recursion is left unsolved
labels: [bug, vcgen]
state: closed
github: 40
---

A spec fn that recurses through `s.drop_last()` under `decreases s.len()`,
guarded by `if s.len() == 0`, is emitted as a Lean definition whose
`decreasing_by` goal is

```
_h : ¬s.len = 0
⊢ s.dropLast.len < s.len
```

`Seq.len_dropLast` needs `0 < s.len`, which `simp_all` cannot discharge from
`¬s.len = 0` alone (the `0 ≤ s.len` guard is simplified away by
`len_nonneg`), so every rung of the termination ladder fails and the shared
`Specs` module does not compile. Every obligation of the file then fails,
including ones that never mention the function.

Found by the forecast-kernel acquisition (`spread::seq_sum`), where it took
all 121 obligations down.

**Fix.** `Seq.len_dropLast_lt (h : s.len ≠ 0) : s.dropLast.len < s.len`
in `Vermilion/Vstd/SeqLib.lean`, tagged `@[simp]`, closes the goal directly
from the guard. Library-only (no change to VC generation or rendering).
Corpus: c215 (the shape, passes) and c216 (same definition, false fact,
rejected at its span).
