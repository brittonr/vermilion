#!/usr/bin/env bash
# `vrml_first`, the attempt combinator for obligations that unfold recursive
# spec fns (docs/vcgen.md): later alternatives win after earlier failures,
# goals left open count as failure, heartbeat exhaustion does not starve the
# next alternative, and the last alternative's own error is reported.
set -euo pipefail

repository="$(cd "$(dirname "$0")/.." && pwd)"
cd "$repository"

lake build Vermilion >/dev/null
lake env lean tests/vrml_first.lean

echo "vrml_first: fresh heartbeat baseline per alternative; last alternative's error reported"
