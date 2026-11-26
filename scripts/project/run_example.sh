#!/usr/bin/env bash
# Vermilion's driver, run on this project (written by `vrml init`). The
# tools and the Lean library are those of the Vermilion the project was set
# up for, reached through the .vermilion/home link; run_example.sh there
# documents the options.
project="$(cd "$(dirname "$0")/.." && pwd)"
exec "$project/.vermilion/home/scripts/run_example.sh" "$@" --project-root "$project"
