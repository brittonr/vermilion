import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.planned_results_are_unique

-- vrml:begin reclaim_plan.planned_results_are_unique.call_requires_0_0 759ce9a40ccd480c
/--
Generated VC `reclaim_plan.planned_results_are_unique.call_requires_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:705:9-706:48`
- Rust/SST construct: call planned_result_is_least_valid_plan
- AssertId: `0_0`
- Statement hash: `759ce9a40ccd480c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def call_requires_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 705
  startColumn := 9
  endLine := 706
  endColumn := 48
  assertId := "0_0"
  functionName := "reclaim_plan.planned_results_are_unique"
  kind := "call_requires"
  statementHash := "759ce9a40ccd480c"
}
@[vrml_obligation] theorem call_requires_0_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (other_retained : (Vermilion.Seq Prop))
    (other_candidate : (Vermilion.Seq Prop))
    (v : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_3 : reclaim_plan.retained_sound_spec edges roots retained)
    (requires_4 : reclaim_plan.plan_valid_spec n edges roots reclaimable other_retained other_candidate)
    (requires_5 : reclaim_plan.retained_sound_spec edges roots other_retained)
    (assume_6 : True)
    (assume_7 : (0 ≤ v) ∧ (v < n)) :
    reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.planned_results_are_unique.call_requires_0_0

-- vrml:begin reclaim_plan.planned_results_are_unique.call_requires_0_1 9a2dac1c532ed138
/--
Generated VC `reclaim_plan.planned_results_are_unique.call_requires_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:705:9-706:48`
- Rust/SST construct: call planned_result_is_least_valid_plan
- AssertId: `0_1`
- Statement hash: `9a2dac1c532ed138`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def call_requires_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 705
  startColumn := 9
  endLine := 706
  endColumn := 48
  assertId := "0_1"
  functionName := "reclaim_plan.planned_results_are_unique"
  kind := "call_requires"
  statementHash := "9a2dac1c532ed138"
}
@[vrml_obligation] theorem call_requires_0_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (other_retained : (Vermilion.Seq Prop))
    (other_candidate : (Vermilion.Seq Prop))
    (v : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_3 : reclaim_plan.retained_sound_spec edges roots retained)
    (requires_4 : reclaim_plan.plan_valid_spec n edges roots reclaimable other_retained other_candidate)
    (requires_5 : reclaim_plan.retained_sound_spec edges roots other_retained)
    (assume_6 : True)
    (assume_7 : (0 ≤ v) ∧ (v < n)) :
    reclaim_plan.retained_sound_spec edges roots retained := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.planned_results_are_unique.call_requires_0_1

-- vrml:begin reclaim_plan.planned_results_are_unique.call_requires_0_2 3e7314362aa4691a
/--
Generated VC `reclaim_plan.planned_results_are_unique.call_requires_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:705:9-706:48`
- Rust/SST construct: call planned_result_is_least_valid_plan
- AssertId: `0_2`
- Statement hash: `3e7314362aa4691a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def call_requires_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 705
  startColumn := 9
  endLine := 706
  endColumn := 48
  assertId := "0_2"
  functionName := "reclaim_plan.planned_results_are_unique"
  kind := "call_requires"
  statementHash := "3e7314362aa4691a"
}
@[vrml_obligation] theorem call_requires_0_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (other_retained : (Vermilion.Seq Prop))
    (other_candidate : (Vermilion.Seq Prop))
    (v : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_3 : reclaim_plan.retained_sound_spec edges roots retained)
    (requires_4 : reclaim_plan.plan_valid_spec n edges roots reclaimable other_retained other_candidate)
    (requires_5 : reclaim_plan.retained_sound_spec edges roots other_retained)
    (assume_6 : True)
    (assume_7 : (0 ≤ v) ∧ (v < n)) :
    reclaim_plan.plan_valid_spec n edges roots reclaimable other_retained other_candidate := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.planned_results_are_unique.call_requires_0_2

-- vrml:begin reclaim_plan.planned_results_are_unique.call_requires_0_3 f92e56cee929f460
/--
Generated VC `reclaim_plan.planned_results_are_unique.call_requires_0_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:705:9-706:48`
- Rust/SST construct: call planned_result_is_least_valid_plan
- AssertId: `0_3`
- Statement hash: `f92e56cee929f460`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def call_requires_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 705
  startColumn := 9
  endLine := 706
  endColumn := 48
  assertId := "0_3"
  functionName := "reclaim_plan.planned_results_are_unique"
  kind := "call_requires"
  statementHash := "f92e56cee929f460"
}
@[vrml_obligation] theorem call_requires_0_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (other_retained : (Vermilion.Seq Prop))
    (other_candidate : (Vermilion.Seq Prop))
    (v : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_3 : reclaim_plan.retained_sound_spec edges roots retained)
    (requires_4 : reclaim_plan.plan_valid_spec n edges roots reclaimable other_retained other_candidate)
    (requires_5 : reclaim_plan.retained_sound_spec edges roots other_retained)
    (assume_6 : True)
    (assume_7 : (0 ≤ v) ∧ (v < n)) :
    (0 ≤ v) ∧ (v < n) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.planned_results_are_unique.call_requires_0_3

-- vrml:begin reclaim_plan.planned_results_are_unique.call_requires_1_0 347b7168c0a04715
/--
Generated VC `reclaim_plan.planned_results_are_unique.call_requires_1_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:707:9-708:36`
- Rust/SST construct: call planned_result_is_least_valid_plan
- AssertId: `1_0`
- Statement hash: `347b7168c0a04715`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def call_requires_1_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 707
  startColumn := 9
  endLine := 708
  endColumn := 36
  assertId := "1_0"
  functionName := "reclaim_plan.planned_results_are_unique"
  kind := "call_requires"
  statementHash := "347b7168c0a04715"
}
@[vrml_obligation] theorem call_requires_1_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (other_retained : (Vermilion.Seq Prop))
    (other_candidate : (Vermilion.Seq Prop))
    (v : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_3 : reclaim_plan.retained_sound_spec edges roots retained)
    (requires_4 : reclaim_plan.plan_valid_spec n edges roots reclaimable other_retained other_candidate)
    (requires_5 : reclaim_plan.retained_sound_spec edges roots other_retained)
    (assume_6 : True)
    (assume_7 : (0 ≤ v) ∧ (v < n))
    (call_planned_result_is_least_valid_plan_ensures_0 : Vermilion.Seq.index retained v → Vermilion.Seq.index other_retained v)
    (call_planned_result_is_least_valid_plan_ensures_1 : Vermilion.Seq.index other_candidate v → Vermilion.Seq.index candidate v) :
    reclaim_plan.plan_valid_spec n edges roots reclaimable other_retained other_candidate := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.planned_results_are_unique.call_requires_1_0

-- vrml:begin reclaim_plan.planned_results_are_unique.call_requires_1_1 dd8bf5a35155735c
/--
Generated VC `reclaim_plan.planned_results_are_unique.call_requires_1_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:707:9-708:36`
- Rust/SST construct: call planned_result_is_least_valid_plan
- AssertId: `1_1`
- Statement hash: `dd8bf5a35155735c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def call_requires_1_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 707
  startColumn := 9
  endLine := 708
  endColumn := 36
  assertId := "1_1"
  functionName := "reclaim_plan.planned_results_are_unique"
  kind := "call_requires"
  statementHash := "dd8bf5a35155735c"
}
@[vrml_obligation] theorem call_requires_1_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (other_retained : (Vermilion.Seq Prop))
    (other_candidate : (Vermilion.Seq Prop))
    (v : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_3 : reclaim_plan.retained_sound_spec edges roots retained)
    (requires_4 : reclaim_plan.plan_valid_spec n edges roots reclaimable other_retained other_candidate)
    (requires_5 : reclaim_plan.retained_sound_spec edges roots other_retained)
    (assume_6 : True)
    (assume_7 : (0 ≤ v) ∧ (v < n))
    (call_planned_result_is_least_valid_plan_ensures_0 : Vermilion.Seq.index retained v → Vermilion.Seq.index other_retained v)
    (call_planned_result_is_least_valid_plan_ensures_1 : Vermilion.Seq.index other_candidate v → Vermilion.Seq.index candidate v) :
    reclaim_plan.retained_sound_spec edges roots other_retained := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.planned_results_are_unique.call_requires_1_1

-- vrml:begin reclaim_plan.planned_results_are_unique.call_requires_1_2 ee685c43bfdd79e7
/--
Generated VC `reclaim_plan.planned_results_are_unique.call_requires_1_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:707:9-708:36`
- Rust/SST construct: call planned_result_is_least_valid_plan
- AssertId: `1_2`
- Statement hash: `ee685c43bfdd79e7`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def call_requires_1_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 707
  startColumn := 9
  endLine := 708
  endColumn := 36
  assertId := "1_2"
  functionName := "reclaim_plan.planned_results_are_unique"
  kind := "call_requires"
  statementHash := "ee685c43bfdd79e7"
}
@[vrml_obligation] theorem call_requires_1_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (other_retained : (Vermilion.Seq Prop))
    (other_candidate : (Vermilion.Seq Prop))
    (v : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_3 : reclaim_plan.retained_sound_spec edges roots retained)
    (requires_4 : reclaim_plan.plan_valid_spec n edges roots reclaimable other_retained other_candidate)
    (requires_5 : reclaim_plan.retained_sound_spec edges roots other_retained)
    (assume_6 : True)
    (assume_7 : (0 ≤ v) ∧ (v < n))
    (call_planned_result_is_least_valid_plan_ensures_0 : Vermilion.Seq.index retained v → Vermilion.Seq.index other_retained v)
    (call_planned_result_is_least_valid_plan_ensures_1 : Vermilion.Seq.index other_candidate v → Vermilion.Seq.index candidate v) :
    reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.planned_results_are_unique.call_requires_1_2

-- vrml:begin reclaim_plan.planned_results_are_unique.call_requires_1_3 c0bfa193a1ff7783
/--
Generated VC `reclaim_plan.planned_results_are_unique.call_requires_1_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:707:9-708:36`
- Rust/SST construct: call planned_result_is_least_valid_plan
- AssertId: `1_3`
- Statement hash: `c0bfa193a1ff7783`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def call_requires_1_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 707
  startColumn := 9
  endLine := 708
  endColumn := 36
  assertId := "1_3"
  functionName := "reclaim_plan.planned_results_are_unique"
  kind := "call_requires"
  statementHash := "c0bfa193a1ff7783"
}
@[vrml_obligation] theorem call_requires_1_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (other_retained : (Vermilion.Seq Prop))
    (other_candidate : (Vermilion.Seq Prop))
    (v : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_3 : reclaim_plan.retained_sound_spec edges roots retained)
    (requires_4 : reclaim_plan.plan_valid_spec n edges roots reclaimable other_retained other_candidate)
    (requires_5 : reclaim_plan.retained_sound_spec edges roots other_retained)
    (assume_6 : True)
    (assume_7 : (0 ≤ v) ∧ (v < n))
    (call_planned_result_is_least_valid_plan_ensures_0 : Vermilion.Seq.index retained v → Vermilion.Seq.index other_retained v)
    (call_planned_result_is_least_valid_plan_ensures_1 : Vermilion.Seq.index other_candidate v → Vermilion.Seq.index candidate v) :
    (0 ≤ v) ∧ (v < n) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.planned_results_are_unique.call_requires_1_3

-- vrml:begin reclaim_plan.planned_results_are_unique.assert_2 94a145e281224743
/--
Generated VC `reclaim_plan.planned_results_are_unique.assert_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:704:46-704:116`
- Rust/SST construct: Rust source assertion
- AssertId: `2`
- Statement hash: `94a145e281224743`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 704
  startColumn := 46
  endLine := 704
  endColumn := 116
  assertId := "2"
  functionName := "reclaim_plan.planned_results_are_unique"
  kind := "assert"
  statementHash := "94a145e281224743"
}
@[vrml_obligation] theorem assert_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (other_retained : (Vermilion.Seq Prop))
    (other_candidate : (Vermilion.Seq Prop))
    (v : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_3 : reclaim_plan.retained_sound_spec edges roots retained)
    (requires_4 : reclaim_plan.plan_valid_spec n edges roots reclaimable other_retained other_candidate)
    (requires_5 : reclaim_plan.retained_sound_spec edges roots other_retained)
    (assume_6 : True)
    (assume_7 : (0 ≤ v) ∧ (v < n))
    (call_planned_result_is_least_valid_plan_ensures_0 : Vermilion.Seq.index retained v → Vermilion.Seq.index other_retained v)
    (call_planned_result_is_least_valid_plan_ensures_1 : Vermilion.Seq.index other_candidate v → Vermilion.Seq.index candidate v)
    (call_planned_result_is_least_valid_plan_1_ensures_0 : Vermilion.Seq.index other_retained v → Vermilion.Seq.index retained v)
    (call_planned_result_is_least_valid_plan_1_ensures_1 : Vermilion.Seq.index candidate v → Vermilion.Seq.index other_candidate v) :
    (Vermilion.Seq.index retained v ↔ Vermilion.Seq.index other_retained v) ∧ (Vermilion.Seq.index candidate v ↔ Vermilion.Seq.index other_candidate v) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.planned_results_are_unique.assert_2

-- vrml:begin reclaim_plan.planned_results_are_unique.ensures_3_0 cf41e949d1c976e2
/--
Generated VC `reclaim_plan.planned_results_are_unique.ensures_3_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:702:13-702:40`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3_0`
- Statement hash: `cf41e949d1c976e2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained v⟩ ⟨Vermilion.Seq.index other_retained v⟩ ⟨Vermilion.Seq.index candidate v⟩ ⟨Vermilion.Seq.index other_candidate v⟩
-/
def ensures_3_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 702
  startColumn := 13
  endLine := 702
  endColumn := 40
  assertId := "3_0"
  functionName := "reclaim_plan.planned_results_are_unique"
  kind := "ensures"
  statementHash := "cf41e949d1c976e2"
}
@[vrml_obligation] theorem ensures_3_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (other_retained : (Vermilion.Seq Prop))
    (other_candidate : (Vermilion.Seq Prop))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_3 : reclaim_plan.retained_sound_spec edges roots retained)
    (requires_4 : reclaim_plan.plan_valid_spec n edges roots reclaimable other_retained other_candidate)
    (requires_5 : reclaim_plan.retained_sound_spec edges roots other_retained)
    (assume_6 : (∀ (v : Int), (((0 ≤ v) ∧ (v < n)) → ((Vermilion.Seq.index retained v ↔ Vermilion.Seq.index other_retained v) ∧ (Vermilion.Seq.index candidate v ↔ Vermilion.Seq.index other_candidate v))))) :
    retained = other_retained := by
  obtain ⟨⟨⟨⟨⟨_, hl1⟩, _⟩, _⟩, _⟩, _⟩ := requires_2
  obtain ⟨⟨⟨⟨⟨_, hl2⟩, _⟩, _⟩, _⟩, _⟩ := requires_4
  apply Vermilion.Seq.ext (by rw [hl1, hl2])
  intro v hv0 hv1
  exact propext (assume_6 v ⟨hv0, by omega⟩).1
-- vrml:end reclaim_plan.planned_results_are_unique.ensures_3_0

-- vrml:begin reclaim_plan.planned_results_are_unique.ensures_3_1 63080cdfb8ea00ce
/--
Generated VC `reclaim_plan.planned_results_are_unique.ensures_3_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:702:42-702:71`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3_1`
- Statement hash: `63080cdfb8ea00ce`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained v⟩ ⟨Vermilion.Seq.index other_retained v⟩ ⟨Vermilion.Seq.index candidate v⟩ ⟨Vermilion.Seq.index other_candidate v⟩
-/
def ensures_3_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 702
  startColumn := 42
  endLine := 702
  endColumn := 71
  assertId := "3_1"
  functionName := "reclaim_plan.planned_results_are_unique"
  kind := "ensures"
  statementHash := "63080cdfb8ea00ce"
}
@[vrml_obligation] theorem ensures_3_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (other_retained : (Vermilion.Seq Prop))
    (other_candidate : (Vermilion.Seq Prop))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_3 : reclaim_plan.retained_sound_spec edges roots retained)
    (requires_4 : reclaim_plan.plan_valid_spec n edges roots reclaimable other_retained other_candidate)
    (requires_5 : reclaim_plan.retained_sound_spec edges roots other_retained)
    (assume_6 : (∀ (v : Int), (((0 ≤ v) ∧ (v < n)) → ((Vermilion.Seq.index retained v ↔ Vermilion.Seq.index other_retained v) ∧ (Vermilion.Seq.index candidate v ↔ Vermilion.Seq.index other_candidate v))))) :
    candidate = other_candidate := by
  obtain ⟨⟨⟨⟨_, hl1⟩, _⟩, _⟩, _⟩ := requires_2
  obtain ⟨⟨⟨⟨_, hl2⟩, _⟩, _⟩, _⟩ := requires_4
  apply Vermilion.Seq.ext (by rw [hl1, hl2])
  intro v hv0 hv1
  exact propext (assume_6 v ⟨hv0, by omega⟩).2
-- vrml:end reclaim_plan.planned_results_are_unique.ensures_3_1

end reclaim_plan.planned_results_are_unique

