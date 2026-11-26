#!/usr/bin/env bash
# Vermilion's watch mode, run on this project (written by `vrml init`); see
# run_example.sh beside this file.
project="$(cd "$(dirname "$0")/.." && pwd)"
exec "$project/.vermilion/home/scripts/vrml_watch.sh" "$@" --project-root "$project"
