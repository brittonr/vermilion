#!/usr/bin/env bash
# Guard the Lake/editor view of generated modules and proof twins. Direct
# checkers can supply temporary LEAN_PATH values, but the Lean language server
# learns module roots from `lake setup-file`; a missing root can therefore work
# in CI while its sibling Specs import remains red in the editor.
set -euo pipefail

repository="$(cd "$(dirname "$0")/.." && pwd)"
cd "$repository"
editor_lake="${VRML_EDITOR_LAKE:-$repository/editor/bin/lake}"

setup_file() {
  local header direct_import="${2:-}"
  if [[ -n "$direct_import" ]]; then
    printf -v header \
      '{"imports":[{"module":"%s","importAll":false,"isExported":true,"isMeta":false}],"isModule":false}' \
      "$direct_import"
  else
    header='{"imports":[],"isModule":false}'
  fi
  # Match Lean's file worker, including the flags that originally let a
  # no-build editor setup omit a newly generated sibling Specs module.
  "$editor_lake" setup-file "$1" - --no-build --no-cache <<< "$header"
}

# The check reads `lake setup-file`'s description on stdin. For a module that
# imports Mathlib it runs to hundreds of kilobytes, and Linux refuses to exec
# a process handed one environment string over 128 KiB ("Argument list too
# long"), so the description must not travel in the environment.
check_setup_program() {
  cat <<'PY'
import json
import os
import sys

lines = [line for line in sys.stdin.read().splitlines() if line.startswith("{")]
if not lines:
    raise SystemExit("lake setup-file did not return its JSON description")
setup = json.loads(lines[-1])
if setup.get("name") != os.environ["EXPECTED_NAME"]:
    raise SystemExit(f"Lake still treats the module as {setup.get('name')!r}")
expected = os.environ["EXPECTED_IMPORT"]
if expected and expected not in setup.get("importArts", {}):
    raise SystemExit(f"Lake did not resolve the Specs import {expected}")
unexpected = os.environ["UNEXPECTED_IMPORT"]
if unexpected and unexpected in setup.get("importArts", {}):
    raise SystemExit(f"Lake reused a setup cached for the old header: {unexpected}")
PY
}

check_setup() {
  local module_file="$1"
  local expected_name="$2"
  local expected_import="${3:-}"
  local unexpected_import="${4:-}"
  setup_file "$module_file" "$expected_import" \
    | EXPECTED_NAME="$expected_name" EXPECTED_IMPORT="$expected_import" \
      UNEXPECTED_IMPORT="$unexpected_import" python3 -c "$(check_setup_program)"
}

# The SHA-3 unit pinned below is generated output of a probe that no suite
# phase runs. Produce it when this checkout has none: front end, adapter and
# generator only. Nothing is judged and no proof twin is reconciled, so the
# only writes under case-studies/aeneas/ go to its gitignored generated/
# directory — the one exception its owner made to that folder being
# read-only (.claude/memory/editor-guard-generates-keccak-probe.md).
probe_dir="case-studies/aeneas/probes"
if [[ ! -e "$probe_dir/generated/keccak_iota/impl__6_index.lean" ]]; then
  ./scripts/setup_verus.sh >/dev/null
  source "$repository/scripts/verus_env.sh"
  (cd crates/vermilion_direct && rustup run "$verus_toolchain" cargo build --release --quiet)
  lake build vrml_gen >/dev/null
  mkdir -p .vermilion
  VERUS_VIR_EXPORT="$repository/.vermilion/keccak_iota-vir.bin" "$verus" \
    "$probe_dir/keccak_iota.rs" --crate-type=lib --no-verify \
    >/dev/null 2>.vermilion/keccak_iota-frontend.log \
    || { cat .vermilion/keccak_iota-frontend.log >&2; exit 1; }
  ./crates/vermilion_direct/target/release/vermilion_direct \
    .vermilion/keccak_iota-vir.bin --out .vermilion/keccak_iota-ir.sexp >/dev/null
  ./.lake/build/bin/vrml_gen .vermilion/keccak_iota-ir.sexp >/dev/null
fi

# Prime Lake without relying on a numbered corpus case. The fresh proof root
# below is created only after this compiled configuration exists. Pin the
# reported SHA-3 failure first: this generated file does not live under the
# differential tree, so it catches a single-root generated-library mistake.
check_setup "lean/Vermilion/Obligations.lean" "Vermilion.Obligations"
check_setup \
  "$probe_dir/generated/keccak_iota/impl__6_index.lean" \
  "generated.keccak_iota.impl__6_index" \
  "generated.keccak_iota.Specs"

fresh_generated="examples/m1-pipeline/generated/c999_editor_fresh_specs"
fresh_proof="examples/m1-pipeline/proofs/c999_editor_fresh_specs"
if [[ -e "$fresh_generated" || -e "$fresh_proof" ]]; then
  echo "editor-resolution scratch fixture already exists" >&2
  exit 1
fi
cleanup() { rm -rf "$fresh_generated" "$fresh_proof"; }
trap cleanup EXIT
mkdir -p "$fresh_generated" "$fresh_proof"
cat > "$fresh_generated/Specs.lean" <<'EOF'
import Vermilion.Obligations

def c999_editor_fresh_specs.answer : Int := 42
EOF
cat > "$fresh_generated/fresh.lean" <<'EOF'
import Vermilion.Obligations
import generated.c999_editor_fresh_specs.Specs

example : c999_editor_fresh_specs.answer = 42 := by rfl
EOF
cat > "$fresh_proof/Specs.lean" <<'EOF'
import Vermilion.Obligations

def c999_editor_fresh_specs.answer : Int := 42
EOF
cat > "$fresh_proof/fresh.lean" <<'EOF'
import Vermilion.Obligations
import c999_editor_fresh_specs.Specs

example : c999_editor_fresh_specs.answer = 42 := by rfl
EOF

check_setup \
  "$fresh_generated/fresh.lean" \
  "generated.c999_editor_fresh_specs.fresh" \
  "generated.c999_editor_fresh_specs.Specs"
check_setup \
  "$fresh_generated/Specs.lean" \
  "generated.c999_editor_fresh_specs.Specs"
check_setup \
  "$fresh_proof/fresh.lean" \
  "c999_editor_fresh_specs.fresh" \
  "c999_editor_fresh_specs.Specs"
# The path/flags are identical, but the supplied module header has changed.
# This pins the stdin header as part of the editor setup cache identity.
check_setup \
  "$fresh_proof/fresh.lean" \
  "c999_editor_fresh_specs.fresh" \
  "" \
  "c999_editor_fresh_specs.Specs"
check_setup "$fresh_proof/Specs.lean" "c999_editor_fresh_specs.Specs"

# Leave Lake's compiled root list consistent after the scratch root disappears.
cleanup
trap - EXIT
check_setup "lean/Vermilion/Obligations.lean" "Vermilion.Obligations"
check_setup \
  "$probe_dir/generated/keccak_iota/impl__6_index.lean" \
  "generated.keccak_iota.impl__6_index" \
  "generated.keccak_iota.Specs"

echo "future generated/proof Specs imports are automatically Lake/editor-resolvable"
