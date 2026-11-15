import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.count_true_set

-- vrml:begin reclaim_plan.count_true_set.call_requires_0_0 d4e16f1bc618dae2
/--
Generated VC `reclaim_plan.count_true_set.call_requires_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:391:5-391:46`
- Rust/SST construct: call count_true_upto_set
- AssertId: `0_0`
- Statement hash: `d4e16f1bc618dae2`
-/
def call_requires_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 391
  startColumn := 5
  endLine := 391
  endColumn := 46
  assertId := "0_0"
  functionName := "reclaim_plan.count_true_set"
  kind := "call_requires"
  statementHash := "d4e16f1bc618dae2"
}
@[vrml_obligation] theorem call_requires_0_0
    (s : (Vermilion.Seq Prop))
    (i : Int)
    (requires_0 : (0 ≤ i) ∧ (i < Vermilion.Seq.len s))
    (requires_1 : (¬ Vermilion.Seq.index s i)) :
    (0 ≤ i) ∧ (i < Vermilion.Seq.len s) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.count_true_set.call_requires_0_0

-- vrml:begin reclaim_plan.count_true_set.call_requires_0_1 c185c7c654eb4f45
/--
Generated VC `reclaim_plan.count_true_set.call_requires_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:391:5-391:46`
- Rust/SST construct: call count_true_upto_set
- AssertId: `0_1`
- Statement hash: `c185c7c654eb4f45`
-/
def call_requires_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 391
  startColumn := 5
  endLine := 391
  endColumn := 46
  assertId := "0_1"
  functionName := "reclaim_plan.count_true_set"
  kind := "call_requires"
  statementHash := "c185c7c654eb4f45"
}
@[vrml_obligation] theorem call_requires_0_1
    (s : (Vermilion.Seq Prop))
    (i : Int)
    (requires_0 : (0 ≤ i) ∧ (i < Vermilion.Seq.len s))
    (requires_1 : (¬ Vermilion.Seq.index s i)) :
    (¬ Vermilion.Seq.index s i) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.count_true_set.call_requires_0_1

-- vrml:begin reclaim_plan.count_true_set.call_requires_0_2 3e750c3e70bd755f
/--
Generated VC `reclaim_plan.count_true_set.call_requires_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:391:5-391:46`
- Rust/SST construct: call count_true_upto_set
- AssertId: `0_2`
- Statement hash: `3e750c3e70bd755f`
-/
def call_requires_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 391
  startColumn := 5
  endLine := 391
  endColumn := 46
  assertId := "0_2"
  functionName := "reclaim_plan.count_true_set"
  kind := "call_requires"
  statementHash := "3e750c3e70bd755f"
}
@[vrml_obligation] theorem call_requires_0_2
    (s : (Vermilion.Seq Prop))
    (i : Int)
    (requires_0 : (0 ≤ i) ∧ (i < Vermilion.Seq.len s))
    (requires_1 : (¬ Vermilion.Seq.index s i)) :
    (0 ≤ Vermilion.Seq.len s) ∧ (Vermilion.Seq.len s ≤ Vermilion.Seq.len s) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.count_true_set.call_requires_0_2

-- vrml:begin reclaim_plan.count_true_set.ensures_1 f8304edf78920623
/--
Generated VC `reclaim_plan.count_true_set.ensures_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:389:13-389:63`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1`
- Statement hash: `f8304edf78920623`
-/
def ensures_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 389
  startColumn := 13
  endLine := 389
  endColumn := 63
  assertId := "1"
  functionName := "reclaim_plan.count_true_set"
  kind := "ensures"
  statementHash := "f8304edf78920623"
}
@[vrml_obligation] theorem ensures_1
    (s : (Vermilion.Seq Prop))
    (i : Int)
    (requires_0 : (0 ≤ i) ∧ (i < Vermilion.Seq.len s))
    (requires_1 : (¬ Vermilion.Seq.index s i))
    (call_count_true_upto_set_ensures_0 : reclaim_plan.count_true_upto (Vermilion.Seq.update s i True) (Vermilion.Seq.len s) = Vermilion.natClip (reclaim_plan.count_true_upto s (Vermilion.Seq.len s) + (Vermilion.iteP (i < Vermilion.Seq.len s) 1 0))) :
    reclaim_plan.count_true (Vermilion.Seq.update s i True) = Vermilion.natClip (reclaim_plan.count_true s + 1) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.count_true_set.ensures_1

end reclaim_plan.count_true_set

