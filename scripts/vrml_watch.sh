#!/usr/bin/env bash
# Watch mode: keep one Rust source verified as you edit it.
#   scripts/vrml_watch.sh <example-dir> <source.rs> [--project-root <dir>] [--once]
#
# Reruns the front half on every save and has Lean re-judge only the
# obligations whose statement hash changed (manifest fingerprints), for a
# fast edit loop. Diagnostics land on Rust spans, exactly like vrml_check.
# --project-root is as in run_example.sh; --once runs a single iteration.
set -euo pipefail

example_dir="$(cd "$1" && pwd -P)"
source_file="$2"
shift 2
project=""
watch_flags=()
while [[ $# -gt 0 ]]; do
  case "$1" in
    --project-root) project="$(cd "$2" && pwd -P)"; shift 2 ;;
    *) watch_flags+=("$1"); shift ;;
  esac
done

home="$(cd "$(dirname "$0")/.." && pwd -P)"
project="${project:-$home}"
cd "$project"
relative_dir="${example_dir#"$project"/}"
if [[ "$relative_dir" == /* ]]; then
  echo "$example_dir is outside the project root $project" >&2
  exit 2
fi

source "$home/scripts/home_env.sh"
vrml_build_rust_tools
vrml_build_lean_tools
mkdir -p .vermilion

exec "$vrml_watch" "$relative_dir/$source_file" \
  --verus "$verus" \
  --direct "$vermilion_direct" \
  --vrml-gen "$vrml_gen" \
  ${watch_flags[@]+"${watch_flags[@]}"}
