#!/usr/bin/env bash
# A twin proof survives an obligation rename that leaves its statement
# unchanged (issue #20): adding a statement above a `by (bit_vector)` assert
# renumbers its obligation, and vrml_sync must carry the user's proof over
# to the new name instead of dropping it.
set -euo pipefail

repository="$(cd "$(dirname "$0")/.." && pwd)"
cd "$repository"

workdir="$(mktemp -d "$repository/.vermilion/twin-rename.XXXXXX")"
trap 'rm -rf "$workdir"' EXIT
source_file="renamed.rs"

write_source() { # extra-statement
  cat > "$workdir/$source_file" <<RUST
use vstd::prelude::*;
verus! {
fn f(x: u32) {
$1
    assert(x & 0u32 == 0u32) by (bit_vector);
}
}
RUST
}

write_source ""
./scripts/run_example.sh "$workdir" "$source_file" >"$workdir/first.log" 2>&1
twin="$workdir/proofs/renamed/f.lean"
old_name="$(sed -n 's/^-- vrml:begin \(renamed\.f\.assert_bv_[0-9_]*\) .*/\1/p' "$twin")"
[[ -n "$old_name" ]] || { cat "$twin" >&2; echo "no bit-vector block" >&2; exit 1; }

# Turn the machine attempt into a "user" proof: a marker line ahead of it.
python3 - "$twin" "$old_name" <<'PY'
import re, sys
path, name = sys.argv[1], sys.argv[2]
text = open(path).read()
block = re.search(r"-- vrml:begin " + re.escape(name) + r" .*?-- vrml:end " + re.escape(name), text, re.S).group(0)
edited = block.replace(":= by\n", ":= by\n  have _user_marker : True := trivial\n", 1)
assert edited != block
open(path, "w").write(text.replace(block, edited))
PY

write_source "    assert(1u32 + 1u32 == 2u32);"
./scripts/run_example.sh "$workdir" "$source_file" >"$workdir/second.log" 2>&1
new_name="$(sed -n 's/^-- vrml:begin \(renamed\.f\.assert_bv_[0-9_]*\) .*/\1/p' "$twin")"
[[ "$new_name" != "$old_name" ]] || {
  echo "the extra statement did not rename the bit-vector obligation ($old_name)" >&2; exit 1; }
grep -q "_user_marker" "$twin" || {
  cat "$workdir/second.log" >&2; echo "the user proof was dropped on rename" >&2; exit 1; }
grep -q "carried over to \`$new_name\`" "$workdir/second.log" || {
  cat "$workdir/second.log" >&2; echo "no carried-over warning" >&2; exit 1; }
echo "twin rename: the proof for $old_name survived as $new_name"
