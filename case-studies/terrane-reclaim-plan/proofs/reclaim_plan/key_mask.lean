import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.key_mask

-- vrml:begin reclaim_plan.key_mask.ensures_3 591a82a900634321
/--
Generated VC `reclaim_plan.key_mask.ensures_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1262:9-1262:82`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3`
- Statement hash: `591a82a900634321`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩
-/
def ensures_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1262
  startColumn := 9
  endLine := 1262
  endColumn := 82
  assertId := "3"
  functionName := "reclaim_plan.key_mask"
  kind := "ensures"
  statementHash := "591a82a900634321"
}
@[vrml_obligation] theorem ensures_3
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (assume_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (assume_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (branch_0 : Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) :
    core.option.Option.is_Some (core.option.Option.None (V := (Vermilion.Seq Prop))) → reclaim_plan.mask_matches_paths_spec keys paths (core.option.Option.get_Some__0 (core.option.Option.None (V := (Vermilion.Seq Prop)))) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.ensures_3

-- vrml:begin reclaim_plan.key_mask.invariant_entry_0_0 0e9008210ea3be37
/--
Generated VC `reclaim_plan.key_mask.invariant_entry_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1271:19-1271:30`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `0e9008210ea3be37`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1271
  startColumn := 19
  endLine := 1271
  endColumn := 30
  assertId := "0_0"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_entry"
  statementHash := "0e9008210ea3be37"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (assume_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (assume_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (then_0_assume_10 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (then_0_assume_11 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (call_new_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_new_ensures_1 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Prop)) :
    (0 ≤ 0) ∧ (0 ≤ Vermilion.Seq.len keys) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.invariant_entry_0_0

-- vrml:begin reclaim_plan.key_mask.invariant_entry_0_1 da3086c65c983618
/--
Generated VC `reclaim_plan.key_mask.invariant_entry_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1271:32-1271:47`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `da3086c65c983618`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1271
  startColumn := 32
  endLine := 1271
  endColumn := 47
  assertId := "0_1"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_entry"
  statementHash := "da3086c65c983618"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (assume_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (assume_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (then_0_assume_10 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (then_0_assume_11 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (call_new_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_new_ensures_1 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Prop)) :
    Vermilion.Seq.len keys = Vermilion.Seq.len keys := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.invariant_entry_0_1

-- vrml:begin reclaim_plan.key_mask.invariant_entry_0_2 1788af4bfdf926d3
/--
Generated VC `reclaim_plan.key_mask.invariant_entry_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1271:49-1271:62`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_2`
- Statement hash: `1788af4bfdf926d3`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩
-/
def invariant_entry_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1271
  startColumn := 49
  endLine := 1271
  endColumn := 62
  assertId := "0_2"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_entry"
  statementHash := "1788af4bfdf926d3"
}
@[vrml_obligation] theorem invariant_entry_0_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (assume_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (assume_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (then_0_assume_10 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (then_0_assume_11 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (call_new_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_new_ensures_1 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Prop)) :
    Vermilion.Seq.len tmp_ = 0 := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.invariant_entry_0_2

-- vrml:begin reclaim_plan.key_mask.invariant_entry_0_3 f3116a9aebbe8739
/--
Generated VC `reclaim_plan.key_mask.invariant_entry_0_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1271:64-1271:118`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_3`
- Statement hash: `f3116a9aebbe8739`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index tmp_ t⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩
-/
def invariant_entry_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1271
  startColumn := 64
  endLine := 1271
  endColumn := 118
  assertId := "0_3"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_entry"
  statementHash := "f3116a9aebbe8739"
}
@[vrml_obligation] theorem invariant_entry_0_3
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (assume_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (assume_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (then_0_assume_10 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (then_0_assume_11 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (call_new_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_new_ensures_1 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Prop)) :
    (∀ (t : Int), (((0 ≤ t) ∧ (t < 0)) → (¬ Vermilion.Seq.index tmp_ t))) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.invariant_entry_0_3

-- vrml:begin reclaim_plan.key_mask.assert_6 38f93c5f875f5428
/--
Generated VC `reclaim_plan.key_mask.assert_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1275:13-1275:18`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `6`
- Statement hash: `38f93c5f875f5428`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩
-/
def assert_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1275
  startColumn := 13
  endLine := 1275
  endColumn := 18
  assertId := "6"
  functionName := "reclaim_plan.key_mask"
  kind := "assert"
  statementHash := "38f93c5f875f5428"
}
@[vrml_obligation] theorem assert_6
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (tmp__post : (Vermilion.Seq Prop))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_0_iteration_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_0_iteration_11 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_0_iteration_12 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_13 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_14 : Vermilion.Seq.len m = k)
    (loop_0_iteration_15 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_iteration_16 : k < Vermilion.Seq.len keys)
    (assume_17 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push m False) :
    (0 ≤ (k + 1)) ∧ ((k + 1) < Vermilion.usizeMod) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.assert_6

-- vrml:begin reclaim_plan.key_mask.invariant_preserve_0_0 a8bba6b40250054c
/--
Generated VC `reclaim_plan.key_mask.invariant_preserve_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1271:19-1271:30`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `a8bba6b40250054c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1271
  startColumn := 19
  endLine := 1271
  endColumn := 30
  assertId := "0_0"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_preserve"
  statementHash := "a8bba6b40250054c"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (tmp__post : (Vermilion.Seq Prop))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_0_iteration_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_0_iteration_11 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_0_iteration_12 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_13 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_14 : Vermilion.Seq.len m = k)
    (loop_0_iteration_15 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_iteration_16 : k < Vermilion.Seq.len keys)
    (assume_17 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push m False)
    (assert_6 : (0 ≤ (k + 1)) ∧ ((k + 1) < Vermilion.usizeMod)) :
    (0 ≤ (Vermilion.emod (k + 1) Vermilion.usizeMod)) ∧ ((Vermilion.emod (k + 1) Vermilion.usizeMod) ≤ Vermilion.Seq.len keys) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.invariant_preserve_0_0

-- vrml:begin reclaim_plan.key_mask.invariant_preserve_0_1 530d7d3696694ca1
/--
Generated VC `reclaim_plan.key_mask.invariant_preserve_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1271:32-1271:47`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `530d7d3696694ca1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1271
  startColumn := 32
  endLine := 1271
  endColumn := 47
  assertId := "0_1"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_preserve"
  statementHash := "530d7d3696694ca1"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (tmp__post : (Vermilion.Seq Prop))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_0_iteration_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_0_iteration_11 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_0_iteration_12 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_13 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_14 : Vermilion.Seq.len m = k)
    (loop_0_iteration_15 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_iteration_16 : k < Vermilion.Seq.len keys)
    (assume_17 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push m False)
    (assert_6 : (0 ≤ (k + 1)) ∧ ((k + 1) < Vermilion.usizeMod)) :
    Vermilion.Seq.len keys = Vermilion.Seq.len keys := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.invariant_preserve_0_1

-- vrml:begin reclaim_plan.key_mask.invariant_preserve_0_2 95c13bf661acfc65
/--
Generated VC `reclaim_plan.key_mask.invariant_preserve_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1271:49-1271:62`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_2`
- Statement hash: `95c13bf661acfc65`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩
-/
def invariant_preserve_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1271
  startColumn := 49
  endLine := 1271
  endColumn := 62
  assertId := "0_2"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_preserve"
  statementHash := "95c13bf661acfc65"
}
@[vrml_obligation] theorem invariant_preserve_0_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (tmp__post : (Vermilion.Seq Prop))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_0_iteration_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_0_iteration_11 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_0_iteration_12 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_13 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_14 : Vermilion.Seq.len m = k)
    (loop_0_iteration_15 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_iteration_16 : k < Vermilion.Seq.len keys)
    (assume_17 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push m False)
    (assert_6 : (0 ≤ (k + 1)) ∧ ((k + 1) < Vermilion.usizeMod)) :
    Vermilion.Seq.len tmp__post = (Vermilion.emod (k + 1) Vermilion.usizeMod) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.invariant_preserve_0_2

-- vrml:begin reclaim_plan.key_mask.invariant_preserve_0_3 9c4ba9cc0b4e9905
/--
Generated VC `reclaim_plan.key_mask.invariant_preserve_0_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1271:64-1271:118`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_3`
- Statement hash: `9c4ba9cc0b4e9905`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index tmp__post t⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩
-/
def invariant_preserve_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1271
  startColumn := 64
  endLine := 1271
  endColumn := 118
  assertId := "0_3"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_preserve"
  statementHash := "9c4ba9cc0b4e9905"
}
@[vrml_obligation] theorem invariant_preserve_0_3
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (tmp__post : (Vermilion.Seq Prop))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_0_iteration_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_0_iteration_11 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_0_iteration_12 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_13 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_14 : Vermilion.Seq.len m = k)
    (loop_0_iteration_15 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_iteration_16 : k < Vermilion.Seq.len keys)
    (assume_17 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push m False)
    (assert_6 : (0 ≤ (k + 1)) ∧ ((k + 1) < Vermilion.usizeMod)) :
    (∀ (t : Int), (((0 ≤ t) ∧ (t < (Vermilion.emod (k + 1) Vermilion.usizeMod))) → (¬ Vermilion.Seq.index tmp__post t))) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.invariant_preserve_0_3

-- vrml:begin reclaim_plan.key_mask.assert_0_decreases e65f106ed1609967
/--
Generated VC `reclaim_plan.key_mask.assert_0_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1272:19-1272:24`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `e65f106ed1609967`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1272
  startColumn := 19
  endLine := 1272
  endColumn := 24
  assertId := "0_decreases"
  functionName := "reclaim_plan.key_mask"
  kind := "assert"
  statementHash := "e65f106ed1609967"
}
@[vrml_obligation] theorem assert_0_decreases
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (tmp__post : (Vermilion.Seq Prop))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_0_iteration_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_0_iteration_11 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_0_iteration_12 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_13 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_14 : Vermilion.Seq.len m = k)
    (loop_0_iteration_15 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_iteration_16 : k < Vermilion.Seq.len keys)
    (assume_17 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push m False)
    (assert_6 : (0 ≤ (k + 1)) ∧ ((k + 1) < Vermilion.usizeMod)) :
    ((0 ≤ (Vermilion.Seq.len keys - (Vermilion.emod (k + 1) Vermilion.usizeMod))) ∧ ((Vermilion.Seq.len keys - (Vermilion.emod (k + 1) Vermilion.usizeMod)) < (Vermilion.Seq.len keys - k))) ∨ (((Vermilion.Seq.len keys - (Vermilion.emod (k + 1) Vermilion.usizeMod)) = (Vermilion.Seq.len keys - k)) ∧ False) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.assert_0_decreases

-- vrml:begin reclaim_plan.key_mask.invariant_entry_1_0 f46cbce78ddf2954
/--
Generated VC `reclaim_plan.key_mask.invariant_entry_1_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1279:19-1279:40`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_0`
- Statement hash: `f46cbce78ddf2954`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩
-/
def invariant_entry_1_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1279
  startColumn := 19
  endLine := 1279
  endColumn := 40
  assertId := "1_0"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_entry"
  statementHash := "f46cbce78ddf2954"
}
@[vrml_obligation] theorem invariant_entry_1_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (assume_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (assume_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (then_0_assume_10 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (then_0_assume_11 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (call_new_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_new_ensures_1 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : Vermilion.Seq.len m = k)
    (loop_0_exit_5 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_exit_6 : (¬ (k < Vermilion.Seq.len keys))) :
    (0 ≤ 0) ∧ (0 ≤ Vermilion.Seq.len paths) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.invariant_entry_1_0

-- vrml:begin reclaim_plan.key_mask.invariant_entry_1_1 7f587b2ba6a40d33
/--
Generated VC `reclaim_plan.key_mask.invariant_entry_1_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1279:42-1279:68`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_1`
- Statement hash: `7f587b2ba6a40d33`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩
-/
def invariant_entry_1_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1279
  startColumn := 42
  endLine := 1279
  endColumn := 68
  assertId := "1_1"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_entry"
  statementHash := "7f587b2ba6a40d33"
}
@[vrml_obligation] theorem invariant_entry_1_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (assume_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (assume_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (then_0_assume_10 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (then_0_assume_11 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (call_new_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_new_ensures_1 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : Vermilion.Seq.len m = k)
    (loop_0_exit_5 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_exit_6 : (¬ (k < Vermilion.Seq.len keys))) :
    Vermilion.Seq.len index = Vermilion.Seq.len paths := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.invariant_entry_1_1

-- vrml:begin reclaim_plan.key_mask.invariant_entry_1_2 924a885d0b51fcd7
/--
Generated VC `reclaim_plan.key_mask.invariant_entry_1_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1279:70-1279:85`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_2`
- Statement hash: `924a885d0b51fcd7`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩
-/
def invariant_entry_1_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1279
  startColumn := 70
  endLine := 1279
  endColumn := 85
  assertId := "1_2"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_entry"
  statementHash := "924a885d0b51fcd7"
}
@[vrml_obligation] theorem invariant_entry_1_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (assume_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (assume_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (then_0_assume_10 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (then_0_assume_11 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (call_new_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_new_ensures_1 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : Vermilion.Seq.len m = k)
    (loop_0_exit_5 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_exit_6 : (¬ (k < Vermilion.Seq.len keys))) :
    Vermilion.Seq.len keys = Vermilion.Seq.len keys := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.invariant_entry_1_2

-- vrml:begin reclaim_plan.key_mask.invariant_entry_1_3 3660e288e45a4510
/--
Generated VC `reclaim_plan.key_mask.invariant_entry_1_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1279:87-1279:100`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_3`
- Statement hash: `3660e288e45a4510`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩
-/
def invariant_entry_1_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1279
  startColumn := 87
  endLine := 1279
  endColumn := 100
  assertId := "1_3"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_entry"
  statementHash := "3660e288e45a4510"
}
@[vrml_obligation] theorem invariant_entry_1_3
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (assume_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (assume_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (then_0_assume_10 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (then_0_assume_11 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (call_new_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_new_ensures_1 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : Vermilion.Seq.len m = k)
    (loop_0_exit_5 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_exit_6 : (¬ (k < Vermilion.Seq.len keys))) :
    Vermilion.Seq.len m = Vermilion.Seq.len keys := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.invariant_entry_1_3

-- vrml:begin reclaim_plan.key_mask.invariant_entry_1_4 fad6bd910a87fad6
/--
Generated VC `reclaim_plan.key_mask.invariant_entry_1_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1280:13-1281:91`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_4`
- Statement hash: `fad6bd910a87fad6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index m t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩
-/
def invariant_entry_1_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1280
  startColumn := 13
  endLine := 1281
  endColumn := 91
  assertId := "1_4"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_entry"
  statementHash := "fad6bd910a87fad6"
}
@[vrml_obligation] theorem invariant_entry_1_4
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (assume_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (assume_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (then_0_assume_10 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (then_0_assume_11 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (call_new_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_new_ensures_1 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : Vermilion.Seq.len m = k)
    (loop_0_exit_5 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_exit_6 : (¬ (k < Vermilion.Seq.len keys))) :
    (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < 0)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.invariant_entry_1_4

-- vrml:begin reclaim_plan.key_mask.invariant_entry_1_5 be3fc564d3b323f2
/--
Generated VC `reclaim_plan.key_mask.invariant_entry_1_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1282:13-1283:99`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_5`
- Statement hash: `be3fc564d3b323f2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩
-/
def invariant_entry_1_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1282
  startColumn := 13
  endLine := 1283
  endColumn := 99
  assertId := "1_5"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_entry"
  statementHash := "be3fc564d3b323f2"
}
@[vrml_obligation] theorem invariant_entry_1_5
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (assume_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (assume_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (then_0_assume_10 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (then_0_assume_11 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (call_new_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_new_ensures_1 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : Vermilion.Seq.len m = k)
    (loop_0_exit_5 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_exit_6 : (¬ (k < Vermilion.Seq.len keys))) :
    (∀ (q : Int), (((0 ≤ q) ∧ (q < 0)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.invariant_entry_1_5

-- vrml:begin reclaim_plan.key_mask.call_requires_8 623147177b91f8bd
/--
Generated VC `reclaim_plan.key_mask.call_requires_8`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1286:17-1286:25`
- Rust/SST construct: call vec_index
- AssertId: `8`
- Statement hash: `623147177b91f8bd`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩
-/
def call_requires_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1286
  startColumn := 17
  endLine := 1286
  endColumn := 25
  assertId := "8"
  functionName := "reclaim_plan.key_mask"
  kind := "call_requires"
  statementHash := "623147177b91f8bd"
}
@[vrml_obligation] theorem call_requires_8
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len m_2) ∧ (Vermilion.Seq.len m_2 < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ s) ∧ (s < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths) :
    s < Vermilion.Seq.len index := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.call_requires_8

-- vrml:begin reclaim_plan.key_mask.call_requires_9 27ed6aa899990ccf
/--
Generated VC `reclaim_plan.key_mask.call_requires_9`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1287:22-1287:26`
- Rust/SST construct: call vec_index
- AssertId: `9`
- Statement hash: `27ed6aa899990ccf`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩
-/
def call_requires_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1287
  startColumn := 22
  endLine := 1287
  endColumn := 26
  assertId := "9"
  functionName := "reclaim_plan.key_mask"
  kind := "call_requires"
  statementHash := "27ed6aa899990ccf"
}
@[vrml_obligation] theorem call_requires_9
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len m_2) ∧ (Vermilion.Seq.len m_2 < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ s) ∧ (s < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (branch_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys))) :
    tmp__2 < Vermilion.Seq.len m_2 := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.call_requires_9

-- vrml:begin reclaim_plan.key_mask.call_requires_10 8dbf0265d7e427dc
/--
Generated VC `reclaim_plan.key_mask.call_requires_10`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1287:39-1287:46`
- Rust/SST construct: call vec_index
- AssertId: `10`
- Statement hash: `8dbf0265d7e427dc`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩
-/
def call_requires_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1287
  startColumn := 39
  endLine := 1287
  endColumn := 46
  assertId := "10"
  functionName := "reclaim_plan.key_mask"
  kind := "call_requires"
  statementHash := "8dbf0265d7e427dc"
}
@[vrml_obligation] theorem call_requires_10
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len m_2) ∧ (Vermilion.Seq.len m_2 < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ s) ∧ (s < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (branch_2 : (¬ tmp__4)) :
    tmp__2 < Vermilion.Seq.len keys := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.call_requires_10

-- vrml:begin reclaim_plan.key_mask.call_requires_11 34bd61edac9ade15
/--
Generated VC `reclaim_plan.key_mask.call_requires_11`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1287:49-1287:57`
- Rust/SST construct: call vec_index
- AssertId: `11`
- Statement hash: `34bd61edac9ade15`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩
-/
def call_requires_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1287
  startColumn := 49
  endLine := 1287
  endColumn := 57
  assertId := "11"
  functionName := "reclaim_plan.key_mask"
  kind := "call_requires"
  statementHash := "34bd61edac9ade15"
}
@[vrml_obligation] theorem call_requires_11
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len m_2) ∧ (Vermilion.Seq.len m_2 < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ s) ∧ (s < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (branch_2 : (¬ tmp__4))
    (call_vec_index_2_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__5) ∧ (Vermilion.Seq.len tmp__5 < Vermilion.usizeMod))
    (call_vec_index_2_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (call_vec_index_2_ensures_2 : tmp__5 = Vermilion.Seq.index keys tmp__2) :
    s < Vermilion.Seq.len paths := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.call_requires_11

-- vrml:begin reclaim_plan.key_mask.ensures_13 cf409c0a34a1b759
/--
Generated VC `reclaim_plan.key_mask.ensures_13`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1262:9-1262:82`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `13`
- Statement hash: `cf409c0a34a1b759`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩
-/
def ensures_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1262
  startColumn := 9
  endLine := 1262
  endColumn := 82
  assertId := "13"
  functionName := "reclaim_plan.key_mask"
  kind := "ensures"
  statementHash := "cf409c0a34a1b759"
}
@[vrml_obligation] theorem ensures_13
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len m_2) ∧ (Vermilion.Seq.len m_2 < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ s) ∧ (s < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__5) ∧ (Vermilion.Seq.len tmp__5 < Vermilion.usizeMod)))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__6) ∧ (Vermilion.Seq.len tmp__6 < Vermilion.usizeMod)))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (branch_3 : tmp__7) :
    core.option.Option.is_Some (core.option.Option.None (V := (Vermilion.Seq Prop))) → reclaim_plan.mask_matches_paths_spec keys paths (core.option.Option.get_Some__0 (core.option.Option.None (V := (Vermilion.Seq Prop)))) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.ensures_13

-- vrml:begin reclaim_plan.key_mask.call_requires_14 fd2b14122b0b7fe1
/--
Generated VC `reclaim_plan.key_mask.call_requires_14`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1291:9-1291:23`
- Rust/SST construct: call set
- AssertId: `14`
- Statement hash: `fd2b14122b0b7fe1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩
-/
def call_requires_14_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1291
  startColumn := 9
  endLine := 1291
  endColumn := 23
  assertId := "14"
  functionName := "reclaim_plan.key_mask"
  kind := "call_requires"
  statementHash := "fd2b14122b0b7fe1"
}
@[vrml_obligation] theorem call_requires_14
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len m_2) ∧ (Vermilion.Seq.len m_2 < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ s) ∧ (s < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__5) ∧ (Vermilion.Seq.len tmp__5 < Vermilion.usizeMod)))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__6) ∧ (Vermilion.Seq.len tmp__6 < Vermilion.usizeMod)))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post_2) ∧ (Vermilion.Seq.len tmp__post_2 < Vermilion.usizeMod)) :
    tmp__2 < Vermilion.Seq.len m_2 := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.call_requires_14

-- vrml:begin reclaim_plan.key_mask.assert_15 7401f800b95e9ca5
/--
Generated VC `reclaim_plan.key_mask.assert_15`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1296:28-1296:58`
- Rust/SST construct: Rust source assertion
- AssertId: `15`
- Statement hash: `7401f800b95e9ca5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩
-/
def assert_15_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1296
  startColumn := 28
  endLine := 1296
  endColumn := 58
  assertId := "15"
  functionName := "reclaim_plan.key_mask"
  kind := "assert"
  statementHash := "7401f800b95e9ca5"
}
@[vrml_obligation] theorem assert_15
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (u : Int)
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len m_2) ∧ (Vermilion.Seq.len m_2 < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ s) ∧ (s < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__5) ∧ (Vermilion.Seq.len tmp__5 < Vermilion.usizeMod)))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__6) ∧ (Vermilion.Seq.len tmp__6 < Vermilion.usizeMod)))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post_2) ∧ (Vermilion.Seq.len tmp__post_2 < Vermilion.usizeMod))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update m_2 tmp__2 True)
    (assume_38 : True)
    (assume_39 : ((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u)
    (branch_4 : u = tmp__2) :
    Vermilion.Seq.index paths s = Vermilion.Seq.index keys u := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.assert_15

-- vrml:begin reclaim_plan.key_mask.assert_16 64ed8ace3bca02ce
/--
Generated VC `reclaim_plan.key_mask.assert_16`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1298:28-1298:44`
- Rust/SST construct: Rust source assertion
- AssertId: `16`
- Statement hash: `64ed8ace3bca02ce`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩
-/
def assert_16_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1298
  startColumn := 28
  endLine := 1298
  endColumn := 44
  assertId := "16"
  functionName := "reclaim_plan.key_mask"
  kind := "assert"
  statementHash := "64ed8ace3bca02ce"
}
@[vrml_obligation] theorem assert_16
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (u : Int)
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len m_2) ∧ (Vermilion.Seq.len m_2 < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ s) ∧ (s < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__5) ∧ (Vermilion.Seq.len tmp__5 < Vermilion.usizeMod)))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__6) ∧ (Vermilion.Seq.len tmp__6 < Vermilion.usizeMod)))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post_2) ∧ (Vermilion.Seq.len tmp__post_2 < Vermilion.usizeMod))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update m_2 tmp__2 True)
    (assume_38 : True)
    (assume_39 : ((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u)
    (branch_4 : (¬ (u = tmp__2))) :
    Vermilion.Seq.index tmp__post_2 u ↔ Vermilion.Seq.index m_2 u := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.assert_16

-- vrml:begin reclaim_plan.key_mask.assert_17 5648724bf4a2923c
/--
Generated VC `reclaim_plan.key_mask.assert_17`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1294:17-1294:95`
- Rust/SST construct: Rust source assertion
- AssertId: `17`
- Statement hash: `5648724bf4a2923c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩
-/
def assert_17_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1294
  startColumn := 17
  endLine := 1294
  endColumn := 95
  assertId := "17"
  functionName := "reclaim_plan.key_mask"
  kind := "assert"
  statementHash := "5648724bf4a2923c"
}
@[vrml_obligation] theorem assert_17
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (u : Int)
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len m_2) ∧ (Vermilion.Seq.len m_2 < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ s) ∧ (s < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__5) ∧ (Vermilion.Seq.len tmp__5 < Vermilion.usizeMod)))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__6) ∧ (Vermilion.Seq.len tmp__6 < Vermilion.usizeMod)))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post_2) ∧ (Vermilion.Seq.len tmp__post_2 < Vermilion.usizeMod))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update m_2 tmp__2 True)
    (assume_38 : True)
    (assume_39 : ((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u)
    (then_4_assert_15 : (u = tmp__2) → (Vermilion.Seq.index paths s = Vermilion.Seq.index keys u))
    (else_4_assert_16 : (¬ (u = tmp__2)) → (Vermilion.Seq.index tmp__post_2 u ↔ Vermilion.Seq.index m_2 u)) :
    (∃ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys u))) := by
  by_cases hu : u = tmp__2
  · exact ⟨s, ⟨loop_1_iteration_14.1, by omega⟩, then_4_assert_15 hu⟩
  · obtain ⟨q, hq, e⟩ := loop_1_iteration_18 u ⟨assume_39.1, (else_4_assert_16 hu).mp assume_39.2⟩
    exact ⟨q, ⟨hq.1, by omega⟩, e⟩
-- vrml:end reclaim_plan.key_mask.assert_17

-- vrml:begin reclaim_plan.key_mask.assert_18 1f4c31e3ad362a45
/--
Generated VC `reclaim_plan.key_mask.assert_18`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1304:28-1304:74`
- Rust/SST construct: Rust source assertion
- AssertId: `18`
- Statement hash: `1f4c31e3ad362a45`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 u⟩ ⟨Vermilion.Seq.index paths q⟩
-/
def assert_18_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1304
  startColumn := 28
  endLine := 1304
  endColumn := 74
  assertId := "18"
  functionName := "reclaim_plan.key_mask"
  kind := "assert"
  statementHash := "1f4c31e3ad362a45"
}
@[vrml_obligation] theorem assert_18
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (q : Int)
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len m_2) ∧ (Vermilion.Seq.len m_2 < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ s) ∧ (s < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__5) ∧ (Vermilion.Seq.len tmp__5 < Vermilion.usizeMod)))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__6) ∧ (Vermilion.Seq.len tmp__6 < Vermilion.usizeMod)))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post_2) ∧ (Vermilion.Seq.len tmp__post_2 < Vermilion.usizeMod))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update m_2 tmp__2 True)
    (assume_38 : (∀ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) → (∃ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys u))))))
    (assume_39 : True)
    (assume_40 : (0 ≤ q) ∧ (q < (s + 1)))
    (branch_5 : q = s) :
    Vermilion.Seq.index tmp__post_2 tmp__2 ∧ (Vermilion.Seq.index keys tmp__2 = Vermilion.Seq.index paths q) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.assert_18

-- vrml:begin reclaim_plan.key_mask.assert_19 8618390eddef8775
/--
Generated VC `reclaim_plan.key_mask.assert_19`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1307:28-1307:33`
- Rust/SST construct: Rust source assertion
- AssertId: `19`
- Statement hash: `8618390eddef8775`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys u⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 u⟩ ⟨Vermilion.Seq.index paths q⟩
-/
def assert_19_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1307
  startColumn := 28
  endLine := 1307
  endColumn := 33
  assertId := "19"
  functionName := "reclaim_plan.key_mask"
  kind := "assert"
  statementHash := "8618390eddef8775"
}
@[vrml_obligation] theorem assert_19
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (q : Int)
    (choose_spec_0 : (∃ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q))) → (fun (u : Int) => ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q))) (Vermilion.chooseSpec (fun (u : Int) => ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q)))))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len m_2) ∧ (Vermilion.Seq.len m_2 < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ s) ∧ (s < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__5) ∧ (Vermilion.Seq.len tmp__5 < Vermilion.usizeMod)))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__6) ∧ (Vermilion.Seq.len tmp__6 < Vermilion.usizeMod)))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post_2) ∧ (Vermilion.Seq.len tmp__post_2 < Vermilion.usizeMod))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update m_2 tmp__2 True)
    (assume_38 : (∀ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) → (∃ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys u))))))
    (assume_39 : True)
    (assume_40 : (0 ≤ q) ∧ (q < (s + 1)))
    (branch_5 : (¬ (q = s))) :
    Vermilion.Seq.index tmp__post_2 (Vermilion.chooseSpec (fun (u : Int) => ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q)))) := by
  have hq : 0 ≤ q ∧ q < s := ⟨assume_40.1, by have := assume_40.2; omega⟩
  have hU := choose_spec_0 (loop_1_iteration_19 q hq)
  obtain ⟨⟨⟨hU0, hU1⟩, hUm⟩, _⟩ := hU
  rw [call_set_ensures_0]
  by_cases he : Vermilion.chooseSpec (fun (u : Int) => ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧
      Vermilion.Seq.index m_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q))) = tmp__2
  · rw [he]
    have h0 : 0 ≤ tmp__2 := by
      (try unfold Vermilion.inUnsignedRange at call_vec_index_ensures_0); exact call_vec_index_ensures_0.1
    rw [Vermilion.Seq.index_update_same _ _ _ h0 (by rw [loop_1_iteration_17]; rw [← he]; exact hU1)]
    trivial
  · rw [Vermilion.Seq.index_update_other _ _ _ _ (Ne.symm he)]
    exact hUm
-- vrml:end reclaim_plan.key_mask.assert_19

-- vrml:begin reclaim_plan.key_mask.assert_20 0c6a273acedc0990
/--
Generated VC `reclaim_plan.key_mask.assert_20`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1302:17-1302:99`
- Rust/SST construct: Rust source assertion
- AssertId: `20`
- Statement hash: `0c6a273acedc0990`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys u⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 u⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys u⟩
-/
def assert_20_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1302
  startColumn := 17
  endLine := 1302
  endColumn := 99
  assertId := "20"
  functionName := "reclaim_plan.key_mask"
  kind := "assert"
  statementHash := "0c6a273acedc0990"
}
@[vrml_obligation] theorem assert_20
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (q : Int)
    (choose_spec_0 : (∃ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q))) → (fun (u : Int) => ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q))) (Vermilion.chooseSpec (fun (u : Int) => ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q)))))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len m_2) ∧ (Vermilion.Seq.len m_2 < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ s) ∧ (s < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__5) ∧ (Vermilion.Seq.len tmp__5 < Vermilion.usizeMod)))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__6) ∧ (Vermilion.Seq.len tmp__6 < Vermilion.usizeMod)))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post_2) ∧ (Vermilion.Seq.len tmp__post_2 < Vermilion.usizeMod))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update m_2 tmp__2 True)
    (assume_38 : (∀ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) → (∃ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys u))))))
    (assume_39 : True)
    (assume_40 : (0 ≤ q) ∧ (q < (s + 1)))
    (then_5_assert_18 : (q = s) → (Vermilion.Seq.index tmp__post_2 tmp__2 ∧ (Vermilion.Seq.index keys tmp__2 = Vermilion.Seq.index paths q)))
    (else_5_assert_19 : (¬ (q = s)) → Vermilion.Seq.index tmp__post_2 (Vermilion.chooseSpec (fun (u : Int) => ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q))))) :
    (∃ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q))) := by
  by_cases hqs : q = s
  · obtain ⟨h1, h2⟩ := then_5_assert_18 hqs
    have h4 : ¬ tmp__4 := fun h => then_3_assume_35 ((then_2_assume_27 h).mpr trivial)
    have hlt : ¬ (tmp__2 ≥ Vermilion.Seq.len keys) := fun h => h4 ((then_1_assume_24 h).mpr trivial)
    exact ⟨tmp__2, ⟨⟨call_vec_index_ensures_0.1, by omega⟩, h1⟩, h2⟩
  · have hq : 0 ≤ q ∧ q < s := ⟨assume_40.1, by have := assume_40.2; omega⟩
    have hU := choose_spec_0 (loop_1_iteration_19 q hq)
    obtain ⟨⟨⟨hU0, hU1⟩, hUm⟩, hUk⟩ := hU
    exact ⟨_, ⟨⟨hU0, hU1⟩, else_5_assert_19 hqs⟩, hUk⟩
-- vrml:end reclaim_plan.key_mask.assert_20

-- vrml:begin reclaim_plan.key_mask.assert_21 53103f5bdb0875df
/--
Generated VC `reclaim_plan.key_mask.assert_21`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1311:13-1311:18`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `21`
- Statement hash: `53103f5bdb0875df`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 u⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys u⟩
-/
def assert_21_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1311
  startColumn := 13
  endLine := 1311
  endColumn := 18
  assertId := "21"
  functionName := "reclaim_plan.key_mask"
  kind := "assert"
  statementHash := "53103f5bdb0875df"
}
@[vrml_obligation] theorem assert_21
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len m_2) ∧ (Vermilion.Seq.len m_2 < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ s) ∧ (s < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__5) ∧ (Vermilion.Seq.len tmp__5 < Vermilion.usizeMod)))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__6) ∧ (Vermilion.Seq.len tmp__6 < Vermilion.usizeMod)))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post_2) ∧ (Vermilion.Seq.len tmp__post_2 < Vermilion.usizeMod))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update m_2 tmp__2 True)
    (assume_38 : (∀ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) → (∃ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys u))))))
    (assume_39 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) → (∃ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q)))))) :
    (0 ≤ (s + 1)) ∧ ((s + 1) < Vermilion.usizeMod) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.assert_21

-- vrml:begin reclaim_plan.key_mask.invariant_preserve_1_0 abbe9fe76b26c34a
/--
Generated VC `reclaim_plan.key_mask.invariant_preserve_1_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1279:19-1279:40`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_0`
- Statement hash: `abbe9fe76b26c34a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 u⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys u⟩
-/
def invariant_preserve_1_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1279
  startColumn := 19
  endLine := 1279
  endColumn := 40
  assertId := "1_0"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_preserve"
  statementHash := "abbe9fe76b26c34a"
}
@[vrml_obligation] theorem invariant_preserve_1_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len m_2) ∧ (Vermilion.Seq.len m_2 < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ s) ∧ (s < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__5) ∧ (Vermilion.Seq.len tmp__5 < Vermilion.usizeMod)))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__6) ∧ (Vermilion.Seq.len tmp__6 < Vermilion.usizeMod)))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post_2) ∧ (Vermilion.Seq.len tmp__post_2 < Vermilion.usizeMod))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update m_2 tmp__2 True)
    (assume_38 : (∀ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) → (∃ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys u))))))
    (assume_39 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) → (∃ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q))))))
    (assert_21 : (0 ≤ (s + 1)) ∧ ((s + 1) < Vermilion.usizeMod)) :
    (0 ≤ (Vermilion.emod (s + 1) Vermilion.usizeMod)) ∧ ((Vermilion.emod (s + 1) Vermilion.usizeMod) ≤ Vermilion.Seq.len paths) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.invariant_preserve_1_0

-- vrml:begin reclaim_plan.key_mask.invariant_preserve_1_1 9fc730c7774bd9ed
/--
Generated VC `reclaim_plan.key_mask.invariant_preserve_1_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1279:42-1279:68`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_1`
- Statement hash: `9fc730c7774bd9ed`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 u⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys u⟩
-/
def invariant_preserve_1_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1279
  startColumn := 42
  endLine := 1279
  endColumn := 68
  assertId := "1_1"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_preserve"
  statementHash := "9fc730c7774bd9ed"
}
@[vrml_obligation] theorem invariant_preserve_1_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len m_2) ∧ (Vermilion.Seq.len m_2 < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ s) ∧ (s < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__5) ∧ (Vermilion.Seq.len tmp__5 < Vermilion.usizeMod)))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__6) ∧ (Vermilion.Seq.len tmp__6 < Vermilion.usizeMod)))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post_2) ∧ (Vermilion.Seq.len tmp__post_2 < Vermilion.usizeMod))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update m_2 tmp__2 True)
    (assume_38 : (∀ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) → (∃ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys u))))))
    (assume_39 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) → (∃ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q))))))
    (assert_21 : (0 ≤ (s + 1)) ∧ ((s + 1) < Vermilion.usizeMod)) :
    Vermilion.Seq.len index = Vermilion.Seq.len paths := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.invariant_preserve_1_1

-- vrml:begin reclaim_plan.key_mask.invariant_preserve_1_2 b2cb051fcc693349
/--
Generated VC `reclaim_plan.key_mask.invariant_preserve_1_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1279:70-1279:85`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_2`
- Statement hash: `b2cb051fcc693349`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 u⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys u⟩
-/
def invariant_preserve_1_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1279
  startColumn := 70
  endLine := 1279
  endColumn := 85
  assertId := "1_2"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_preserve"
  statementHash := "b2cb051fcc693349"
}
@[vrml_obligation] theorem invariant_preserve_1_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len m_2) ∧ (Vermilion.Seq.len m_2 < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ s) ∧ (s < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__5) ∧ (Vermilion.Seq.len tmp__5 < Vermilion.usizeMod)))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__6) ∧ (Vermilion.Seq.len tmp__6 < Vermilion.usizeMod)))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post_2) ∧ (Vermilion.Seq.len tmp__post_2 < Vermilion.usizeMod))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update m_2 tmp__2 True)
    (assume_38 : (∀ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) → (∃ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys u))))))
    (assume_39 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) → (∃ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q))))))
    (assert_21 : (0 ≤ (s + 1)) ∧ ((s + 1) < Vermilion.usizeMod)) :
    Vermilion.Seq.len keys = Vermilion.Seq.len keys := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.invariant_preserve_1_2

-- vrml:begin reclaim_plan.key_mask.invariant_preserve_1_3 2065a159590d1afb
/--
Generated VC `reclaim_plan.key_mask.invariant_preserve_1_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1279:87-1279:100`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_3`
- Statement hash: `2065a159590d1afb`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 u⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys u⟩
-/
def invariant_preserve_1_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1279
  startColumn := 87
  endLine := 1279
  endColumn := 100
  assertId := "1_3"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_preserve"
  statementHash := "2065a159590d1afb"
}
@[vrml_obligation] theorem invariant_preserve_1_3
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len m_2) ∧ (Vermilion.Seq.len m_2 < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ s) ∧ (s < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__5) ∧ (Vermilion.Seq.len tmp__5 < Vermilion.usizeMod)))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__6) ∧ (Vermilion.Seq.len tmp__6 < Vermilion.usizeMod)))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post_2) ∧ (Vermilion.Seq.len tmp__post_2 < Vermilion.usizeMod))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update m_2 tmp__2 True)
    (assume_38 : (∀ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) → (∃ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys u))))))
    (assume_39 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) → (∃ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q))))))
    (assert_21 : (0 ≤ (s + 1)) ∧ ((s + 1) < Vermilion.usizeMod)) :
    Vermilion.Seq.len tmp__post_2 = Vermilion.Seq.len keys := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.invariant_preserve_1_3

-- vrml:begin reclaim_plan.key_mask.invariant_preserve_1_4 6bbe501adc056651
/--
Generated VC `reclaim_plan.key_mask.invariant_preserve_1_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1280:13-1281:91`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_4`
- Statement hash: `6bbe501adc056651`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index tmp__post_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 u⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys u⟩
-/
def invariant_preserve_1_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1280
  startColumn := 13
  endLine := 1281
  endColumn := 91
  assertId := "1_4"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_preserve"
  statementHash := "6bbe501adc056651"
}
@[vrml_obligation] theorem invariant_preserve_1_4
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len m_2) ∧ (Vermilion.Seq.len m_2 < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ s) ∧ (s < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__5) ∧ (Vermilion.Seq.len tmp__5 < Vermilion.usizeMod)))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__6) ∧ (Vermilion.Seq.len tmp__6 < Vermilion.usizeMod)))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post_2) ∧ (Vermilion.Seq.len tmp__post_2 < Vermilion.usizeMod))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update m_2 tmp__2 True)
    (assume_38 : (∀ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) → (∃ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys u))))))
    (assume_39 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) → (∃ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q))))))
    (assert_21 : (0 ≤ (s + 1)) ∧ ((s + 1) < Vermilion.usizeMod)) :
    (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < (Vermilion.emod (s + 1) Vermilion.usizeMod))) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))) := by
  have hr : Vermilion.emod (s + 1) Vermilion.usizeMod = s + 1 := Vermilion.emod_usizeMod_of_lt assert_21.1 assert_21.2
  rw [hr]; exact assume_38
-- vrml:end reclaim_plan.key_mask.invariant_preserve_1_4

-- vrml:begin reclaim_plan.key_mask.invariant_preserve_1_5 2ca091461078052f
/--
Generated VC `reclaim_plan.key_mask.invariant_preserve_1_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1282:13-1283:99`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_5`
- Statement hash: `2ca091461078052f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 u⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys u⟩
-/
def invariant_preserve_1_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1282
  startColumn := 13
  endLine := 1283
  endColumn := 99
  assertId := "1_5"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_preserve"
  statementHash := "2ca091461078052f"
}
@[vrml_obligation] theorem invariant_preserve_1_5
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len m_2) ∧ (Vermilion.Seq.len m_2 < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ s) ∧ (s < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__5) ∧ (Vermilion.Seq.len tmp__5 < Vermilion.usizeMod)))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__6) ∧ (Vermilion.Seq.len tmp__6 < Vermilion.usizeMod)))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post_2) ∧ (Vermilion.Seq.len tmp__post_2 < Vermilion.usizeMod))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update m_2 tmp__2 True)
    (assume_38 : (∀ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) → (∃ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys u))))))
    (assume_39 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) → (∃ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q))))))
    (assert_21 : (0 ≤ (s + 1)) ∧ ((s + 1) < Vermilion.usizeMod)) :
    (∀ (q : Int), (((0 ≤ q) ∧ (q < (Vermilion.emod (s + 1) Vermilion.usizeMod))) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))) := by
  have hr : Vermilion.emod (s + 1) Vermilion.usizeMod = s + 1 := Vermilion.emod_usizeMod_of_lt assert_21.1 assert_21.2
  rw [hr]; exact assume_39
-- vrml:end reclaim_plan.key_mask.invariant_preserve_1_5

-- vrml:begin reclaim_plan.key_mask.assert_1_decreases 31e32329cded2355
/--
Generated VC `reclaim_plan.key_mask.assert_1_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1284:19-1284:34`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `1_decreases`
- Statement hash: `31e32329cded2355`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 u⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys u⟩
-/
def assert_1_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1284
  startColumn := 19
  endLine := 1284
  endColumn := 34
  assertId := "1_decreases"
  functionName := "reclaim_plan.key_mask"
  kind := "assert"
  statementHash := "31e32329cded2355"
}
@[vrml_obligation] theorem assert_1_decreases
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len m_2) ∧ (Vermilion.Seq.len m_2 < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ s) ∧ (s < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__5) ∧ (Vermilion.Seq.len tmp__5 < Vermilion.usizeMod)))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → ((0 ≤ Vermilion.Seq.len tmp__6) ∧ (Vermilion.Seq.len tmp__6 < Vermilion.usizeMod)))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post_2) ∧ (Vermilion.Seq.len tmp__post_2 < Vermilion.usizeMod))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update m_2 tmp__2 True)
    (assume_38 : (∀ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) → (∃ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys u))))))
    (assume_39 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) → (∃ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q))))))
    (assert_21 : (0 ≤ (s + 1)) ∧ ((s + 1) < Vermilion.usizeMod)) :
    ((0 ≤ (Vermilion.Seq.len paths - (Vermilion.emod (s + 1) Vermilion.usizeMod))) ∧ ((Vermilion.Seq.len paths - (Vermilion.emod (s + 1) Vermilion.usizeMod)) < (Vermilion.Seq.len paths - s))) ∨ (((Vermilion.Seq.len paths - (Vermilion.emod (s + 1) Vermilion.usizeMod)) = (Vermilion.Seq.len paths - s)) ∧ False) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.assert_1_decreases

-- vrml:begin reclaim_plan.key_mask.assert_22 04ad785d7665e957
/--
Generated VC `reclaim_plan.key_mask.assert_22`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1315:16-1315:88`
- Rust/SST construct: Rust source assertion
- AssertId: `22`
- Statement hash: `04ad785d7665e957`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩
-/
def assert_22_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1315
  startColumn := 16
  endLine := 1315
  endColumn := 88
  assertId := "22"
  functionName := "reclaim_plan.key_mask"
  kind := "assert"
  statementHash := "04ad785d7665e957"
}
@[vrml_obligation] theorem assert_22
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (q_2 : Int)
    (choose_spec_0 : (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2))) → (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2))) (Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2)))))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (assume_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (assume_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (then_0_assume_10 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (then_0_assume_11 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (call_new_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_new_ensures_1 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : Vermilion.Seq.len m = k)
    (loop_0_exit_5 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_exit_6 : (¬ (k < Vermilion.Seq.len keys)))
    (loop_1_exit_0 : (0 ≤ Vermilion.Seq.len m_2) ∧ (Vermilion.Seq.len m_2 < Vermilion.usizeMod))
    (loop_1_exit_1 : (0 ≤ s) ∧ (s < Vermilion.usizeMod))
    (loop_1_exit_2 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_exit_3 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_exit_4 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_exit_5 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_exit_6 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_exit_7 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_exit_8 : (¬ (s < Vermilion.Seq.len paths)))
    (assume_29 : True)
    (assume_30 : (0 ≤ q_2) ∧ (q_2 < Vermilion.Seq.len paths)) :
    ((((0 ≤ Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2)))) ∧ (Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2))) < Vermilion.Seq.len keys)) ∧ (Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2))) < Vermilion.Seq.len m_2)) ∧ Vermilion.Seq.index m_2 (Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2))))) ∧ (Vermilion.Seq.index keys (Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2)))) = Vermilion.Seq.index paths q_2) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.assert_22

-- vrml:begin reclaim_plan.key_mask.assert_23 188457e635fda21d
/--
Generated VC `reclaim_plan.key_mask.assert_23`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1313:79-1313:117`
- Rust/SST construct: Rust source assertion
- AssertId: `23`
- Statement hash: `188457e635fda21d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys t⟩
-/
def assert_23_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1313
  startColumn := 79
  endLine := 1313
  endColumn := 117
  assertId := "23"
  functionName := "reclaim_plan.key_mask"
  kind := "assert"
  statementHash := "188457e635fda21d"
}
@[vrml_obligation] theorem assert_23
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (q_2 : Int)
    (choose_spec_0 : (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2))) → (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2))) (Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2)))))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (assume_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (assume_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (then_0_assume_10 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (then_0_assume_11 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (call_new_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_new_ensures_1 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : Vermilion.Seq.len m = k)
    (loop_0_exit_5 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_exit_6 : (¬ (k < Vermilion.Seq.len keys)))
    (loop_1_exit_0 : (0 ≤ Vermilion.Seq.len m_2) ∧ (Vermilion.Seq.len m_2 < Vermilion.usizeMod))
    (loop_1_exit_1 : (0 ≤ s) ∧ (s < Vermilion.usizeMod))
    (loop_1_exit_2 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_exit_3 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_exit_4 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_exit_5 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_exit_6 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_exit_7 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_exit_8 : (¬ (s < Vermilion.Seq.len paths)))
    (assume_29 : True)
    (assume_30 : (0 ≤ q_2) ∧ (q_2 < Vermilion.Seq.len paths))
    (assert_22 : ((((0 ≤ Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2)))) ∧ (Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2))) < Vermilion.Seq.len keys)) ∧ (Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2))) < Vermilion.Seq.len m_2)) ∧ Vermilion.Seq.index m_2 (Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2))))) ∧ (Vermilion.Seq.index keys (Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2)))) = Vermilion.Seq.index paths q_2)) :
    reclaim_plan.key_marked_spec keys m_2 (Vermilion.Seq.index paths q_2) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.key_mask.assert_23

-- vrml:begin reclaim_plan.key_mask.ensures_24 43bbd0f538469798
/--
Generated VC `reclaim_plan.key_mask.ensures_24`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1262:9-1262:82`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `24`
- Statement hash: `43bbd0f538469798`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index paths q⟩
-/
def ensures_24_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1262
  startColumn := 9
  endLine := 1262
  endColumn := 82
  assertId := "24"
  functionName := "reclaim_plan.key_mask"
  kind := "ensures"
  statementHash := "43bbd0f538469798"
}
@[vrml_obligation] theorem ensures_24
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → ((0 ≤ Vermilion.Seq.index index vrml_i0) ∧ (Vermilion.Seq.index index vrml_i0 < Vermilion.usizeMod)))))
    (assume_6 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_7 : (0 ≤ Vermilion.Seq.len index) ∧ (Vermilion.Seq.len index < Vermilion.usizeMod))
    (assume_8 : (0 ≤ Vermilion.Seq.len paths) ∧ (Vermilion.Seq.len paths < Vermilion.usizeMod))
    (then_0_assume_10 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (then_0_assume_11 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (call_new_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_new_ensures_1 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : (0 ≤ Vermilion.Seq.len m) ∧ (Vermilion.Seq.len m < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ k) ∧ (k < Vermilion.usizeMod))
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : Vermilion.Seq.len m = k)
    (loop_0_exit_5 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_exit_6 : (¬ (k < Vermilion.Seq.len keys)))
    (loop_1_exit_0 : (0 ≤ Vermilion.Seq.len m_2) ∧ (Vermilion.Seq.len m_2 < Vermilion.usizeMod))
    (loop_1_exit_1 : (0 ≤ s) ∧ (s < Vermilion.usizeMod))
    (loop_1_exit_2 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_exit_3 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_exit_4 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_exit_5 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_exit_6 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_exit_7 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_exit_8 : (¬ (s < Vermilion.Seq.len paths)))
    (assume_29 : (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len paths)) → reclaim_plan.key_marked_spec keys m_2 (Vermilion.Seq.index paths q)))) :
    core.option.Option.is_Some (core.option.Option.Some m_2) → reclaim_plan.mask_matches_paths_spec keys paths (core.option.Option.get_Some__0 (core.option.Option.Some m_2)) := by
  intro _
  exact ⟨⟨loop_1_exit_5, fun t ht => by
    obtain ⟨q, hq, e⟩ := loop_1_exit_6 t ht
    exact ⟨q, ⟨hq.1, by omega⟩, e⟩⟩, fun q hq => assume_29 q hq⟩
-- vrml:end reclaim_plan.key_mask.ensures_24

end reclaim_plan.key_mask

