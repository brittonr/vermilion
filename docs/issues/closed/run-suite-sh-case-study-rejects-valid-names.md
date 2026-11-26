---
title: run_suite.sh --case-study rejects valid names (pipeline status of the name listing under grep -q)
labels: [bug]
state: closed
github: 49
---

*Evidence level: observed on Linux (bash 5.3, GNU grep) while running each
case study by name; reproduced in isolation; fixed in the same session.*

```console
$ ./scripts/run_suite.sh --case-study binary-search
unknown case study: binary-search
valid names:
binary-search
dalek-lite
…
```

Ten of the eleven names tried were refused this way, each in under a
second and with exit status 2. Nothing was verified.

The membership test was

```bash
if ! studies | grep -qx "$target_study"; then
```

under `set -o pipefail`. `grep -q` leaves at the first match. `studies`
prints one name per directory and is still writing: its next write hits a
closed pipe, the listing dies of `SIGPIPE`, and `pipefail` reports the
pipeline as failed. The `!` turns that into "unknown case study". Only a
name at the end of the list is safe, and which of the others pass depends
on scheduling:

| name | pipeline, three runs | fixed |
|---|---|---|
| `binary-search` | known, unknown, unknown | known |
| `percolator` | unknown ×3 | known |
| `vec-uninterp` | unknown ×3 | known |
| `aeneas/sha3` (last) | known ×3 | known |

The name was also matched as a regular expression. `--case-study '.*'`
passes the test whenever the race goes the other way, finds no runner, and
reports `case study .* passed`.

`scripts/setup_verus.sh` already avoids `strings | grep -q` for the same
reason.

### Fix

The listing is read completely before it is searched, and the name is
matched as a fixed string:

```bash
if ! grep -qxF -- "$target_study" <<< "$(studies)"; then
```
