#!/usr/bin/env bash
# Lean-side vacuity report over the differential corpus (issue #16): every
# obligation whose hypotheses alone prove False must be on the inspected
# allowlist of dead code. Run after run_differential.py (it judges the
# corpus's generated manifests in place).
set -euo pipefail
repository="$(cd "$(dirname "$0")/.." && pwd)"
cd "$repository"
allow=tests/differential/vacuity-allowlist.txt
status=0
for manifest in tests/differential/generated/*.json; do
  ./target/debug/vrml_check "$manifest" --vacuity --vacuity-allow "$allow" \
    >/dev/null 2>".vermilion/vacuity-$(basename "$manifest" .json).log" || {
    cat ".vermilion/vacuity-$(basename "$manifest" .json).log" >&2
    status=1
  }
done
[[ "$status" -eq 0 ]] && echo "vacuity: every vacuous corpus obligation is allowlisted dead code"
exit "$status"
