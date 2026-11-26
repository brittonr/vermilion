#!/usr/bin/env bash
# A project outside the repository gets what the repository gets.
#
# One example is verified twice with the tools of this checkout: where it
# lives, and as a copy in a fresh project that `vrml init` set up in a
# temporary directory. Both runs must reach the same verdict, emit the same
# generated modules and manifest (so the same statement hashes), and leave
# the example's hand-written proofs twins as they are checked in. Nothing the
# project run emits may name where the project is.
set -euo pipefail

repository="$(cd "$(dirname "$0")/.." && pwd -P)"
cd "$repository"

example=examples/m2-loops
stem=looping

fail() { echo "standalone project FAILED: $1" >&2; exit 1; }

project="$(mktemp -d)"
trap 'rm -rf "$project"' EXIT

"./$example/run.sh" > "$project/repository.log" 2>&1 \
  || { cat "$project/repository.log" >&2; fail "$example does not verify in the repository"; }
git diff --quiet -- "$example/proofs" \
  || fail "the repository run changed the tracked twins of $example"

./scripts/vrml init "$project" >/dev/null
mkdir -p "$project/$example"
cp -r "$example/$stem.rs" "$example/run.sh" "$example/proofs" "$project/$example/"
"$project/$example/run.sh" > "$project/project.log" 2>&1 \
  || { cat "$project/project.log" >&2; fail "the copy of $example does not verify in the project"; }

diff -r "$example/generated" "$project/$example/generated" \
  || fail "generated modules differ between the repository and the project"
diff -r "$example/proofs" "$project/$example/proofs" \
  || fail "proofs twins differ between the repository and the project"
cmp ".vermilion/$stem-run.json" "$project/.vermilion/$stem-run.json" \
  || fail "the recorded verdicts differ"
if grep -rlF -- "$project" "$project/$example" \
    "$project/.vermilion/$stem-run.json" "$project/.vermilion/$stem-check.json"; then
  fail "the artifacts listed above name the project's location"
fi

echo "standalone project: a copy of $example outside the repository gets the same verdict, generated modules, statement hashes and twins"
