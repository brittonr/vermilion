#!/usr/bin/env bash
# Terrane's reclaim-plan kernel (OnixResearch/terrane @ 5aec06f,
# src/reclaim_plan/verified.rs without its cfg(test) modules), verbatim.
# It decides which store paths a garbage collector may delete, and Mantle
# runs its `project_keys`, `key_mask`, and `check_plan` before every GC.
# Verus (0.2026.05.17) verifies all 75 of its functions; this study checks
# the same source with Lean as the only verifier.
#
# Status (2026-11-16, per-function emission): 617 obligations, including
# the class dictionary `reclaim_plan.key_lt.evidence_decidable_prop` in
# proofs/reclaim_plan/Evidence.lean. The `vrml` automation closes 482; the
# other 135 are proved by hand in the proofs/reclaim_plan/ twin, which has
# no `sorry` left. Hence `--manual-proofs`. See README.md.
exec "$(cd "$(dirname "$0")/../.." && pwd)/scripts/run_example.sh" \
  "$(dirname "$0")" reclaim_plan.rs --lib CaseTerraneReclaimPlan --manual-proofs "$@"
