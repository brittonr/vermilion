import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.project_row

-- vrml:begin reclaim_plan.project_row.call_requires_0 87144eafb0df3e0c
/--
Generated VC `reclaim_plan.project_row.call_requires_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1123:16-1123:29`
- Rust/SST construct: call vec_index
- AssertId: `0`
- Statement hash: `87144eafb0df3e0c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index input k⟩
-/
def call_requires_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1123
  startColumn := 16
  endLine := 1123
  endColumn := 29
  assertId := "0"
  functionName := "reclaim_plan.project_row"
  kind := "call_requires"
  statementHash := "87144eafb0df3e0c"
}
@[vrml_obligation] theorem call_requires_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (requires_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (requires_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (requires_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (requires_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (requires_9 : i < Vermilion.Seq.len keys)
    (requires_10 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (requires_11 : Vermilion.Seq.len index_row = Vermilion.Seq.len (Vermilion.Seq.index references i))
    (requires_12 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index input k)))) :
    i < Vermilion.Seq.len references := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.call_requires_0

-- vrml:begin reclaim_plan.project_row.invariant_entry_0_0 4bb5974889cd3800
/--
Generated VC `reclaim_plan.project_row.invariant_entry_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1126:19-1126:38`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `4bb5974889cd3800`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index input k⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1126
  startColumn := 19
  endLine := 1126
  endColumn := 38
  assertId := "0_0"
  functionName := "reclaim_plan.project_row"
  kind := "invariant_entry"
  statementHash := "4bb5974889cd3800"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (requires_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (requires_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (requires_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (requires_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (requires_9 : i < Vermilion.Seq.len keys)
    (requires_10 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (requires_11 : Vermilion.Seq.len index_row = Vermilion.Seq.len (Vermilion.Seq.index references i))
    (requires_12 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index input k))))
    (call_vec_index_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index references i) :
    (0 ≤ 0) ∧ (0 ≤ Vermilion.Seq.len tmp_) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.invariant_entry_0_0

-- vrml:begin reclaim_plan.project_row.invariant_entry_0_1 1eeb072ab134ae56
/--
Generated VC `reclaim_plan.project_row.invariant_entry_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1126:40-1126:54`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `1eeb072ab134ae56`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index input k⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1126
  startColumn := 40
  endLine := 1126
  endColumn := 54
  assertId := "0_1"
  functionName := "reclaim_plan.project_row"
  kind := "invariant_entry"
  statementHash := "1eeb072ab134ae56"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (requires_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (requires_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (requires_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (requires_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (requires_9 : i < Vermilion.Seq.len keys)
    (requires_10 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (requires_11 : Vermilion.Seq.len index_row = Vermilion.Seq.len (Vermilion.Seq.index references i))
    (requires_12 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index input k))))
    (call_vec_index_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index references i) :
    i < Vermilion.Seq.len keys := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.invariant_entry_0_1

-- vrml:begin reclaim_plan.project_row.invariant_entry_0_2 b9a7aeaa1a967bc5
/--
Generated VC `reclaim_plan.project_row.invariant_entry_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1126:56-1126:86`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_2`
- Statement hash: `b9a7aeaa1a967bc5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index input k⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩
-/
def invariant_entry_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1126
  startColumn := 56
  endLine := 1126
  endColumn := 86
  assertId := "0_2"
  functionName := "reclaim_plan.project_row"
  kind := "invariant_entry"
  statementHash := "b9a7aeaa1a967bc5"
}
@[vrml_obligation] theorem invariant_entry_0_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (requires_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (requires_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (requires_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (requires_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (requires_9 : i < Vermilion.Seq.len keys)
    (requires_10 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (requires_11 : Vermilion.Seq.len index_row = Vermilion.Seq.len (Vermilion.Seq.index references i))
    (requires_12 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index input k))))
    (call_vec_index_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index references i) :
    Vermilion.Seq.len references = Vermilion.Seq.len keys := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.invariant_entry_0_2

-- vrml:begin reclaim_plan.project_row.invariant_entry_0_3 8186ad4ab9bca418
/--
Generated VC `reclaim_plan.project_row.invariant_entry_0_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1127:13-1127:41`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_3`
- Statement hash: `8186ad4ab9bca418`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index input k⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩
-/
def invariant_entry_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1127
  startColumn := 13
  endLine := 1127
  endColumn := 41
  assertId := "0_3"
  functionName := "reclaim_plan.project_row"
  kind := "invariant_entry"
  statementHash := "8186ad4ab9bca418"
}
@[vrml_obligation] theorem invariant_entry_0_3
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (requires_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (requires_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (requires_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (requires_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (requires_9 : i < Vermilion.Seq.len keys)
    (requires_10 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (requires_11 : Vermilion.Seq.len index_row = Vermilion.Seq.len (Vermilion.Seq.index references i))
    (requires_12 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index input k))))
    (call_vec_index_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index references i) :
    tmp_ = Vermilion.Seq.index references i := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.invariant_entry_0_3

-- vrml:begin reclaim_plan.project_row.invariant_entry_0_4 d8de0ce2e67f43a6
/--
Generated VC `reclaim_plan.project_row.invariant_entry_0_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1127:43-1127:71`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_4`
- Statement hash: `d8de0ce2e67f43a6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index input k⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩
-/
def invariant_entry_0_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1127
  startColumn := 43
  endLine := 1127
  endColumn := 71
  assertId := "0_4"
  functionName := "reclaim_plan.project_row"
  kind := "invariant_entry"
  statementHash := "d8de0ce2e67f43a6"
}
@[vrml_obligation] theorem invariant_entry_0_4
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (requires_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (requires_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (requires_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (requires_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (requires_9 : i < Vermilion.Seq.len keys)
    (requires_10 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (requires_11 : Vermilion.Seq.len index_row = Vermilion.Seq.len (Vermilion.Seq.index references i))
    (requires_12 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index input k))))
    (call_vec_index_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index references i) :
    Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_ := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.invariant_entry_0_4

-- vrml:begin reclaim_plan.project_row.invariant_entry_0_5 fce3739f264b5491
/--
Generated VC `reclaim_plan.project_row.invariant_entry_0_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1128:13-1128:43`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_5`
- Statement hash: `fce3739f264b5491`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index input k⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩
-/
def invariant_entry_0_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1128
  startColumn := 13
  endLine := 1128
  endColumn := 43
  assertId := "0_5"
  functionName := "reclaim_plan.project_row"
  kind := "invariant_entry"
  statementHash := "fce3739f264b5491"
}
@[vrml_obligation] theorem invariant_entry_0_5
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (requires_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (requires_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (requires_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (requires_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (requires_9 : i < Vermilion.Seq.len keys)
    (requires_10 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (requires_11 : Vermilion.Seq.len index_row = Vermilion.Seq.len (Vermilion.Seq.index references i))
    (requires_12 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index input k))))
    (call_vec_index_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index references i) :
    reclaim_plan.prefix_of_spec input input := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.invariant_entry_0_5

-- vrml:begin reclaim_plan.project_row.invariant_entry_0_6 f5039a8492ad15ca
/--
Generated VC `reclaim_plan.project_row.invariant_entry_0_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1129:13-1129:126`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_6`
- Statement hash: `f5039a8492ad15ca`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index input k⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index input k⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩
-/
def invariant_entry_0_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1129
  startColumn := 13
  endLine := 1129
  endColumn := 126
  assertId := "0_6"
  functionName := "reclaim_plan.project_row"
  kind := "invariant_entry"
  statementHash := "f5039a8492ad15ca"
}
@[vrml_obligation] theorem invariant_entry_0_6
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (requires_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (requires_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (requires_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (requires_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (requires_9 : i < Vermilion.Seq.len keys)
    (requires_10 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (requires_11 : Vermilion.Seq.len index_row = Vermilion.Seq.len (Vermilion.Seq.index references i))
    (requires_12 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index input k))))
    (call_vec_index_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index references i) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index input k))) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.invariant_entry_0_6

-- vrml:begin reclaim_plan.project_row.invariant_entry_0_7 9ce4998cb3eccd33
/--
Generated VC `reclaim_plan.project_row.invariant_entry_0_7`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1130:13-1130:172`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_7`
- Statement hash: `9ce4998cb3eccd33`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.ref_resolved_spec keys references input i q⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index input k⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩
-/
def invariant_entry_0_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1130
  startColumn := 13
  endLine := 1130
  endColumn := 172
  assertId := "0_7"
  functionName := "reclaim_plan.project_row"
  kind := "invariant_entry"
  statementHash := "9ce4998cb3eccd33"
}
@[vrml_obligation] theorem invariant_entry_0_7
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (requires_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (requires_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (requires_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (requires_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (requires_9 : i < Vermilion.Seq.len keys)
    (requires_10 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (requires_11 : Vermilion.Seq.len index_row = Vermilion.Seq.len (Vermilion.Seq.index references i))
    (requires_12 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index input k))))
    (call_vec_index_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index references i) :
    (∀ (q : Int), (((0 ≤ q) ∧ (q < 0)) → reclaim_plan.ref_resolved_spec keys references input i q)) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.invariant_entry_0_7

-- vrml:begin reclaim_plan.project_row.call_requires_2 f12388fbba179367
/--
Generated VC `reclaim_plan.project_row.call_requires_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1133:17-1133:29`
- Rust/SST construct: call vec_index
- AssertId: `2`
- Statement hash: `f12388fbba179367`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩
-/
def call_requires_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1133
  startColumn := 17
  endLine := 1133
  endColumn := 29
  assertId := "2"
  functionName := "reclaim_plan.project_row"
  kind := "call_requires"
  statementHash := "f12388fbba179367"
}
@[vrml_obligation] theorem call_requires_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_) :
    j < Vermilion.Seq.len index_row := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.call_requires_2

-- vrml:begin reclaim_plan.project_row.call_requires_4 68232a2d00d2ccf9
/--
Generated VC `reclaim_plan.project_row.call_requires_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1134:40-1134:47`
- Rust/SST construct: call vec_index
- AssertId: `4`
- Statement hash: `68232a2d00d2ccf9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩
-/
def call_requires_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1134
  startColumn := 40
  endLine := 1134
  endColumn := 47
  assertId := "4"
  functionName := "reclaim_plan.project_row"
  kind := "call_requires"
  statementHash := "68232a2d00d2ccf9"
}
@[vrml_obligation] theorem call_requires_4
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (branch_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys))) :
    tmp__2 < Vermilion.Seq.len keys := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.call_requires_4

-- vrml:begin reclaim_plan.project_row.call_requires_5 80c04aaa442b1d93
/--
Generated VC `reclaim_plan.project_row.call_requires_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1134:50-1134:56`
- Rust/SST construct: call vec_index
- AssertId: `5`
- Statement hash: `80c04aaa442b1d93`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩
-/
def call_requires_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1134
  startColumn := 50
  endLine := 1134
  endColumn := 56
  assertId := "5"
  functionName := "reclaim_plan.project_row"
  kind := "call_requires"
  statementHash := "80c04aaa442b1d93"
}
@[vrml_obligation] theorem call_requires_5
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (branch_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)))
    (call_vec_index_2_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (call_vec_index_2_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (call_vec_index_2_ensures_2 : tmp__3 = Vermilion.Seq.index keys tmp__2) :
    j < Vermilion.Seq.len tmp_ := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.call_requires_5

-- vrml:begin reclaim_plan.project_row.ensures_7_0 9cbaf417ae4b14d2
/--
Generated VC `reclaim_plan.project_row.ensures_7_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1117:9-1117:46`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `7_0`
- Statement hash: `9cbaf417ae4b14d2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩
-/
def ensures_7_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1117
  startColumn := 9
  endLine := 1117
  endColumn := 46
  assertId := "7_0"
  functionName := "reclaim_plan.project_row"
  kind := "ensures"
  statementHash := "9cbaf417ae4b14d2"
}
@[vrml_obligation] theorem ensures_7_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (branch_1 : tmp__5) :
    reclaim_plan.prefix_of_spec input (reclaim_plan.RowProjection.get_RowProjection_edges (reclaim_plan.RowProjection.RowProjection False edges)) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.ensures_7_0

-- vrml:begin reclaim_plan.project_row.ensures_7_1 ccb8d4420019fbe4
/--
Generated VC `reclaim_plan.project_row.ensures_7_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1118:9-1118:143`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `7_1`
- Statement hash: `ccb8d4420019fbe4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges (reclaim_plan.RowProjection.RowProjection False edges)) k⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩
-/
def ensures_7_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1118
  startColumn := 9
  endLine := 1118
  endColumn := 143
  assertId := "7_1"
  functionName := "reclaim_plan.project_row"
  kind := "ensures"
  statementHash := "ccb8d4420019fbe4"
}
@[vrml_obligation] theorem ensures_7_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (branch_1 : tmp__5) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges (reclaim_plan.RowProjection.RowProjection False edges)))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges (reclaim_plan.RowProjection.RowProjection False edges)) k))) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.ensures_7_1

-- vrml:begin reclaim_plan.project_row.ensures_7_2 da342db18150ec25
/--
Generated VC `reclaim_plan.project_row.ensures_7_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1119:9-1120:119`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `7_2`
- Statement hash: `da342db18150ec25`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges (reclaim_plan.RowProjection.RowProjection False edges)) i q⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩
-/
def ensures_7_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1119
  startColumn := 9
  endLine := 1120
  endColumn := 119
  assertId := "7_2"
  functionName := "reclaim_plan.project_row"
  kind := "ensures"
  statementHash := "da342db18150ec25"
}
@[vrml_obligation] theorem ensures_7_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (branch_1 : tmp__5) :
    reclaim_plan.RowProjection.get_RowProjection_ok (reclaim_plan.RowProjection.RowProjection False edges) → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges (reclaim_plan.RowProjection.RowProjection False edges)) i q)) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.ensures_7_2

-- vrml:begin reclaim_plan.project_row.assert_9 165728f23ae52d65
/--
Generated VC `reclaim_plan.project_row.assert_9`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1140:20-1140:48`
- Rust/SST construct: Rust source assertion
- AssertId: `9`
- Statement hash: `165728f23ae52d65`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def assert_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1140
  startColumn := 20
  endLine := 1140
  endColumn := 48
  assertId := "9"
  functionName := "reclaim_plan.project_row"
  kind := "assert"
  statementHash := "165728f23ae52d65"
}
@[vrml_obligation] theorem assert_9
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2)) :
    reclaim_plan.prefix_of_spec edges tmp__post := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.assert_9

-- vrml:begin reclaim_plan.project_row.assert_10 4c8078affa342f87
/--
Generated VC `reclaim_plan.project_row.assert_10`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1142:20-1142:31`
- Rust/SST construct: Rust source assertion
- AssertId: `10`
- Statement hash: `4c8078affa342f87`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def assert_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1142
  startColumn := 20
  endLine := 1142
  endColumn := 31
  assertId := "10"
  functionName := "reclaim_plan.project_row"
  kind := "assert"
  statementHash := "4c8078affa342f87"
}
@[vrml_obligation] theorem assert_10
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post) :
    Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2 := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.assert_10

-- vrml:begin reclaim_plan.project_row.assert_11 a2f27208077e89b3
/--
Generated VC `reclaim_plan.project_row.assert_11`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1143:20-1143:76`
- Rust/SST construct: Rust source assertion
- AssertId: `11`
- Statement hash: `a2f27208077e89b3`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def assert_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1143
  startColumn := 20
  endLine := 1143
  endColumn := 76
  assertId := "11"
  functionName := "reclaim_plan.project_row"
  kind := "assert"
  statementHash := "a2f27208077e89b3"
}
@[vrml_obligation] theorem assert_11
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2) :
    Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.assert_11

-- vrml:begin reclaim_plan.project_row.assert_12 4aa7bfdfa1e59110
/--
Generated VC `reclaim_plan.project_row.assert_12`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1144:20-1144:58`
- Rust/SST construct: Rust source assertion
- AssertId: `12`
- Statement hash: `4aa7bfdfa1e59110`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def assert_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1144
  startColumn := 20
  endLine := 1144
  endColumn := 58
  assertId := "12"
  functionName := "reclaim_plan.project_row"
  kind := "assert"
  statementHash := "4aa7bfdfa1e59110"
}
@[vrml_obligation] theorem assert_12
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) :
    (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.assert_12

-- vrml:begin reclaim_plan.project_row.assert_13 49ec84c1290a50c8
/--
Generated VC `reclaim_plan.project_row.assert_13`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1145:20-1145:62`
- Rust/SST construct: Rust source assertion
- AssertId: `13`
- Statement hash: `49ec84c1290a50c8`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def assert_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1145
  startColumn := 20
  endLine := 1145
  endColumn := 62
  assertId := "13"
  functionName := "reclaim_plan.project_row"
  kind := "assert"
  statementHash := "49ec84c1290a50c8"
}
@[vrml_obligation] theorem assert_13
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))))) :
    reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)) := by
  have hlt : ¬ (tmp__2 ≥ Vermilion.Seq.len keys) := by
    intro h; exact then_1_assume_35 ((then_0_assume_27 h).mpr trivial)
  have e0 : vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)) = i := by
    rw [assert_10]; rfl
  have e1 : vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)) = tmp__2 := by
    rw [assert_10]; rfl
  refine ⟨⟨⟨?_, ?_⟩, ?_⟩, j, assert_12, assert_11⟩
  · rw [e0]; exact loop_0_iteration_15
  · rw [e1]; omega
  · rw [e0, loop_0_iteration_16]; exact loop_0_iteration_15
-- vrml:end reclaim_plan.project_row.assert_13

-- vrml:begin reclaim_plan.project_row.assert_14 1ca0c23db915e490
/--
Generated VC `reclaim_plan.project_row.assert_14`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1148:28-1148:48`
- Rust/SST construct: Rust source assertion
- AssertId: `14`
- Statement hash: `1ca0c23db915e490`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def assert_14_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1148
  startColumn := 28
  endLine := 1148
  endColumn := 48
  assertId := "14"
  functionName := "reclaim_plan.project_row"
  kind := "assert"
  statementHash := "1ca0c23db915e490"
}
@[vrml_obligation] theorem assert_14
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (k : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : True)
    (assume_45 : (0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post))
    (branch_2 : k < Vermilion.Seq.len edges) :
    Vermilion.Seq.index tmp__post k = Vermilion.Seq.index edges k := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.assert_14

-- vrml:begin reclaim_plan.project_row.assert_15 7fd8c6731f51ae48
/--
Generated VC `reclaim_plan.project_row.assert_15`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1146:87-1146:137`
- Rust/SST construct: Rust source assertion
- AssertId: `15`
- Statement hash: `7fd8c6731f51ae48`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def assert_15_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1146
  startColumn := 87
  endLine := 1146
  endColumn := 137
  assertId := "15"
  functionName := "reclaim_plan.project_row"
  kind := "assert"
  statementHash := "7fd8c6731f51ae48"
}
@[vrml_obligation] theorem assert_15
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (k : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : True)
    (assume_45 : (0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post))
    (then_2_assert_14 : (k < Vermilion.Seq.len edges) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index edges k)) :
    reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k) := by
  have hlen : Vermilion.Seq.len tmp__post = Vermilion.Seq.len edges + 1 := by
    rw [call_push_ensures_0, Vermilion.Seq.len_push]
  by_cases hk : k < Vermilion.Seq.len edges
  · rw [then_2_assert_14 hk]; exact loop_0_iteration_20 k ⟨assume_45.1, hk⟩
  · have : k = Vermilion.Seq.len edges := by omega
    rw [this]; exact assert_13
-- vrml:end reclaim_plan.project_row.assert_15

-- vrml:begin reclaim_plan.project_row.assert_16 79e05be886303c3a
/--
Generated VC `reclaim_plan.project_row.assert_16`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1154:28-1154:84`
- Rust/SST construct: Rust source assertion
- AssertId: `16`
- Statement hash: `79e05be886303c3a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post k⟩
-/
def assert_16_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1154
  startColumn := 28
  endLine := 1154
  endColumn := 84
  assertId := "16"
  functionName := "reclaim_plan.project_row"
  kind := "assert"
  statementHash := "79e05be886303c3a"
}
@[vrml_obligation] theorem assert_16
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (q : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : True)
    (assume_46 : (0 ≤ q) ∧ (q < (j + 1)))
    (branch_3 : q < j) :
    reclaim_plan.ref_resolved_spec keys references edges i q := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.assert_16

-- vrml:begin reclaim_plan.project_row.call_requires_17_0 3feaad1c369bc93a
/--
Generated VC `reclaim_plan.project_row.call_requires_17_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1155:21-1155:87`
- Rust/SST construct: call ref_resolved_extend
- AssertId: `17_0`
- Statement hash: `3feaad1c369bc93a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post k⟩
-/
def call_requires_17_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1155
  startColumn := 21
  endLine := 1155
  endColumn := 87
  assertId := "17_0"
  functionName := "reclaim_plan.project_row"
  kind := "call_requires"
  statementHash := "3feaad1c369bc93a"
}
@[vrml_obligation] theorem call_requires_17_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (q : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : True)
    (assume_46 : (0 ≤ q) ∧ (q < (j + 1)))
    (branch_3 : q < j)
    (assert_16 : reclaim_plan.ref_resolved_spec keys references edges i q) :
    reclaim_plan.ref_resolved_spec keys references edges i q := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.call_requires_17_0

-- vrml:begin reclaim_plan.project_row.call_requires_17_1 bd42f863a5c947a7
/--
Generated VC `reclaim_plan.project_row.call_requires_17_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1155:21-1155:87`
- Rust/SST construct: call ref_resolved_extend
- AssertId: `17_1`
- Statement hash: `bd42f863a5c947a7`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post k⟩
-/
def call_requires_17_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1155
  startColumn := 21
  endLine := 1155
  endColumn := 87
  assertId := "17_1"
  functionName := "reclaim_plan.project_row"
  kind := "call_requires"
  statementHash := "bd42f863a5c947a7"
}
@[vrml_obligation] theorem call_requires_17_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (q : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : True)
    (assume_46 : (0 ≤ q) ∧ (q < (j + 1)))
    (branch_3 : q < j)
    (assert_16 : reclaim_plan.ref_resolved_spec keys references edges i q) :
    reclaim_plan.prefix_of_spec edges tmp__post := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.call_requires_17_1

-- vrml:begin reclaim_plan.project_row.assert_18 11651b998664952e
/--
Generated VC `reclaim_plan.project_row.assert_18`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1157:28-1157:63`
- Rust/SST construct: Rust source assertion
- AssertId: `18`
- Statement hash: `11651b998664952e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post k⟩
-/
def assert_18_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1157
  startColumn := 28
  endLine := 1157
  endColumn := 63
  assertId := "18"
  functionName := "reclaim_plan.project_row"
  kind := "assert"
  statementHash := "11651b998664952e"
}
@[vrml_obligation] theorem assert_18
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (q : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : True)
    (assume_46 : (0 ≤ q) ∧ (q < (j + 1)))
    (branch_3 : (¬ (q < j))) :
    Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2 := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.assert_18

-- vrml:begin reclaim_plan.project_row.assert_19 659797cabc812dbf
/--
Generated VC `reclaim_plan.project_row.assert_19`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1158:28-1158:69`
- Rust/SST construct: Rust source assertion
- AssertId: `19`
- Statement hash: `659797cabc812dbf`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post k⟩
-/
def assert_19_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1158
  startColumn := 28
  endLine := 1158
  endColumn := 69
  assertId := "19"
  functionName := "reclaim_plan.project_row"
  kind := "assert"
  statementHash := "659797cabc812dbf"
}
@[vrml_obligation] theorem assert_19
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (q : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : True)
    (assume_46 : (0 ≤ q) ∧ (q < (j + 1)))
    (branch_3 : (¬ (q < j)))
    (assert_18 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2) :
    reclaim_plan.has_edge_spec tmp__post i tmp__2 := by
  have hlen : Vermilion.Seq.len tmp__post = Vermilion.Seq.len edges + 1 := by
    rw [call_push_ensures_0, Vermilion.Seq.len_push]
  have hl0 : 0 ≤ Vermilion.Seq.len edges := by
    unfold Vermilion.Seq.len; omega
  refine ⟨Vermilion.Seq.len edges, ⟨⟨hl0, by omega⟩, ?_⟩, ?_⟩
  · rw [assert_18]; rfl
  · rw [assert_18]; rfl
-- vrml:end reclaim_plan.project_row.assert_19

-- vrml:begin reclaim_plan.project_row.assert_20 6a98ef59159b06e8
/--
Generated VC `reclaim_plan.project_row.assert_20`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1152:17-1152:75`
- Rust/SST construct: Rust source assertion
- AssertId: `20`
- Statement hash: `6a98ef59159b06e8`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post k⟩
-/
def assert_20_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1152
  startColumn := 17
  endLine := 1152
  endColumn := 75
  assertId := "20"
  functionName := "reclaim_plan.project_row"
  kind := "assert"
  statementHash := "6a98ef59159b06e8"
}
@[vrml_obligation] theorem assert_20
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (q : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : True)
    (assume_46 : (0 ≤ q) ∧ (q < (j + 1)))
    (then_3_assert_16 : (q < j) → reclaim_plan.ref_resolved_spec keys references edges i q)
    (then_3_call_ref_resolved_extend_ensures_0 : (q < j) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)
    (else_3_assert_18 : (¬ (q < j)) → (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2))
    (else_3_assert_19 : (¬ (q < j)) → reclaim_plan.has_edge_spec tmp__post i tmp__2) :
    reclaim_plan.ref_resolved_spec keys references tmp__post i q := by
  by_cases hq : q < j
  · exact then_3_call_ref_resolved_extend_ensures_0 hq
  · have hqj : q = j := by have := assume_46.2; omega
    have he := else_3_assert_19 hq
    have hlt : ¬ (tmp__2 ≥ Vermilion.Seq.len keys) := by
      intro h; exact then_1_assume_35 ((then_0_assume_27 h).mpr trivial)
    have h0 : 0 ≤ tmp__2 := by
      exact call_vec_index_1_ensures_0.1
    have e0 : vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)) = i := by
      rw [assert_10]; rfl
    have e1 : vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)) = tmp__2 := by
      rw [assert_10]; rfl
    have hk := assert_11
    rw [e0, e1] at hk
    refine ⟨tmp__2, ⟨⟨h0, by omega⟩, ?_⟩, he⟩
    rw [hqj]; exact hk.symm
-- vrml:end reclaim_plan.project_row.assert_20

-- vrml:begin reclaim_plan.project_row.assert_21 9a36eada1c435aad
/--
Generated VC `reclaim_plan.project_row.assert_21`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1162:24-1162:44`
- Rust/SST construct: Rust source assertion
- AssertId: `21`
- Statement hash: `9a36eada1c435aad`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post k⟩ ⟨reclaim_plan.ref_resolved_spec keys references tmp__post i q⟩
-/
def assert_21_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1162
  startColumn := 24
  endLine := 1162
  endColumn := 44
  assertId := "21"
  functionName := "reclaim_plan.project_row"
  kind := "assert"
  statementHash := "9a36eada1c435aad"
}
@[vrml_obligation] theorem assert_21
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (k_2 : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_46 : True)
    (assume_47 : (0 ≤ k_2) ∧ (k_2 < Vermilion.Seq.len input)) :
    Vermilion.Seq.index edges k_2 = Vermilion.Seq.index input k_2 := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.assert_21

-- vrml:begin reclaim_plan.project_row.assert_22 c3729e9a00fa4296
/--
Generated VC `reclaim_plan.project_row.assert_22`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1161:87-1161:109`
- Rust/SST construct: Rust source assertion
- AssertId: `22`
- Statement hash: `c3729e9a00fa4296`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post k⟩ ⟨reclaim_plan.ref_resolved_spec keys references tmp__post i q⟩
-/
def assert_22_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1161
  startColumn := 87
  endLine := 1161
  endColumn := 109
  assertId := "22"
  functionName := "reclaim_plan.project_row"
  kind := "assert"
  statementHash := "c3729e9a00fa4296"
}
@[vrml_obligation] theorem assert_22
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (k_2 : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_46 : True)
    (assume_47 : (0 ≤ k_2) ∧ (k_2 < Vermilion.Seq.len input))
    (assert_21 : Vermilion.Seq.index edges k_2 = Vermilion.Seq.index input k_2) :
    Vermilion.Seq.index tmp__post k_2 = Vermilion.Seq.index input k_2 := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.assert_22

-- vrml:begin reclaim_plan.project_row.assert_23 ee53bd00621af721
/--
Generated VC `reclaim_plan.project_row.assert_23`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1165:13-1165:18`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `23`
- Statement hash: `ee53bd00621af721`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post k⟩ ⟨reclaim_plan.ref_resolved_spec keys references tmp__post i q⟩ ⟨Vermilion.Seq.index input k⟩
-/
def assert_23_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1165
  startColumn := 13
  endLine := 1165
  endColumn := 18
  assertId := "23"
  functionName := "reclaim_plan.project_row"
  kind := "assert"
  statementHash := "ee53bd00621af721"
}
@[vrml_obligation] theorem assert_23
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_46 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k)))) :
    (0 ≤ (j + 1)) ∧ ((j + 1) < Vermilion.usizeMod) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.assert_23

-- vrml:begin reclaim_plan.project_row.invariant_preserve_0_0 070923d4577cb172
/--
Generated VC `reclaim_plan.project_row.invariant_preserve_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1126:19-1126:38`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `070923d4577cb172`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post k⟩ ⟨reclaim_plan.ref_resolved_spec keys references tmp__post i q⟩ ⟨Vermilion.Seq.index input k⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1126
  startColumn := 19
  endLine := 1126
  endColumn := 38
  assertId := "0_0"
  functionName := "reclaim_plan.project_row"
  kind := "invariant_preserve"
  statementHash := "070923d4577cb172"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_46 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k))))
    (assert_23 : (0 ≤ (j + 1)) ∧ ((j + 1) < Vermilion.usizeMod)) :
    (0 ≤ (Vermilion.emod (j + 1) Vermilion.usizeMod)) ∧ ((Vermilion.emod (j + 1) Vermilion.usizeMod) ≤ Vermilion.Seq.len tmp_) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.invariant_preserve_0_0

-- vrml:begin reclaim_plan.project_row.invariant_preserve_0_1 ce90c78e7c9145ac
/--
Generated VC `reclaim_plan.project_row.invariant_preserve_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1126:40-1126:54`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `ce90c78e7c9145ac`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post k⟩ ⟨reclaim_plan.ref_resolved_spec keys references tmp__post i q⟩ ⟨Vermilion.Seq.index input k⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1126
  startColumn := 40
  endLine := 1126
  endColumn := 54
  assertId := "0_1"
  functionName := "reclaim_plan.project_row"
  kind := "invariant_preserve"
  statementHash := "ce90c78e7c9145ac"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_46 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k))))
    (assert_23 : (0 ≤ (j + 1)) ∧ ((j + 1) < Vermilion.usizeMod)) :
    i < Vermilion.Seq.len keys := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.invariant_preserve_0_1

-- vrml:begin reclaim_plan.project_row.invariant_preserve_0_2 66220115f30b33ff
/--
Generated VC `reclaim_plan.project_row.invariant_preserve_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1126:56-1126:86`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_2`
- Statement hash: `66220115f30b33ff`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post k⟩ ⟨reclaim_plan.ref_resolved_spec keys references tmp__post i q⟩ ⟨Vermilion.Seq.index input k⟩
-/
def invariant_preserve_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1126
  startColumn := 56
  endLine := 1126
  endColumn := 86
  assertId := "0_2"
  functionName := "reclaim_plan.project_row"
  kind := "invariant_preserve"
  statementHash := "66220115f30b33ff"
}
@[vrml_obligation] theorem invariant_preserve_0_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_46 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k))))
    (assert_23 : (0 ≤ (j + 1)) ∧ ((j + 1) < Vermilion.usizeMod)) :
    Vermilion.Seq.len references = Vermilion.Seq.len keys := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.invariant_preserve_0_2

-- vrml:begin reclaim_plan.project_row.invariant_preserve_0_3 0d5a17da4485c19e
/--
Generated VC `reclaim_plan.project_row.invariant_preserve_0_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1127:13-1127:41`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_3`
- Statement hash: `0d5a17da4485c19e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post k⟩ ⟨reclaim_plan.ref_resolved_spec keys references tmp__post i q⟩ ⟨Vermilion.Seq.index input k⟩
-/
def invariant_preserve_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1127
  startColumn := 13
  endLine := 1127
  endColumn := 41
  assertId := "0_3"
  functionName := "reclaim_plan.project_row"
  kind := "invariant_preserve"
  statementHash := "0d5a17da4485c19e"
}
@[vrml_obligation] theorem invariant_preserve_0_3
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_46 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k))))
    (assert_23 : (0 ≤ (j + 1)) ∧ ((j + 1) < Vermilion.usizeMod)) :
    tmp_ = Vermilion.Seq.index references i := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.invariant_preserve_0_3

-- vrml:begin reclaim_plan.project_row.invariant_preserve_0_4 997fa6d36d52f21c
/--
Generated VC `reclaim_plan.project_row.invariant_preserve_0_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1127:43-1127:71`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_4`
- Statement hash: `997fa6d36d52f21c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post k⟩ ⟨reclaim_plan.ref_resolved_spec keys references tmp__post i q⟩ ⟨Vermilion.Seq.index input k⟩
-/
def invariant_preserve_0_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1127
  startColumn := 43
  endLine := 1127
  endColumn := 71
  assertId := "0_4"
  functionName := "reclaim_plan.project_row"
  kind := "invariant_preserve"
  statementHash := "997fa6d36d52f21c"
}
@[vrml_obligation] theorem invariant_preserve_0_4
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_46 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k))))
    (assert_23 : (0 ≤ (j + 1)) ∧ ((j + 1) < Vermilion.usizeMod)) :
    Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_ := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.invariant_preserve_0_4

-- vrml:begin reclaim_plan.project_row.invariant_preserve_0_5 fd07aa2756131e62
/--
Generated VC `reclaim_plan.project_row.invariant_preserve_0_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1128:13-1128:43`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_5`
- Statement hash: `fd07aa2756131e62`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post k⟩ ⟨reclaim_plan.ref_resolved_spec keys references tmp__post i q⟩ ⟨Vermilion.Seq.index input k⟩
-/
def invariant_preserve_0_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1128
  startColumn := 13
  endLine := 1128
  endColumn := 43
  assertId := "0_5"
  functionName := "reclaim_plan.project_row"
  kind := "invariant_preserve"
  statementHash := "fd07aa2756131e62"
}
@[vrml_obligation] theorem invariant_preserve_0_5
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_46 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k))))
    (assert_23 : (0 ≤ (j + 1)) ∧ ((j + 1) < Vermilion.usizeMod)) :
    reclaim_plan.prefix_of_spec input tmp__post := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.invariant_preserve_0_5

-- vrml:begin reclaim_plan.project_row.invariant_preserve_0_6 6c8dfd709ed8a77c
/--
Generated VC `reclaim_plan.project_row.invariant_preserve_0_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1129:13-1129:126`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_6`
- Statement hash: `6c8dfd709ed8a77c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index tmp__post k⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post k⟩ ⟨reclaim_plan.ref_resolved_spec keys references tmp__post i q⟩ ⟨Vermilion.Seq.index input k⟩
-/
def invariant_preserve_0_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1129
  startColumn := 13
  endLine := 1129
  endColumn := 126
  assertId := "0_6"
  functionName := "reclaim_plan.project_row"
  kind := "invariant_preserve"
  statementHash := "6c8dfd709ed8a77c"
}
@[vrml_obligation] theorem invariant_preserve_0_6
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_46 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k))))
    (assert_23 : (0 ≤ (j + 1)) ∧ ((j + 1) < Vermilion.usizeMod)) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.invariant_preserve_0_6

-- vrml:begin reclaim_plan.project_row.invariant_preserve_0_7 be5645372aee7c47
/--
Generated VC `reclaim_plan.project_row.invariant_preserve_0_7`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1130:13-1130:172`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_7`
- Statement hash: `be5645372aee7c47`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.ref_resolved_spec keys references tmp__post i q⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post k⟩ ⟨reclaim_plan.ref_resolved_spec keys references tmp__post i q⟩ ⟨Vermilion.Seq.index input k⟩
-/
def invariant_preserve_0_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1130
  startColumn := 13
  endLine := 1130
  endColumn := 172
  assertId := "0_7"
  functionName := "reclaim_plan.project_row"
  kind := "invariant_preserve"
  statementHash := "be5645372aee7c47"
}
@[vrml_obligation] theorem invariant_preserve_0_7
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_46 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k))))
    (assert_23 : (0 ≤ (j + 1)) ∧ ((j + 1) < Vermilion.usizeMod)) :
    (∀ (q : Int), (((0 ≤ q) ∧ (q < (Vermilion.emod (j + 1) Vermilion.usizeMod))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)) := by
  have hr : Vermilion.emod (j + 1) Vermilion.usizeMod = j + 1 := Vermilion.emod_usizeMod_of_lt assert_23.1 assert_23.2
  rw [hr]; exact assume_45
-- vrml:end reclaim_plan.project_row.invariant_preserve_0_7

-- vrml:begin reclaim_plan.project_row.assert_0_decreases ab02d2cc89a39bfa
/--
Generated VC `reclaim_plan.project_row.assert_0_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1131:19-1131:32`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `ab02d2cc89a39bfa`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post k⟩ ⟨reclaim_plan.ref_resolved_spec keys references tmp__post i q⟩ ⟨Vermilion.Seq.index input k⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1131
  startColumn := 19
  endLine := 1131
  endColumn := 32
  assertId := "0_decreases"
  functionName := "reclaim_plan.project_row"
  kind := "assert"
  statementHash := "ab02d2cc89a39bfa"
}
@[vrml_obligation] theorem assert_0_decreases
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (tmp__2 : Int)
    (tmp__5 : Prop)
    (tmp__3 : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_13 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__2) ∧ (tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0) < Vermilion.usizeMod))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_46 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k))))
    (assert_23 : (0 ≤ (j + 1)) ∧ ((j + 1) < Vermilion.usizeMod)) :
    ((0 ≤ (Vermilion.Seq.len tmp_ - (Vermilion.emod (j + 1) Vermilion.usizeMod))) ∧ ((Vermilion.Seq.len tmp_ - (Vermilion.emod (j + 1) Vermilion.usizeMod)) < (Vermilion.Seq.len tmp_ - j))) ∨ (((Vermilion.Seq.len tmp_ - (Vermilion.emod (j + 1) Vermilion.usizeMod)) = (Vermilion.Seq.len tmp_ - j)) ∧ False) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.assert_0_decreases

-- vrml:begin reclaim_plan.project_row.ensures_24_0 2be06494061124ef
/--
Generated VC `reclaim_plan.project_row.ensures_24_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1117:9-1117:46`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `24_0`
- Statement hash: `2be06494061124ef`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index input k⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩
-/
def ensures_24_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1117
  startColumn := 9
  endLine := 1117
  endColumn := 46
  assertId := "24_0"
  functionName := "reclaim_plan.project_row"
  kind := "ensures"
  statementHash := "2be06494061124ef"
}
@[vrml_obligation] theorem ensures_24_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (requires_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (requires_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (requires_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (requires_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (requires_9 : i < Vermilion.Seq.len keys)
    (requires_10 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (requires_11 : Vermilion.Seq.len index_row = Vermilion.Seq.len (Vermilion.Seq.index references i))
    (requires_12 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index input k))))
    (call_vec_index_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_exit_0 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_exit_2 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_exit_3 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_exit_4 : i < Vermilion.Seq.len keys)
    (loop_0_exit_5 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_exit_6 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_exit_7 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_exit_8 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_exit_9 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_exit_10 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_exit_11 : (¬ (j < Vermilion.Seq.len tmp_))) :
    reclaim_plan.prefix_of_spec input (reclaim_plan.RowProjection.get_RowProjection_edges (reclaim_plan.RowProjection.RowProjection True edges)) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.ensures_24_0

-- vrml:begin reclaim_plan.project_row.ensures_24_1 40d4ff0156e842c6
/--
Generated VC `reclaim_plan.project_row.ensures_24_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1118:9-1118:143`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `24_1`
- Statement hash: `40d4ff0156e842c6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges (reclaim_plan.RowProjection.RowProjection True edges)) k⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index input k⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩
-/
def ensures_24_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1118
  startColumn := 9
  endLine := 1118
  endColumn := 143
  assertId := "24_1"
  functionName := "reclaim_plan.project_row"
  kind := "ensures"
  statementHash := "40d4ff0156e842c6"
}
@[vrml_obligation] theorem ensures_24_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (requires_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (requires_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (requires_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (requires_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (requires_9 : i < Vermilion.Seq.len keys)
    (requires_10 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (requires_11 : Vermilion.Seq.len index_row = Vermilion.Seq.len (Vermilion.Seq.index references i))
    (requires_12 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index input k))))
    (call_vec_index_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_exit_0 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_exit_2 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_exit_3 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_exit_4 : i < Vermilion.Seq.len keys)
    (loop_0_exit_5 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_exit_6 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_exit_7 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_exit_8 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_exit_9 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_exit_10 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_exit_11 : (¬ (j < Vermilion.Seq.len tmp_))) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges (reclaim_plan.RowProjection.RowProjection True edges)))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges (reclaim_plan.RowProjection.RowProjection True edges)) k))) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_row.ensures_24_1

-- vrml:begin reclaim_plan.project_row.ensures_24_2 c65a2251eba8320f
/--
Generated VC `reclaim_plan.project_row.ensures_24_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1119:9-1120:119`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `24_2`
- Statement hash: `c65a2251eba8320f`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges (reclaim_plan.RowProjection.RowProjection True edges)) i q⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index input k⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩
-/
def ensures_24_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1119
  startColumn := 9
  endLine := 1120
  endColumn := 119
  assertId := "24_2"
  functionName := "reclaim_plan.project_row"
  kind := "ensures"
  statementHash := "c65a2251eba8320f"
}
@[vrml_obligation] theorem ensures_24_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (requires_5 : (0 ≤ Vermilion.Seq.len index_row) ∧ (Vermilion.Seq.len index_row < Vermilion.usizeMod))
    (requires_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → ((0 ≤ Vermilion.Seq.index index_row vrml_i0) ∧ (Vermilion.Seq.index index_row vrml_i0 < Vermilion.usizeMod)))))
    (requires_7 : (0 ≤ Vermilion.Seq.len input) ∧ (Vermilion.Seq.len input < Vermilion.usizeMod))
    (requires_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0) < Vermilion.usizeMod))))))
    (requires_9 : i < Vermilion.Seq.len keys)
    (requires_10 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (requires_11 : Vermilion.Seq.len index_row = Vermilion.Seq.len (Vermilion.Seq.index references i))
    (requires_12 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index input k))))
    (call_vec_index_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_exit_0 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_exit_2 : (0 ≤ j) ∧ (j < Vermilion.usizeMod))
    (loop_0_exit_3 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_exit_4 : i < Vermilion.Seq.len keys)
    (loop_0_exit_5 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_exit_6 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_exit_7 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_exit_8 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_exit_9 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_exit_10 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_exit_11 : (¬ (j < Vermilion.Seq.len tmp_))) :
    reclaim_plan.RowProjection.get_RowProjection_ok (reclaim_plan.RowProjection.RowProjection True edges) → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges (reclaim_plan.RowProjection.RowProjection True edges)) i q)) := by
  intro _ q hq
  exact loop_0_exit_10 q ⟨hq.1, by rw [loop_0_exit_6] at loop_0_exit_11; omega⟩
-- vrml:end reclaim_plan.project_row.ensures_24_2

end reclaim_plan.project_row

