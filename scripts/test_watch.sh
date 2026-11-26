#!/usr/bin/env bash
# Watch mode judges the file as it is now.
#
# One iteration on a function whose postcondition holds, an edit that makes
# it false, one more iteration: the second must report the failure. A watch
# that hands the adapter the export of an earlier run instead of the one for
# this text keeps reporting the first verdict.
set -euo pipefail

repository="$(cd "$(dirname "$0")/.." && pwd -P)"
cd "$repository"

workdir=".vermilion/watch-test"
rm -rf "$workdir" .vermilion/watched-*
mkdir -p "$workdir"

fail() { echo "watch mode FAILED: $1" >&2; cat "$workdir"/*.log >&2; exit 1; }

write_source() { # the claimed result
  cat > "$workdir/watched.rs" <<EOF
use verus_builtin::*;
use verus_builtin_macros::*;

verus! {

fn increment(x: u32) -> (y: u32)
    requires x < 100,
    ensures y == $1,
{
    x + 1
}

} // verus!
EOF
}

write_source "x + 1"
./scripts/vrml_watch.sh "$workdir" watched.rs --once > "$workdir/first.log" 2>&1 \
  || fail "the first iteration did not run"
grep -q "all changed obligations verified" "$workdir/first.log" \
  || fail "a true postcondition was not verified"

write_source "x + 2"
./scripts/vrml_watch.sh "$workdir" watched.rs --once > "$workdir/second.log" 2>&1 \
  || fail "the second iteration did not run"
grep -q "obligations failed" "$workdir/second.log" \
  || fail "the edit to a false postcondition was not judged"

rm -rf "$workdir" .vermilion/watched-*
echo "watch mode: an edit is exported, lowered and judged again"
