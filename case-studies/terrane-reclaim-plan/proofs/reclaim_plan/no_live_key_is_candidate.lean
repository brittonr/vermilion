import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.no_live_key_is_candidate

-- vrml:begin reclaim_plan.no_live_key_is_candidate.call_requires_0_0 66acea189b379b0a
/--
Generated VC `reclaim_plan.no_live_key_is_candidate.call_requires_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:992:5-992:92`
- Rust/SST construct: call no_live_candidate
- AssertId: `0_0`
- Statement hash: `66acea189b379b0a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def call_requires_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 992
  startColumn := 5
  endLine := 992
  endColumn := 92
  assertId := "0_0"
  functionName := "reclaim_plan.no_live_key_is_candidate"
  kind := "call_requires"
  statementHash := "66acea189b379b0a"
}
@[vrml_obligation] theorem call_requires_0_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (v : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (requires_5 : reclaim_plan.projection_valid_spec keys refs root_keys edges roots)
    (requires_6 : reclaim_plan.plan_valid_spec (Vermilion.Seq.len keys) edges roots reclaimable retained candidate)
    (requires_7 : (0 ≤ v) ∧ (v < Vermilion.Seq.len keys))
    (requires_8 : Vermilion.Seq.index candidate v) :
    reclaim_plan.plan_valid_spec (Vermilion.Seq.len keys) edges roots reclaimable retained candidate := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.no_live_key_is_candidate.call_requires_0_0

-- vrml:begin reclaim_plan.no_live_key_is_candidate.call_requires_0_1 dbe5fe2ff8681da9
/--
Generated VC `reclaim_plan.no_live_key_is_candidate.call_requires_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:992:5-992:92`
- Rust/SST construct: call no_live_candidate
- AssertId: `0_1`
- Statement hash: `dbe5fe2ff8681da9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def call_requires_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 992
  startColumn := 5
  endLine := 992
  endColumn := 92
  assertId := "0_1"
  functionName := "reclaim_plan.no_live_key_is_candidate"
  kind := "call_requires"
  statementHash := "dbe5fe2ff8681da9"
}
@[vrml_obligation] theorem call_requires_0_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (v : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (requires_5 : reclaim_plan.projection_valid_spec keys refs root_keys edges roots)
    (requires_6 : reclaim_plan.plan_valid_spec (Vermilion.Seq.len keys) edges roots reclaimable retained candidate)
    (requires_7 : (0 ≤ v) ∧ (v < Vermilion.Seq.len keys))
    (requires_8 : Vermilion.Seq.index candidate v) :
    (0 ≤ v) ∧ (v < Vermilion.Seq.len keys) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.no_live_key_is_candidate.call_requires_0_1

-- vrml:begin reclaim_plan.no_live_key_is_candidate.call_requires_0_2 15bda1d119d00271
/--
Generated VC `reclaim_plan.no_live_key_is_candidate.call_requires_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:992:5-992:92`
- Rust/SST construct: call no_live_candidate
- AssertId: `0_2`
- Statement hash: `15bda1d119d00271`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def call_requires_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 992
  startColumn := 5
  endLine := 992
  endColumn := 92
  assertId := "0_2"
  functionName := "reclaim_plan.no_live_key_is_candidate"
  kind := "call_requires"
  statementHash := "15bda1d119d00271"
}
@[vrml_obligation] theorem call_requires_0_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (v : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (requires_5 : reclaim_plan.projection_valid_spec keys refs root_keys edges roots)
    (requires_6 : reclaim_plan.plan_valid_spec (Vermilion.Seq.len keys) edges roots reclaimable retained candidate)
    (requires_7 : (0 ≤ v) ∧ (v < Vermilion.Seq.len keys))
    (requires_8 : Vermilion.Seq.index candidate v) :
    Vermilion.Seq.index candidate v := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.no_live_key_is_candidate.call_requires_0_2

-- vrml:begin reclaim_plan.no_live_key_is_candidate.call_requires_1_0 8490333cca3766a5
/--
Generated VC `reclaim_plan.no_live_key_is_candidate.call_requires_1_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:993:5-993:72`
- Rust/SST construct: call key_live_matches_index_live
- AssertId: `1_0`
- Statement hash: `8490333cca3766a5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def call_requires_1_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 993
  startColumn := 5
  endLine := 993
  endColumn := 72
  assertId := "1_0"
  functionName := "reclaim_plan.no_live_key_is_candidate"
  kind := "call_requires"
  statementHash := "8490333cca3766a5"
}
@[vrml_obligation] theorem call_requires_1_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (v : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (requires_5 : reclaim_plan.projection_valid_spec keys refs root_keys edges roots)
    (requires_6 : reclaim_plan.plan_valid_spec (Vermilion.Seq.len keys) edges roots reclaimable retained candidate)
    (requires_7 : (0 ≤ v) ∧ (v < Vermilion.Seq.len keys))
    (requires_8 : Vermilion.Seq.index candidate v)
    (call_no_live_candidate_ensures_0 : (¬ reclaim_plan.live_spec edges roots v)) :
    reclaim_plan.projection_valid_spec keys refs root_keys edges roots := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.no_live_key_is_candidate.call_requires_1_0

-- vrml:begin reclaim_plan.no_live_key_is_candidate.call_requires_1_1 94bb0e820db06fd7
/--
Generated VC `reclaim_plan.no_live_key_is_candidate.call_requires_1_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:993:5-993:72`
- Rust/SST construct: call key_live_matches_index_live
- AssertId: `1_1`
- Statement hash: `94bb0e820db06fd7`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def call_requires_1_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 993
  startColumn := 5
  endLine := 993
  endColumn := 72
  assertId := "1_1"
  functionName := "reclaim_plan.no_live_key_is_candidate"
  kind := "call_requires"
  statementHash := "94bb0e820db06fd7"
}
@[vrml_obligation] theorem call_requires_1_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (v : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (requires_5 : reclaim_plan.projection_valid_spec keys refs root_keys edges roots)
    (requires_6 : reclaim_plan.plan_valid_spec (Vermilion.Seq.len keys) edges roots reclaimable retained candidate)
    (requires_7 : (0 ≤ v) ∧ (v < Vermilion.Seq.len keys))
    (requires_8 : Vermilion.Seq.index candidate v)
    (call_no_live_candidate_ensures_0 : (¬ reclaim_plan.live_spec edges roots v)) :
    (0 ≤ v) ∧ (v < Vermilion.Seq.len keys) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.no_live_key_is_candidate.call_requires_1_1

-- vrml:begin reclaim_plan.no_live_key_is_candidate.ensures_2 23cb9623e3350e60
/--
Generated VC `reclaim_plan.no_live_key_is_candidate.ensures_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:990:13-990:60`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2`
- Statement hash: `23cb9623e3350e60`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 990
  startColumn := 13
  endLine := 990
  endColumn := 60
  assertId := "2"
  functionName := "reclaim_plan.no_live_key_is_candidate"
  kind := "ensures"
  statementHash := "23cb9623e3350e60"
}
@[vrml_obligation] theorem ensures_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (v : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (requires_5 : reclaim_plan.projection_valid_spec keys refs root_keys edges roots)
    (requires_6 : reclaim_plan.plan_valid_spec (Vermilion.Seq.len keys) edges roots reclaimable retained candidate)
    (requires_7 : (0 ≤ v) ∧ (v < Vermilion.Seq.len keys))
    (requires_8 : Vermilion.Seq.index candidate v)
    (call_no_live_candidate_ensures_0 : (¬ reclaim_plan.live_spec edges roots v))
    (call_key_live_matches_index_live_ensures_0 : reclaim_plan.live_spec edges roots v ↔ reclaim_plan.key_live_spec keys refs root_keys (Vermilion.Seq.index keys v)) :
    (¬ reclaim_plan.key_live_spec keys refs root_keys (Vermilion.Seq.index keys v)) := by
  exact fun h => call_no_live_candidate_ensures_0 (call_key_live_matches_index_live_ensures_0.mpr h)
-- vrml:end reclaim_plan.no_live_key_is_candidate.ensures_2

end reclaim_plan.no_live_key_is_candidate

