---
title: Watch mode judges the export of an earlier run, so an edit to a false postcondition still verifies
labels: [bug]
state: closed
github: 52
---

*Evidence level: executed; found while moving `vrml_watch` to the
home/project split; fixed in the same session.*

```rust
fn increment(x: u32) -> (y: u32)
    requires x < 100,
    ensures y == x + 1,
{
    x + 1
}
```

Verify the file once with `run_example.sh`, change the postcondition to
`y == x + 2`, and let watch mode judge it:

```
[vermilion watch] 2 changed obligation(s): watched.increment.assert_0, watched.increment.ensures_1
✓ all 2 obligations in .vermilion/watch-stale/generated/watched/ (per-function units) verified by Lean — 2 newly checked. 🎉
[vermilion watch] all changed obligations verified [1726ms]
```

The edited function does not satisfy its postcondition. On a file that
never went through `run_example.sh` the same command fails instead:

```
Error: "…/vermilion_direct failed:\nError: \"cannot open VIR export .vermilion/watched-vir.bin: No such file or directory (os error 2)\"\n"
```

### Cause

`vrml_watch` asked the front end for the export through
`VERMILION_VIR_EXPORT`. The hook has been `VERUS_VIR_EXPORT` since it
moved into the Verus fork, which every other caller uses. The front end
therefore exported nothing, and the adapter read whatever
`.vermilion/<stem>-vir.bin` an earlier `run_example.sh` had left: watch
mode regenerated and judged the obligations of that older text on every
save. The front end runs with `--no-verify`, so nothing else noticed.

No suite phase ran watch mode.

### Fix

`vrml_watch` sets `VERUS_VIR_EXPORT`.
`scripts/test_watch.sh`, in the suite's contract phase, runs one iteration
on a true postcondition, edits it to a false one, runs another, and
requires the second to fail. `vrml_watch.sh` passes `--once` through for
it.
