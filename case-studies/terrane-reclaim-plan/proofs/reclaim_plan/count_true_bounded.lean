import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.count_true_bounded

-- vrml:begin reclaim_plan.count_true_bounded.call_requires_0 d458361ba9b42bf8
/--
Generated VC `reclaim_plan.count_true_bounded.call_requires_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:373:5-373:47`
- Rust/SST construct: call count_true_upto_bounded
- AssertId: `0`
- Statement hash: `d458361ba9b42bf8`
-/
def call_requires_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 373
  startColumn := 5
  endLine := 373
  endColumn := 47
  assertId := "0"
  functionName := "reclaim_plan.count_true_bounded"
  kind := "call_requires"
  statementHash := "d458361ba9b42bf8"
}
@[vrml_obligation] theorem call_requires_0
    (s : (Vermilion.Seq Prop)) :
    (0 ≤ Vermilion.Seq.len s) ∧ (Vermilion.Seq.len s ≤ Vermilion.Seq.len s) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.count_true_bounded.call_requires_0

-- vrml:begin reclaim_plan.count_true_bounded.ensures_1 3f2c4d2eb92c98f3
/--
Generated VC `reclaim_plan.count_true_bounded.ensures_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:371:13-371:37`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1`
- Statement hash: `3f2c4d2eb92c98f3`
-/
def ensures_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 371
  startColumn := 13
  endLine := 371
  endColumn := 37
  assertId := "1"
  functionName := "reclaim_plan.count_true_bounded"
  kind := "ensures"
  statementHash := "3f2c4d2eb92c98f3"
}
@[vrml_obligation] theorem ensures_1
    (s : (Vermilion.Seq Prop))
    (call_count_true_upto_bounded_ensures_0 : reclaim_plan.count_true_upto s (Vermilion.Seq.len s) ≤ Vermilion.Seq.len s) :
    reclaim_plan.count_true s ≤ Vermilion.Seq.len s := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.count_true_bounded.ensures_1

end reclaim_plan.count_true_bounded

