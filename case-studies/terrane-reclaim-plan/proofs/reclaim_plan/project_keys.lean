import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

-- vrml:user:begin
theorem ref_resolved_extend_local (keys : Vermilion.Seq (Vermilion.Seq Int))
    (refs : Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int)))
    (a b : Vermilion.Seq (vermilion.tuple_2 Int Int)) (i j : Int)
    (h : reclaim_plan.ref_resolved_spec keys refs a i j) (hp : reclaim_plan.prefix_of_spec a b) :
    reclaim_plan.ref_resolved_spec keys refs b i j := by
  obtain ⟨t, ⟨⟨ht0, ht1⟩, hkey⟩, e, ⟨⟨he0, he1⟩, hu⟩, hv⟩ := h
  obtain ⟨hlen, hpre⟩ := hp
  refine ⟨t, ⟨⟨ht0, ht1⟩, hkey⟩, e, ⟨⟨he0, by omega⟩, ?_⟩, ?_⟩
  · rw [hpre e ⟨he0, he1⟩]; exact hu
  · rw [hpre e ⟨he0, he1⟩]; exact hv
-- vrml:user:end

namespace reclaim_plan.project_keys

-- vrml:begin reclaim_plan.project_keys.ensures_6 7dbfae7fc7194275
/--
Generated VC `reclaim_plan.project_keys.ensures_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1186:13-1186:103`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `6`
- Statement hash: `7dbfae7fc7194275`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩
-/
def ensures_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1186
  startColumn := 13
  endLine := 1186
  endColumn := 103
  assertId := "6"
  functionName := "reclaim_plan.project_keys"
  kind := "ensures"
  statementHash := "7dbfae7fc7194275"
}
@[vrml_obligation] theorem ensures_6
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (requires_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (assume_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod)))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod)))
    (else_1_assume_17 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod)))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (branch_2 : tmp__2)
    (call_new_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (call_new_ensures_2 : tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))) :
    reclaim_plan.KeyProjection.get_KeyProjection_ok (reclaim_plan.KeyProjection.KeyProjection False tmp__3) → reclaim_plan.projection_valid_spec keys references root_keys (reclaim_plan.KeyProjection.get_KeyProjection_edges (reclaim_plan.KeyProjection.KeyProjection False tmp__3)) roots := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.ensures_6

-- vrml:begin reclaim_plan.project_keys.ensures_9 98caba806090f5ac
/--
Generated VC `reclaim_plan.project_keys.ensures_9`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1186:13-1186:103`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `9`
- Statement hash: `98caba806090f5ac`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩
-/
def ensures_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1186
  startColumn := 13
  endLine := 1186
  endColumn := 103
  assertId := "9"
  functionName := "reclaim_plan.project_keys"
  kind := "ensures"
  statementHash := "98caba806090f5ac"
}
@[vrml_obligation] theorem ensures_9
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (requires_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (assume_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod)))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod)))
    (else_1_assume_17 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod)))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (branch_3 : (¬ reclaim_plan.keys_sorted_spec keys))
    (call_new_1_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (call_new_1_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (call_new_1_ensures_2 : tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))) :
    reclaim_plan.KeyProjection.get_KeyProjection_ok (reclaim_plan.KeyProjection.KeyProjection False tmp__4) → reclaim_plan.projection_valid_spec keys references root_keys (reclaim_plan.KeyProjection.get_KeyProjection_edges (reclaim_plan.KeyProjection.KeyProjection False tmp__4)) roots := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.ensures_9

-- vrml:begin reclaim_plan.project_keys.invariant_entry_0_0 16fc4caa0e6bd4ff
/--
Generated VC `reclaim_plan.project_keys.invariant_entry_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1197:19-1197:40`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `16fc4caa0e6bd4ff`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1197
  startColumn := 19
  endLine := 1197
  endColumn := 40
  assertId := "0_0"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_entry"
  statementHash := "16fc4caa0e6bd4ff"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (requires_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (assume_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod)))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod)))
    (else_1_assume_17 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod)))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (then_3_call_new_1_ensures_0 : (¬ reclaim_plan.keys_sorted_spec keys) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (then_3_call_new_1_ensures_1 : (¬ reclaim_plan.keys_sorted_spec keys) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (then_3_call_new_1_ensures_2 : (¬ reclaim_plan.keys_sorted_spec keys) → (tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_3_assume_28 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (then_3_assume_29 : (¬ reclaim_plan.keys_sorted_spec keys) → False) :
    (0 ≤ 0) ∧ (0 ≤ Vermilion.Seq.len roots) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.invariant_entry_0_0

-- vrml:begin reclaim_plan.project_keys.invariant_entry_0_1 1a0aaa816350014b
/--
Generated VC `reclaim_plan.project_keys.invariant_entry_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1197:42-1197:72`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `1a0aaa816350014b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1197
  startColumn := 42
  endLine := 1197
  endColumn := 72
  assertId := "0_1"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_entry"
  statementHash := "1a0aaa816350014b"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (requires_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (assume_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod)))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod)))
    (else_1_assume_17 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod)))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (then_3_call_new_1_ensures_0 : (¬ reclaim_plan.keys_sorted_spec keys) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (then_3_call_new_1_ensures_1 : (¬ reclaim_plan.keys_sorted_spec keys) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (then_3_call_new_1_ensures_2 : (¬ reclaim_plan.keys_sorted_spec keys) → (tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_3_assume_28 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (then_3_assume_29 : (¬ reclaim_plan.keys_sorted_spec keys) → False) :
    Vermilion.Seq.len roots = Vermilion.Seq.len root_keys := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.invariant_entry_0_1

-- vrml:begin reclaim_plan.project_keys.invariant_entry_0_2 c8fb5b40492b1c1f
/--
Generated VC `reclaim_plan.project_keys.invariant_entry_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1197:74-1197:89`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_2`
- Statement hash: `c8fb5b40492b1c1f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩
-/
def invariant_entry_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1197
  startColumn := 74
  endLine := 1197
  endColumn := 89
  assertId := "0_2"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_entry"
  statementHash := "c8fb5b40492b1c1f"
}
@[vrml_obligation] theorem invariant_entry_0_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (requires_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (assume_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod)))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod)))
    (else_1_assume_17 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod)))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (then_3_call_new_1_ensures_0 : (¬ reclaim_plan.keys_sorted_spec keys) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (then_3_call_new_1_ensures_1 : (¬ reclaim_plan.keys_sorted_spec keys) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (then_3_call_new_1_ensures_2 : (¬ reclaim_plan.keys_sorted_spec keys) → (tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_3_assume_28 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (then_3_assume_29 : (¬ reclaim_plan.keys_sorted_spec keys) → False) :
    Vermilion.Seq.len keys = Vermilion.Seq.len keys := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.invariant_entry_0_2

-- vrml:begin reclaim_plan.project_keys.invariant_entry_0_3 5dc668bf028a7f85
/--
Generated VC `reclaim_plan.project_keys.invariant_entry_0_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1198:13-1199:94`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_3`
- Statement hash: `5dc668bf028a7f85`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩
-/
def invariant_entry_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1198
  startColumn := 13
  endLine := 1199
  endColumn := 94
  assertId := "0_3"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_entry"
  statementHash := "5dc668bf028a7f85"
}
@[vrml_obligation] theorem invariant_entry_0_3
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (requires_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (assume_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod)))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod)))
    (else_1_assume_17 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod)))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (then_3_call_new_1_ensures_0 : (¬ reclaim_plan.keys_sorted_spec keys) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (then_3_call_new_1_ensures_1 : (¬ reclaim_plan.keys_sorted_spec keys) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (then_3_call_new_1_ensures_2 : (¬ reclaim_plan.keys_sorted_spec keys) → (tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_3_assume_28 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (then_3_assume_29 : (¬ reclaim_plan.keys_sorted_spec keys) → False) :
    (∀ (q : Int), (((0 ≤ q) ∧ (q < 0)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.invariant_entry_0_3

-- vrml:begin reclaim_plan.project_keys.call_requires_11 42424295acbc8b70
/--
Generated VC `reclaim_plan.project_keys.call_requires_11`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1202:12-1202:20`
- Rust/SST construct: call vec_index
- AssertId: `11`
- Statement hash: `42424295acbc8b70`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩
-/
def call_requires_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1202
  startColumn := 12
  endLine := 1202
  endColumn := 20
  assertId := "11"
  functionName := "reclaim_plan.project_keys"
  kind := "call_requires"
  statementHash := "42424295acbc8b70"
}
@[vrml_obligation] theorem call_requires_11
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_0_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_0_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_0_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_0_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_0_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_iteration_20 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_21 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_iteration_22 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_23 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_iteration_24 : r < Vermilion.Seq.len roots) :
    r < Vermilion.Seq.len roots := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.call_requires_11

-- vrml:begin reclaim_plan.project_keys.call_requires_12 cbd5f41e42e398bb
/--
Generated VC `reclaim_plan.project_keys.call_requires_12`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1202:43-1202:51`
- Rust/SST construct: call vec_index
- AssertId: `12`
- Statement hash: `cbd5f41e42e398bb`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩
-/
def call_requires_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1202
  startColumn := 43
  endLine := 1202
  endColumn := 51
  assertId := "12"
  functionName := "reclaim_plan.project_keys"
  kind := "call_requires"
  statementHash := "cbd5f41e42e398bb"
}
@[vrml_obligation] theorem call_requires_12
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__5 : Int)
    (tmp__9 : Prop)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_0_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_0_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_0_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_0_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_0_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_iteration_20 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_21 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_iteration_22 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_23 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_iteration_24 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : (0 ≤ tmp__5) ∧ (tmp__5 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__5 = Vermilion.Seq.index roots r)
    (branch_4 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys))) :
    r < Vermilion.Seq.len roots := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.call_requires_12

-- vrml:begin reclaim_plan.project_keys.call_requires_13 e814ca5151a671c7
/--
Generated VC `reclaim_plan.project_keys.call_requires_13`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1202:38-1202:52`
- Rust/SST construct: call vec_index
- AssertId: `13`
- Statement hash: `e814ca5151a671c7`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩
-/
def call_requires_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1202
  startColumn := 38
  endLine := 1202
  endColumn := 52
  assertId := "13"
  functionName := "reclaim_plan.project_keys"
  kind := "call_requires"
  statementHash := "e814ca5151a671c7"
}
@[vrml_obligation] theorem call_requires_13
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__5 : Int)
    (tmp__9 : Prop)
    (tmp__6 : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_0_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_0_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_0_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_0_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_0_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_iteration_20 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_21 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_iteration_22 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_23 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_iteration_24 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : (0 ≤ tmp__5) ∧ (tmp__5 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__5 = Vermilion.Seq.index roots r)
    (branch_4 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)))
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__6) ∧ (tmp__6 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__6 = Vermilion.Seq.index roots r) :
    tmp__6 < Vermilion.Seq.len keys := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.call_requires_13

-- vrml:begin reclaim_plan.project_keys.call_requires_14 e55f59596c3d6600
/--
Generated VC `reclaim_plan.project_keys.call_requires_14`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1202:55-1202:67`
- Rust/SST construct: call vec_index
- AssertId: `14`
- Statement hash: `e55f59596c3d6600`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__7 vrml_i0⟩
-/
def call_requires_14_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1202
  startColumn := 55
  endLine := 1202
  endColumn := 67
  assertId := "14"
  functionName := "reclaim_plan.project_keys"
  kind := "call_requires"
  statementHash := "e55f59596c3d6600"
}
@[vrml_obligation] theorem call_requires_14
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__5 : Int)
    (tmp__9 : Prop)
    (tmp__6 : Int)
    (tmp__7 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_0_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_0_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_0_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_0_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_0_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_iteration_20 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_21 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_iteration_22 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_23 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_iteration_24 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : (0 ≤ tmp__5) ∧ (tmp__5 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__5 = Vermilion.Seq.index roots r)
    (branch_4 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)))
    (call_vec_index_1_ensures_0 : (0 ≤ tmp__6) ∧ (tmp__6 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : tmp__6 = Vermilion.Seq.index roots r)
    (call_vec_index_2_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__7) ∧ (Vermilion.Seq.len tmp__7 < Vermilion.usizeMod))
    (call_vec_index_2_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__7)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__7 vrml_i0))))
    (call_vec_index_2_ensures_2 : tmp__7 = Vermilion.Seq.index keys tmp__6) :
    r < Vermilion.Seq.len root_keys := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.call_requires_14

-- vrml:begin reclaim_plan.project_keys.ensures_17 eb0ea9fcffe3ce08
/--
Generated VC `reclaim_plan.project_keys.ensures_17`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1186:13-1186:103`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `17`
- Statement hash: `eb0ea9fcffe3ce08`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__7 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__8 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__10 vrml_i0⟩
-/
def ensures_17_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1186
  startColumn := 13
  endLine := 1186
  endColumn := 103
  assertId := "17"
  functionName := "reclaim_plan.project_keys"
  kind := "ensures"
  statementHash := "eb0ea9fcffe3ce08"
}
@[vrml_obligation] theorem ensures_17
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__5 : Int)
    (tmp__9 : Prop)
    (tmp__6 : Int)
    (tmp__7 : (Vermilion.Seq Int))
    (tmp__8 : (Vermilion.Seq Int))
    (tmp__10 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_0_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_0_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_0_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_0_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_0_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_iteration_20 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_21 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_iteration_22 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_23 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_iteration_24 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : (0 ≤ tmp__5) ∧ (tmp__5 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__5 = Vermilion.Seq.index roots r)
    (then_4_assume_28 : (tmp__5 ≥ Vermilion.Seq.len keys) → (tmp__9 ↔ True))
    (else_4_call_vec_index_1_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → ((0 ≤ tmp__6) ∧ (tmp__6 < Vermilion.usizeMod)))
    (else_4_call_vec_index_1_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__6 = Vermilion.Seq.index roots r))
    (else_4_call_vec_index_2_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__7) ∧ (Vermilion.Seq.len tmp__7 < Vermilion.usizeMod)))
    (else_4_call_vec_index_2_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__7)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__7 vrml_i0))))
    (else_4_call_vec_index_2_ensures_2 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__7 = Vermilion.Seq.index keys tmp__6))
    (else_4_call_vec_index_3_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__8) ∧ (Vermilion.Seq.len tmp__8 < Vermilion.usizeMod)))
    (else_4_call_vec_index_3_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__8)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__8 vrml_i0))))
    (else_4_call_vec_index_3_ensures_2 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__8 = Vermilion.Seq.index root_keys r))
    (else_4_assume_36 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__9 ↔ (¬ (tmp__7 = tmp__8))))
    (branch_5 : tmp__9)
    (call_new_2_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__10) ∧ (Vermilion.Seq.len tmp__10 < Vermilion.usizeMod))
    (call_new_2_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__10)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__10 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__10 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__10 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__10 vrml_i0) < Vermilion.usizeMod))))))
    (call_new_2_ensures_2 : tmp__10 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))) :
    reclaim_plan.KeyProjection.get_KeyProjection_ok (reclaim_plan.KeyProjection.KeyProjection False tmp__10) → reclaim_plan.projection_valid_spec keys references root_keys (reclaim_plan.KeyProjection.get_KeyProjection_edges (reclaim_plan.KeyProjection.KeyProjection False tmp__10)) roots := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.ensures_17

-- vrml:begin reclaim_plan.project_keys.assert_18 62f7ba086e772b1b
/--
Generated VC `reclaim_plan.project_keys.assert_18`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1205:13-1205:18`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `18`
- Statement hash: `62f7ba086e772b1b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__7 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__8 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__10 vrml_i0⟩
-/
def assert_18_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1205
  startColumn := 13
  endLine := 1205
  endColumn := 18
  assertId := "18"
  functionName := "reclaim_plan.project_keys"
  kind := "assert"
  statementHash := "62f7ba086e772b1b"
}
@[vrml_obligation] theorem assert_18
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__5 : Int)
    (tmp__9 : Prop)
    (tmp__6 : Int)
    (tmp__7 : (Vermilion.Seq Int))
    (tmp__8 : (Vermilion.Seq Int))
    (tmp__10 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_0_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_0_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_0_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_0_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_0_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_iteration_20 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_21 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_iteration_22 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_23 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_iteration_24 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : (0 ≤ tmp__5) ∧ (tmp__5 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__5 = Vermilion.Seq.index roots r)
    (then_4_assume_28 : (tmp__5 ≥ Vermilion.Seq.len keys) → (tmp__9 ↔ True))
    (else_4_call_vec_index_1_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → ((0 ≤ tmp__6) ∧ (tmp__6 < Vermilion.usizeMod)))
    (else_4_call_vec_index_1_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__6 = Vermilion.Seq.index roots r))
    (else_4_call_vec_index_2_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__7) ∧ (Vermilion.Seq.len tmp__7 < Vermilion.usizeMod)))
    (else_4_call_vec_index_2_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__7)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__7 vrml_i0))))
    (else_4_call_vec_index_2_ensures_2 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__7 = Vermilion.Seq.index keys tmp__6))
    (else_4_call_vec_index_3_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__8) ∧ (Vermilion.Seq.len tmp__8 < Vermilion.usizeMod)))
    (else_4_call_vec_index_3_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__8)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__8 vrml_i0))))
    (else_4_call_vec_index_3_ensures_2 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__8 = Vermilion.Seq.index root_keys r))
    (else_4_assume_36 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__9 ↔ (¬ (tmp__7 = tmp__8))))
    (then_5_call_new_2_ensures_0 : tmp__9 → ((0 ≤ Vermilion.Seq.len tmp__10) ∧ (Vermilion.Seq.len tmp__10 < Vermilion.usizeMod)))
    (then_5_call_new_2_ensures_1 : tmp__9 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__10)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__10 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__10 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__10 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__10 vrml_i0) < Vermilion.usizeMod))))))
    (then_5_call_new_2_ensures_2 : tmp__9 → (tmp__10 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_5_assume_41 : tmp__9 → False)
    (then_5_assume_42 : tmp__9 → False) :
    (0 ≤ (r + 1)) ∧ ((r + 1) < Vermilion.usizeMod) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.assert_18

-- vrml:begin reclaim_plan.project_keys.invariant_preserve_0_0 c3d238f290eaa7c1
/--
Generated VC `reclaim_plan.project_keys.invariant_preserve_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1197:19-1197:40`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `c3d238f290eaa7c1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__7 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__8 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__10 vrml_i0⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1197
  startColumn := 19
  endLine := 1197
  endColumn := 40
  assertId := "0_0"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_preserve"
  statementHash := "c3d238f290eaa7c1"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__5 : Int)
    (tmp__9 : Prop)
    (tmp__6 : Int)
    (tmp__7 : (Vermilion.Seq Int))
    (tmp__8 : (Vermilion.Seq Int))
    (tmp__10 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_0_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_0_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_0_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_0_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_0_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_iteration_20 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_21 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_iteration_22 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_23 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_iteration_24 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : (0 ≤ tmp__5) ∧ (tmp__5 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__5 = Vermilion.Seq.index roots r)
    (then_4_assume_28 : (tmp__5 ≥ Vermilion.Seq.len keys) → (tmp__9 ↔ True))
    (else_4_call_vec_index_1_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → ((0 ≤ tmp__6) ∧ (tmp__6 < Vermilion.usizeMod)))
    (else_4_call_vec_index_1_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__6 = Vermilion.Seq.index roots r))
    (else_4_call_vec_index_2_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__7) ∧ (Vermilion.Seq.len tmp__7 < Vermilion.usizeMod)))
    (else_4_call_vec_index_2_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__7)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__7 vrml_i0))))
    (else_4_call_vec_index_2_ensures_2 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__7 = Vermilion.Seq.index keys tmp__6))
    (else_4_call_vec_index_3_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__8) ∧ (Vermilion.Seq.len tmp__8 < Vermilion.usizeMod)))
    (else_4_call_vec_index_3_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__8)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__8 vrml_i0))))
    (else_4_call_vec_index_3_ensures_2 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__8 = Vermilion.Seq.index root_keys r))
    (else_4_assume_36 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__9 ↔ (¬ (tmp__7 = tmp__8))))
    (then_5_call_new_2_ensures_0 : tmp__9 → ((0 ≤ Vermilion.Seq.len tmp__10) ∧ (Vermilion.Seq.len tmp__10 < Vermilion.usizeMod)))
    (then_5_call_new_2_ensures_1 : tmp__9 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__10)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__10 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__10 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__10 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__10 vrml_i0) < Vermilion.usizeMod))))))
    (then_5_call_new_2_ensures_2 : tmp__9 → (tmp__10 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_5_assume_41 : tmp__9 → False)
    (then_5_assume_42 : tmp__9 → False)
    (assert_18 : (0 ≤ (r + 1)) ∧ ((r + 1) < Vermilion.usizeMod)) :
    (0 ≤ (Vermilion.emod (r + 1) Vermilion.usizeMod)) ∧ ((Vermilion.emod (r + 1) Vermilion.usizeMod) ≤ Vermilion.Seq.len roots) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.invariant_preserve_0_0

-- vrml:begin reclaim_plan.project_keys.invariant_preserve_0_1 36fe18c08a291d5d
/--
Generated VC `reclaim_plan.project_keys.invariant_preserve_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1197:42-1197:72`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `36fe18c08a291d5d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__7 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__8 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__10 vrml_i0⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1197
  startColumn := 42
  endLine := 1197
  endColumn := 72
  assertId := "0_1"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_preserve"
  statementHash := "36fe18c08a291d5d"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__5 : Int)
    (tmp__9 : Prop)
    (tmp__6 : Int)
    (tmp__7 : (Vermilion.Seq Int))
    (tmp__8 : (Vermilion.Seq Int))
    (tmp__10 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_0_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_0_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_0_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_0_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_0_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_iteration_20 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_21 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_iteration_22 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_23 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_iteration_24 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : (0 ≤ tmp__5) ∧ (tmp__5 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__5 = Vermilion.Seq.index roots r)
    (then_4_assume_28 : (tmp__5 ≥ Vermilion.Seq.len keys) → (tmp__9 ↔ True))
    (else_4_call_vec_index_1_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → ((0 ≤ tmp__6) ∧ (tmp__6 < Vermilion.usizeMod)))
    (else_4_call_vec_index_1_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__6 = Vermilion.Seq.index roots r))
    (else_4_call_vec_index_2_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__7) ∧ (Vermilion.Seq.len tmp__7 < Vermilion.usizeMod)))
    (else_4_call_vec_index_2_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__7)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__7 vrml_i0))))
    (else_4_call_vec_index_2_ensures_2 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__7 = Vermilion.Seq.index keys tmp__6))
    (else_4_call_vec_index_3_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__8) ∧ (Vermilion.Seq.len tmp__8 < Vermilion.usizeMod)))
    (else_4_call_vec_index_3_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__8)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__8 vrml_i0))))
    (else_4_call_vec_index_3_ensures_2 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__8 = Vermilion.Seq.index root_keys r))
    (else_4_assume_36 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__9 ↔ (¬ (tmp__7 = tmp__8))))
    (then_5_call_new_2_ensures_0 : tmp__9 → ((0 ≤ Vermilion.Seq.len tmp__10) ∧ (Vermilion.Seq.len tmp__10 < Vermilion.usizeMod)))
    (then_5_call_new_2_ensures_1 : tmp__9 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__10)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__10 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__10 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__10 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__10 vrml_i0) < Vermilion.usizeMod))))))
    (then_5_call_new_2_ensures_2 : tmp__9 → (tmp__10 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_5_assume_41 : tmp__9 → False)
    (then_5_assume_42 : tmp__9 → False)
    (assert_18 : (0 ≤ (r + 1)) ∧ ((r + 1) < Vermilion.usizeMod)) :
    Vermilion.Seq.len roots = Vermilion.Seq.len root_keys := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.invariant_preserve_0_1

-- vrml:begin reclaim_plan.project_keys.invariant_preserve_0_2 9e240fcb1cc520d9
/--
Generated VC `reclaim_plan.project_keys.invariant_preserve_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1197:74-1197:89`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_2`
- Statement hash: `9e240fcb1cc520d9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__7 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__8 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__10 vrml_i0⟩
-/
def invariant_preserve_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1197
  startColumn := 74
  endLine := 1197
  endColumn := 89
  assertId := "0_2"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_preserve"
  statementHash := "9e240fcb1cc520d9"
}
@[vrml_obligation] theorem invariant_preserve_0_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__5 : Int)
    (tmp__9 : Prop)
    (tmp__6 : Int)
    (tmp__7 : (Vermilion.Seq Int))
    (tmp__8 : (Vermilion.Seq Int))
    (tmp__10 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_0_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_0_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_0_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_0_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_0_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_iteration_20 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_21 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_iteration_22 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_23 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_iteration_24 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : (0 ≤ tmp__5) ∧ (tmp__5 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__5 = Vermilion.Seq.index roots r)
    (then_4_assume_28 : (tmp__5 ≥ Vermilion.Seq.len keys) → (tmp__9 ↔ True))
    (else_4_call_vec_index_1_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → ((0 ≤ tmp__6) ∧ (tmp__6 < Vermilion.usizeMod)))
    (else_4_call_vec_index_1_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__6 = Vermilion.Seq.index roots r))
    (else_4_call_vec_index_2_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__7) ∧ (Vermilion.Seq.len tmp__7 < Vermilion.usizeMod)))
    (else_4_call_vec_index_2_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__7)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__7 vrml_i0))))
    (else_4_call_vec_index_2_ensures_2 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__7 = Vermilion.Seq.index keys tmp__6))
    (else_4_call_vec_index_3_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__8) ∧ (Vermilion.Seq.len tmp__8 < Vermilion.usizeMod)))
    (else_4_call_vec_index_3_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__8)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__8 vrml_i0))))
    (else_4_call_vec_index_3_ensures_2 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__8 = Vermilion.Seq.index root_keys r))
    (else_4_assume_36 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__9 ↔ (¬ (tmp__7 = tmp__8))))
    (then_5_call_new_2_ensures_0 : tmp__9 → ((0 ≤ Vermilion.Seq.len tmp__10) ∧ (Vermilion.Seq.len tmp__10 < Vermilion.usizeMod)))
    (then_5_call_new_2_ensures_1 : tmp__9 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__10)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__10 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__10 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__10 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__10 vrml_i0) < Vermilion.usizeMod))))))
    (then_5_call_new_2_ensures_2 : tmp__9 → (tmp__10 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_5_assume_41 : tmp__9 → False)
    (then_5_assume_42 : tmp__9 → False)
    (assert_18 : (0 ≤ (r + 1)) ∧ ((r + 1) < Vermilion.usizeMod)) :
    Vermilion.Seq.len keys = Vermilion.Seq.len keys := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.invariant_preserve_0_2

-- vrml:begin reclaim_plan.project_keys.invariant_preserve_0_3 bace755e44e43406
/--
Generated VC `reclaim_plan.project_keys.invariant_preserve_0_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1198:13-1199:94`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_3`
- Statement hash: `bace755e44e43406`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__7 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__8 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__10 vrml_i0⟩
-/
def invariant_preserve_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1198
  startColumn := 13
  endLine := 1199
  endColumn := 94
  assertId := "0_3"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_preserve"
  statementHash := "bace755e44e43406"
}
@[vrml_obligation] theorem invariant_preserve_0_3
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__5 : Int)
    (tmp__9 : Prop)
    (tmp__6 : Int)
    (tmp__7 : (Vermilion.Seq Int))
    (tmp__8 : (Vermilion.Seq Int))
    (tmp__10 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_0_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_0_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_0_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_0_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_0_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_iteration_20 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_21 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_iteration_22 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_23 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_iteration_24 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : (0 ≤ tmp__5) ∧ (tmp__5 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__5 = Vermilion.Seq.index roots r)
    (then_4_assume_28 : (tmp__5 ≥ Vermilion.Seq.len keys) → (tmp__9 ↔ True))
    (else_4_call_vec_index_1_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → ((0 ≤ tmp__6) ∧ (tmp__6 < Vermilion.usizeMod)))
    (else_4_call_vec_index_1_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__6 = Vermilion.Seq.index roots r))
    (else_4_call_vec_index_2_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__7) ∧ (Vermilion.Seq.len tmp__7 < Vermilion.usizeMod)))
    (else_4_call_vec_index_2_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__7)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__7 vrml_i0))))
    (else_4_call_vec_index_2_ensures_2 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__7 = Vermilion.Seq.index keys tmp__6))
    (else_4_call_vec_index_3_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__8) ∧ (Vermilion.Seq.len tmp__8 < Vermilion.usizeMod)))
    (else_4_call_vec_index_3_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__8)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__8 vrml_i0))))
    (else_4_call_vec_index_3_ensures_2 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__8 = Vermilion.Seq.index root_keys r))
    (else_4_assume_36 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__9 ↔ (¬ (tmp__7 = tmp__8))))
    (then_5_call_new_2_ensures_0 : tmp__9 → ((0 ≤ Vermilion.Seq.len tmp__10) ∧ (Vermilion.Seq.len tmp__10 < Vermilion.usizeMod)))
    (then_5_call_new_2_ensures_1 : tmp__9 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__10)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__10 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__10 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__10 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__10 vrml_i0) < Vermilion.usizeMod))))))
    (then_5_call_new_2_ensures_2 : tmp__9 → (tmp__10 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_5_assume_41 : tmp__9 → False)
    (then_5_assume_42 : tmp__9 → False)
    (assert_18 : (0 ≤ (r + 1)) ∧ ((r + 1) < Vermilion.usizeMod)) :
    (∀ (q : Int), (((0 ≤ q) ∧ (q < (Vermilion.emod (r + 1) Vermilion.usizeMod))) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))) := by
  have hr : Vermilion.emod (r + 1) Vermilion.usizeMod = r + 1 := Vermilion.emod_usizeMod_of_lt assert_18.1 assert_18.2
  rw [hr]
  intro q hq
  by_cases hqr : q < r
  · exact loop_0_iteration_23 q ⟨hq.1, hqr⟩
  · have hqe : q = r := by omega
    rw [hqe]
    have n9 : ¬ tmp__9 := fun h => then_5_assume_41 h
    have hlt : ¬ (tmp__5 ≥ Vermilion.Seq.len keys) := fun h => n9 ((then_4_assume_28 h).mpr trivial)
    have e7 := else_4_call_vec_index_2_ensures_2 hlt
    have e6 := else_4_call_vec_index_1_ensures_1 hlt
    have e8 := else_4_call_vec_index_3_ensures_2 hlt
    have h78 : tmp__7 = tmp__8 := by by_contra h; exact n9 ((else_4_assume_36 hlt).mpr h)
    refine ⟨?_, ?_⟩
    · rw [← call_vec_index_ensures_1]; omega
    · rw [← e6, ← e7, ← e8]; exact h78
-- vrml:end reclaim_plan.project_keys.invariant_preserve_0_3

-- vrml:begin reclaim_plan.project_keys.assert_0_decreases 0055a2850e2440b1
/--
Generated VC `reclaim_plan.project_keys.assert_0_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1200:19-1200:34`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `0055a2850e2440b1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__7 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__8 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__10 vrml_i0⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1200
  startColumn := 19
  endLine := 1200
  endColumn := 34
  assertId := "0_decreases"
  functionName := "reclaim_plan.project_keys"
  kind := "assert"
  statementHash := "0055a2850e2440b1"
}
@[vrml_obligation] theorem assert_0_decreases
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__5 : Int)
    (tmp__9 : Prop)
    (tmp__6 : Int)
    (tmp__7 : (Vermilion.Seq Int))
    (tmp__8 : (Vermilion.Seq Int))
    (tmp__10 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_0_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_0_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_0_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_0_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_0_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_0_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_iteration_20 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_21 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_iteration_22 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_23 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_iteration_24 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : (0 ≤ tmp__5) ∧ (tmp__5 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__5 = Vermilion.Seq.index roots r)
    (then_4_assume_28 : (tmp__5 ≥ Vermilion.Seq.len keys) → (tmp__9 ↔ True))
    (else_4_call_vec_index_1_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → ((0 ≤ tmp__6) ∧ (tmp__6 < Vermilion.usizeMod)))
    (else_4_call_vec_index_1_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__6 = Vermilion.Seq.index roots r))
    (else_4_call_vec_index_2_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__7) ∧ (Vermilion.Seq.len tmp__7 < Vermilion.usizeMod)))
    (else_4_call_vec_index_2_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__7)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__7 vrml_i0))))
    (else_4_call_vec_index_2_ensures_2 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__7 = Vermilion.Seq.index keys tmp__6))
    (else_4_call_vec_index_3_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len tmp__8) ∧ (Vermilion.Seq.len tmp__8 < Vermilion.usizeMod)))
    (else_4_call_vec_index_3_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__8)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__8 vrml_i0))))
    (else_4_call_vec_index_3_ensures_2 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__8 = Vermilion.Seq.index root_keys r))
    (else_4_assume_36 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__9 ↔ (¬ (tmp__7 = tmp__8))))
    (then_5_call_new_2_ensures_0 : tmp__9 → ((0 ≤ Vermilion.Seq.len tmp__10) ∧ (Vermilion.Seq.len tmp__10 < Vermilion.usizeMod)))
    (then_5_call_new_2_ensures_1 : tmp__9 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__10)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__10 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__10 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__10 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__10 vrml_i0) < Vermilion.usizeMod))))))
    (then_5_call_new_2_ensures_2 : tmp__9 → (tmp__10 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_5_assume_41 : tmp__9 → False)
    (then_5_assume_42 : tmp__9 → False)
    (assert_18 : (0 ≤ (r + 1)) ∧ ((r + 1) < Vermilion.usizeMod)) :
    ((0 ≤ (Vermilion.Seq.len roots - (Vermilion.emod (r + 1) Vermilion.usizeMod))) ∧ ((Vermilion.Seq.len roots - (Vermilion.emod (r + 1) Vermilion.usizeMod)) < (Vermilion.Seq.len roots - r))) ∨ (((Vermilion.Seq.len roots - (Vermilion.emod (r + 1) Vermilion.usizeMod)) = (Vermilion.Seq.len roots - r)) ∧ False) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.assert_0_decreases

-- vrml:begin reclaim_plan.project_keys.invariant_entry_1_0 c54235f7cb1be404
/--
Generated VC `reclaim_plan.project_keys.invariant_entry_1_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1210:19-1210:30`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_0`
- Statement hash: `c54235f7cb1be404`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩
-/
def invariant_entry_1_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1210
  startColumn := 19
  endLine := 1210
  endColumn := 30
  assertId := "1_0"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_entry"
  statementHash := "c54235f7cb1be404"
}
@[vrml_obligation] theorem invariant_entry_1_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (requires_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (assume_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod)))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod)))
    (else_1_assume_17 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod)))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (then_3_call_new_1_ensures_0 : (¬ reclaim_plan.keys_sorted_spec keys) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (then_3_call_new_1_ensures_1 : (¬ reclaim_plan.keys_sorted_spec keys) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (then_3_call_new_1_ensures_2 : (¬ reclaim_plan.keys_sorted_spec keys) → (tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_3_assume_28 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (then_3_assume_29 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (loop_0_exit_0 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (call_new_3_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (call_new_3_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (call_new_3_ensures_2 : tmp__11 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))) :
    (0 ≤ 0) ∧ (0 ≤ Vermilion.Seq.len keys) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.invariant_entry_1_0

-- vrml:begin reclaim_plan.project_keys.invariant_entry_1_1 5e3da87ccddf1a09
/--
Generated VC `reclaim_plan.project_keys.invariant_entry_1_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1210:32-1210:47`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_1`
- Statement hash: `5e3da87ccddf1a09`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩
-/
def invariant_entry_1_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1210
  startColumn := 32
  endLine := 1210
  endColumn := 47
  assertId := "1_1"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_entry"
  statementHash := "5e3da87ccddf1a09"
}
@[vrml_obligation] theorem invariant_entry_1_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (requires_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (assume_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod)))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod)))
    (else_1_assume_17 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod)))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (then_3_call_new_1_ensures_0 : (¬ reclaim_plan.keys_sorted_spec keys) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (then_3_call_new_1_ensures_1 : (¬ reclaim_plan.keys_sorted_spec keys) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (then_3_call_new_1_ensures_2 : (¬ reclaim_plan.keys_sorted_spec keys) → (tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_3_assume_28 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (then_3_assume_29 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (loop_0_exit_0 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (call_new_3_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (call_new_3_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (call_new_3_ensures_2 : tmp__11 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))) :
    Vermilion.Seq.len keys = Vermilion.Seq.len keys := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.invariant_entry_1_1

-- vrml:begin reclaim_plan.project_keys.invariant_entry_1_2 8e0fb286f4d91473
/--
Generated VC `reclaim_plan.project_keys.invariant_entry_1_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1210:49-1210:70`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_2`
- Statement hash: `8e0fb286f4d91473`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩
-/
def invariant_entry_1_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1210
  startColumn := 49
  endLine := 1210
  endColumn := 70
  assertId := "1_2"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_entry"
  statementHash := "8e0fb286f4d91473"
}
@[vrml_obligation] theorem invariant_entry_1_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (requires_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (assume_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod)))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod)))
    (else_1_assume_17 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod)))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (then_3_call_new_1_ensures_0 : (¬ reclaim_plan.keys_sorted_spec keys) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (then_3_call_new_1_ensures_1 : (¬ reclaim_plan.keys_sorted_spec keys) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (then_3_call_new_1_ensures_2 : (¬ reclaim_plan.keys_sorted_spec keys) → (tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_3_assume_28 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (then_3_assume_29 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (loop_0_exit_0 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (call_new_3_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (call_new_3_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (call_new_3_ensures_2 : tmp__11 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))) :
    Vermilion.Seq.len references = Vermilion.Seq.len keys := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.invariant_entry_1_2

-- vrml:begin reclaim_plan.project_keys.invariant_entry_1_3 ec6e5e3f7bbdd651
/--
Generated VC `reclaim_plan.project_keys.invariant_entry_1_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1210:72-1210:98`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_3`
- Statement hash: `ec6e5e3f7bbdd651`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩
-/
def invariant_entry_1_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1210
  startColumn := 72
  endLine := 1210
  endColumn := 98
  assertId := "1_3"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_entry"
  statementHash := "ec6e5e3f7bbdd651"
}
@[vrml_obligation] theorem invariant_entry_1_3
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (requires_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (assume_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod)))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod)))
    (else_1_assume_17 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod)))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (then_3_call_new_1_ensures_0 : (¬ reclaim_plan.keys_sorted_spec keys) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (then_3_call_new_1_ensures_1 : (¬ reclaim_plan.keys_sorted_spec keys) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (then_3_call_new_1_ensures_2 : (¬ reclaim_plan.keys_sorted_spec keys) → (tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_3_assume_28 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (then_3_assume_29 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (loop_0_exit_0 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (call_new_3_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (call_new_3_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (call_new_3_ensures_2 : tmp__11 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))) :
    Vermilion.Seq.len reference_index = Vermilion.Seq.len keys := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.invariant_entry_1_3

-- vrml:begin reclaim_plan.project_keys.invariant_entry_1_4 ad4880a6e7331805
/--
Generated VC `reclaim_plan.project_keys.invariant_entry_1_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1211:13-1211:36`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_4`
- Statement hash: `ad4880a6e7331805`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩
-/
def invariant_entry_1_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1211
  startColumn := 13
  endLine := 1211
  endColumn := 36
  assertId := "1_4"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_entry"
  statementHash := "ad4880a6e7331805"
}
@[vrml_obligation] theorem invariant_entry_1_4
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (requires_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (assume_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod)))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod)))
    (else_1_assume_17 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod)))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (then_3_call_new_1_ensures_0 : (¬ reclaim_plan.keys_sorted_spec keys) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (then_3_call_new_1_ensures_1 : (¬ reclaim_plan.keys_sorted_spec keys) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (then_3_call_new_1_ensures_2 : (¬ reclaim_plan.keys_sorted_spec keys) → (tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_3_assume_28 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (then_3_assume_29 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (loop_0_exit_0 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (call_new_3_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (call_new_3_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (call_new_3_ensures_2 : tmp__11 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))) :
    reclaim_plan.keys_sorted_spec keys := by
  by_contra h; exact then_3_assume_28 h
-- vrml:end reclaim_plan.project_keys.invariant_entry_1_4

-- vrml:begin reclaim_plan.project_keys.invariant_entry_1_5 f7cfc531d06cd2d3
/--
Generated VC `reclaim_plan.project_keys.invariant_entry_1_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1211:38-1211:86`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_5`
- Statement hash: `f7cfc531d06cd2d3`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩
-/
def invariant_entry_1_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1211
  startColumn := 38
  endLine := 1211
  endColumn := 86
  assertId := "1_5"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_entry"
  statementHash := "f7cfc531d06cd2d3"
}
@[vrml_obligation] theorem invariant_entry_1_5
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (requires_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (assume_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod)))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod)))
    (else_1_assume_17 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod)))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (then_3_call_new_1_ensures_0 : (¬ reclaim_plan.keys_sorted_spec keys) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (then_3_call_new_1_ensures_1 : (¬ reclaim_plan.keys_sorted_spec keys) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (then_3_call_new_1_ensures_2 : (¬ reclaim_plan.keys_sorted_spec keys) → (tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_3_assume_28 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (then_3_assume_29 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (loop_0_exit_0 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (call_new_3_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (call_new_3_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (call_new_3_ensures_2 : tmp__11 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))) :
    reclaim_plan.roots_match_keys_spec keys root_keys roots := by
  exact ⟨loop_0_exit_2, fun q hq => loop_0_exit_4 q ⟨hq.1, by omega⟩⟩
-- vrml:end reclaim_plan.project_keys.invariant_entry_1_5

-- vrml:begin reclaim_plan.project_keys.invariant_entry_1_6 448e143422de5398
/--
Generated VC `reclaim_plan.project_keys.invariant_entry_1_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1212:13-1212:126`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_6`
- Statement hash: `448e143422de5398`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index tmp__11 k⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩
-/
def invariant_entry_1_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1212
  startColumn := 13
  endLine := 1212
  endColumn := 126
  assertId := "1_6"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_entry"
  statementHash := "448e143422de5398"
}
@[vrml_obligation] theorem invariant_entry_1_6
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (requires_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (assume_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod)))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod)))
    (else_1_assume_17 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod)))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (then_3_call_new_1_ensures_0 : (¬ reclaim_plan.keys_sorted_spec keys) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (then_3_call_new_1_ensures_1 : (¬ reclaim_plan.keys_sorted_spec keys) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (then_3_call_new_1_ensures_2 : (¬ reclaim_plan.keys_sorted_spec keys) → (tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_3_assume_28 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (then_3_assume_29 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (loop_0_exit_0 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (call_new_3_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (call_new_3_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (call_new_3_ensures_2 : tmp__11 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__11)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__11 k))) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.invariant_entry_1_6

-- vrml:begin reclaim_plan.project_keys.invariant_entry_1_7 654cc48a564882b3
/--
Generated VC `reclaim_plan.project_keys.invariant_entry_1_7`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1213:13-1214:116`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_7`
- Statement hash: `654cc48a564882b3`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.ref_resolved_spec keys references tmp__11 a q⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩
-/
def invariant_entry_1_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1213
  startColumn := 13
  endLine := 1214
  endColumn := 116
  assertId := "1_7"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_entry"
  statementHash := "654cc48a564882b3"
}
@[vrml_obligation] theorem invariant_entry_1_7
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (requires_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (assume_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod)))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod)))
    (else_1_assume_17 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod)))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (then_3_call_new_1_ensures_0 : (¬ reclaim_plan.keys_sorted_spec keys) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (then_3_call_new_1_ensures_1 : (¬ reclaim_plan.keys_sorted_spec keys) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (then_3_call_new_1_ensures_2 : (¬ reclaim_plan.keys_sorted_spec keys) → (tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_3_assume_28 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (then_3_assume_29 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (loop_0_exit_0 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (call_new_3_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (call_new_3_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (call_new_3_ensures_2 : tmp__11 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))) :
    (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < 0)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references tmp__11 a q)) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.invariant_entry_1_7

-- vrml:begin reclaim_plan.project_keys.call_requires_20 1e049380349180f4
/--
Generated VC `reclaim_plan.project_keys.call_requires_20`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1217:12-1217:30`
- Rust/SST construct: call vec_index
- AssertId: `20`
- Statement hash: `1e049380349180f4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩
-/
def call_requires_20_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1217
  startColumn := 12
  endLine := 1217
  endColumn := 30
  assertId := "20"
  functionName := "reclaim_plan.project_keys"
  kind := "call_requires"
  statementHash := "1e049380349180f4"
}
@[vrml_obligation] theorem call_requires_20
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_20 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_22 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_24 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys) :
    i < Vermilion.Seq.len reference_index := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.call_requires_20

-- vrml:begin reclaim_plan.project_keys.call_requires_22 2128be5bde85eb1e
/--
Generated VC `reclaim_plan.project_keys.call_requires_22`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1217:40-1217:53`
- Rust/SST construct: call vec_index
- AssertId: `22`
- Statement hash: `2128be5bde85eb1e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩
-/
def call_requires_22_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1217
  startColumn := 40
  endLine := 1217
  endColumn := 53
  assertId := "22"
  functionName := "reclaim_plan.project_keys"
  kind := "call_requires"
  statementHash := "2128be5bde85eb1e"
}
@[vrml_obligation] theorem call_requires_22
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (tmp__12 : (Vermilion.Seq Int))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_20 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_22 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_24 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → ((0 ≤ Vermilion.Seq.index tmp__12 vrml_i0) ∧ (Vermilion.Seq.index tmp__12 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod)) :
    i < Vermilion.Seq.len references := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.call_requires_22

-- vrml:begin reclaim_plan.project_keys.ensures_25 e0fe4720e14130ed
/--
Generated VC `reclaim_plan.project_keys.ensures_25`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1186:13-1186:103`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `25`
- Statement hash: `e0fe4720e14130ed`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩
-/
def ensures_25_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1186
  startColumn := 13
  endLine := 1186
  endColumn := 103
  assertId := "25"
  functionName := "reclaim_plan.project_keys"
  kind := "ensures"
  statementHash := "e0fe4720e14130ed"
}
@[vrml_obligation] theorem ensures_25
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (tmp__12 : (Vermilion.Seq Int))
    (tmp__13 : (Vermilion.Seq (Vermilion.Seq Int)))
    (tmp__14 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_20 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_22 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_24 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → ((0 ≤ Vermilion.Seq.index tmp__12 vrml_i0) ∧ (Vermilion.Seq.index tmp__12 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (branch_6 : Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13)
    (call_new_4_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__14) ∧ (Vermilion.Seq.len tmp__14 < Vermilion.usizeMod))
    (call_new_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod))))))
    (call_new_4_ensures_2 : tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))) :
    reclaim_plan.KeyProjection.get_KeyProjection_ok (reclaim_plan.KeyProjection.KeyProjection False tmp__14) → reclaim_plan.projection_valid_spec keys references root_keys (reclaim_plan.KeyProjection.get_KeyProjection_edges (reclaim_plan.KeyProjection.KeyProjection False tmp__14)) roots := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.ensures_25

-- vrml:begin reclaim_plan.project_keys.call_requires_26 e2d21ce1436c7718
/--
Generated VC `reclaim_plan.project_keys.call_requires_26`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1221:53-1221:71`
- Rust/SST construct: call vec_index
- AssertId: `26`
- Statement hash: `e2d21ce1436c7718`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩
-/
def call_requires_26_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1221
  startColumn := 53
  endLine := 1221
  endColumn := 71
  assertId := "26"
  functionName := "reclaim_plan.project_keys"
  kind := "call_requires"
  statementHash := "e2d21ce1436c7718"
}
@[vrml_obligation] theorem call_requires_26
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (tmp__12 : (Vermilion.Seq Int))
    (tmp__13 : (Vermilion.Seq (Vermilion.Seq Int)))
    (tmp__14 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_20 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_22 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_24 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → ((0 ≤ Vermilion.Seq.index tmp__12 vrml_i0) ∧ (Vermilion.Seq.index tmp__12 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → ((0 ≤ Vermilion.Seq.len tmp__14) ∧ (Vermilion.Seq.len tmp__14 < Vermilion.usizeMod)))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False) :
    i < Vermilion.Seq.len reference_index := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.call_requires_26

-- vrml:begin reclaim_plan.project_keys.call_requires_27_0 76c46dd785c32b22
/--
Generated VC `reclaim_plan.project_keys.call_requires_27_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1221:19-1221:79`
- Rust/SST construct: call project_row
- AssertId: `27_0`
- Statement hash: `76c46dd785c32b22`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩
-/
def call_requires_27_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1221
  startColumn := 19
  endLine := 1221
  endColumn := 79
  assertId := "27_0"
  functionName := "reclaim_plan.project_keys"
  kind := "call_requires"
  statementHash := "76c46dd785c32b22"
}
@[vrml_obligation] theorem call_requires_27_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (tmp__12 : (Vermilion.Seq Int))
    (tmp__13 : (Vermilion.Seq (Vermilion.Seq Int)))
    (tmp__14 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__15 : (Vermilion.Seq Int))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_20 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_22 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_24 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → ((0 ≤ Vermilion.Seq.index tmp__12 vrml_i0) ∧ (Vermilion.Seq.index tmp__12 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → ((0 ≤ Vermilion.Seq.len tmp__14) ∧ (Vermilion.Seq.len tmp__14 < Vermilion.usizeMod)))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__15) ∧ (Vermilion.Seq.len tmp__15 < Vermilion.usizeMod))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → ((0 ≤ Vermilion.Seq.index tmp__15 vrml_i0) ∧ (Vermilion.Seq.index tmp__15 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i) :
    i < Vermilion.Seq.len keys := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.call_requires_27_0

-- vrml:begin reclaim_plan.project_keys.call_requires_27_1 faf782a55861b669
/--
Generated VC `reclaim_plan.project_keys.call_requires_27_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1221:19-1221:79`
- Rust/SST construct: call project_row
- AssertId: `27_1`
- Statement hash: `faf782a55861b669`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩
-/
def call_requires_27_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1221
  startColumn := 19
  endLine := 1221
  endColumn := 79
  assertId := "27_1"
  functionName := "reclaim_plan.project_keys"
  kind := "call_requires"
  statementHash := "faf782a55861b669"
}
@[vrml_obligation] theorem call_requires_27_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (tmp__12 : (Vermilion.Seq Int))
    (tmp__13 : (Vermilion.Seq (Vermilion.Seq Int)))
    (tmp__14 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__15 : (Vermilion.Seq Int))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_20 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_22 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_24 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → ((0 ≤ Vermilion.Seq.index tmp__12 vrml_i0) ∧ (Vermilion.Seq.index tmp__12 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → ((0 ≤ Vermilion.Seq.len tmp__14) ∧ (Vermilion.Seq.len tmp__14 < Vermilion.usizeMod)))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__15) ∧ (Vermilion.Seq.len tmp__15 < Vermilion.usizeMod))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → ((0 ≤ Vermilion.Seq.index tmp__15 vrml_i0) ∧ (Vermilion.Seq.index tmp__15 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i) :
    Vermilion.Seq.len references = Vermilion.Seq.len keys := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.call_requires_27_1

-- vrml:begin reclaim_plan.project_keys.call_requires_27_2 2b6dbde5b50f8320
/--
Generated VC `reclaim_plan.project_keys.call_requires_27_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1221:19-1221:79`
- Rust/SST construct: call project_row
- AssertId: `27_2`
- Statement hash: `2b6dbde5b50f8320`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩
-/
def call_requires_27_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1221
  startColumn := 19
  endLine := 1221
  endColumn := 79
  assertId := "27_2"
  functionName := "reclaim_plan.project_keys"
  kind := "call_requires"
  statementHash := "2b6dbde5b50f8320"
}
@[vrml_obligation] theorem call_requires_27_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (tmp__12 : (Vermilion.Seq Int))
    (tmp__13 : (Vermilion.Seq (Vermilion.Seq Int)))
    (tmp__14 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__15 : (Vermilion.Seq Int))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_20 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_22 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_24 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → ((0 ≤ Vermilion.Seq.index tmp__12 vrml_i0) ∧ (Vermilion.Seq.index tmp__12 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → ((0 ≤ Vermilion.Seq.len tmp__14) ∧ (Vermilion.Seq.len tmp__14 < Vermilion.usizeMod)))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__15) ∧ (Vermilion.Seq.len tmp__15 < Vermilion.usizeMod))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → ((0 ≤ Vermilion.Seq.index tmp__15 vrml_i0) ∧ (Vermilion.Seq.index tmp__15 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i) :
    Vermilion.Seq.len tmp__15 = Vermilion.Seq.len (Vermilion.Seq.index references i) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.call_requires_27_2

-- vrml:begin reclaim_plan.project_keys.call_requires_27_3 812c5f0e5737f722
/--
Generated VC `reclaim_plan.project_keys.call_requires_27_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1221:19-1221:79`
- Rust/SST construct: call project_row
- AssertId: `27_3`
- Statement hash: `812c5f0e5737f722`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges k⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩
-/
def call_requires_27_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1221
  startColumn := 19
  endLine := 1221
  endColumn := 79
  assertId := "27_3"
  functionName := "reclaim_plan.project_keys"
  kind := "call_requires"
  statementHash := "812c5f0e5737f722"
}
@[vrml_obligation] theorem call_requires_27_3
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (tmp__12 : (Vermilion.Seq Int))
    (tmp__13 : (Vermilion.Seq (Vermilion.Seq Int)))
    (tmp__14 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__15 : (Vermilion.Seq Int))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_20 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_22 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_24 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → ((0 ≤ Vermilion.Seq.index tmp__12 vrml_i0) ∧ (Vermilion.Seq.index tmp__12 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → ((0 ≤ Vermilion.Seq.len tmp__14) ∧ (Vermilion.Seq.len tmp__14 < Vermilion.usizeMod)))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__15) ∧ (Vermilion.Seq.len tmp__15 < Vermilion.usizeMod))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → ((0 ≤ Vermilion.Seq.index tmp__15 vrml_i0) ∧ (Vermilion.Seq.index tmp__15 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.call_requires_27_3

-- vrml:begin reclaim_plan.project_keys.ensures_29 0c60539402f48bb4
/--
Generated VC `reclaim_plan.project_keys.ensures_29`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1186:13-1186:103`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `29`
- Statement hash: `0c60539402f48bb4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩
-/
def ensures_29_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1186
  startColumn := 13
  endLine := 1186
  endColumn := 103
  assertId := "29"
  functionName := "reclaim_plan.project_keys"
  kind := "ensures"
  statementHash := "0c60539402f48bb4"
}
@[vrml_obligation] theorem ensures_29
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (tmp__12 : (Vermilion.Seq Int))
    (tmp__13 : (Vermilion.Seq (Vermilion.Seq Int)))
    (tmp__14 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__15 : (Vermilion.Seq Int))
    (row : reclaim_plan.RowProjection)
    (tmp__16 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_20 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_22 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_24 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → ((0 ≤ Vermilion.Seq.index tmp__12 vrml_i0) ∧ (Vermilion.Seq.index tmp__12 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → ((0 ≤ Vermilion.Seq.len tmp__14) ∧ (Vermilion.Seq.len tmp__14 < Vermilion.usizeMod)))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__15) ∧ (Vermilion.Seq.len tmp__15 < Vermilion.usizeMod))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → ((0 ≤ Vermilion.Seq.index tmp__15 vrml_i0) ∧ (Vermilion.Seq.index tmp__15 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : (0 ≤ Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)) ∧ (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row) < Vermilion.usizeMod))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (branch_7 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row))
    (call_new_5_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__16) ∧ (Vermilion.Seq.len tmp__16 < Vermilion.usizeMod))
    (call_new_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod))))))
    (call_new_5_ensures_2 : tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))) :
    reclaim_plan.KeyProjection.get_KeyProjection_ok (reclaim_plan.KeyProjection.KeyProjection False tmp__16) → reclaim_plan.projection_valid_spec keys references root_keys (reclaim_plan.KeyProjection.get_KeyProjection_edges (reclaim_plan.KeyProjection.KeyProjection False tmp__16)) roots := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.ensures_29

-- vrml:begin reclaim_plan.project_keys.assert_30 8a8a9caaaf97c4a1
/--
Generated VC `reclaim_plan.project_keys.assert_30`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1230:28-1230:77`
- Rust/SST construct: Rust source assertion
- AssertId: `30`
- Statement hash: `8a8a9caaaf97c4a1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩
-/
def assert_30_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1230
  startColumn := 28
  endLine := 1230
  endColumn := 77
  assertId := "30"
  functionName := "reclaim_plan.project_keys"
  kind := "assert"
  statementHash := "8a8a9caaaf97c4a1"
}
@[vrml_obligation] theorem assert_30
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (tmp__12 : (Vermilion.Seq Int))
    (tmp__13 : (Vermilion.Seq (Vermilion.Seq Int)))
    (tmp__14 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__15 : (Vermilion.Seq Int))
    (row : reclaim_plan.RowProjection)
    (tmp__16 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (a : Int)
    (q : Int)
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_20 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_22 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_24 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → ((0 ≤ Vermilion.Seq.index tmp__12 vrml_i0) ∧ (Vermilion.Seq.index tmp__12 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → ((0 ≤ Vermilion.Seq.len tmp__14) ∧ (Vermilion.Seq.len tmp__14 < Vermilion.usizeMod)))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__15) ∧ (Vermilion.Seq.len tmp__15 < Vermilion.usizeMod))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → ((0 ≤ Vermilion.Seq.index tmp__15 vrml_i0) ∧ (Vermilion.Seq.index tmp__15 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : (0 ≤ Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)) ∧ (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row) < Vermilion.usizeMod))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (then_7_call_new_5_ensures_0 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → ((0 ≤ Vermilion.Seq.len tmp__16) ∧ (Vermilion.Seq.len tmp__16 < Vermilion.usizeMod)))
    (then_7_call_new_5_ensures_1 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod))))))
    (then_7_call_new_5_ensures_2 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_7_assume_59 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (then_7_assume_60 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (assume_60 : True)
    (assume_61 : True)
    (assume_62 : ((0 ≤ a) ∧ (a < (i + 1))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a))))
    (branch_8 : a < i) :
    reclaim_plan.ref_resolved_spec keys references edges a q := by
  exact loop_1_iteration_32 a q ⟨⟨assume_62.1.1, branch_8⟩, assume_62.2⟩
-- vrml:end reclaim_plan.project_keys.assert_30

-- vrml:begin reclaim_plan.project_keys.call_requires_31_0 3a8aa86074753b7b
/--
Generated VC `reclaim_plan.project_keys.call_requires_31_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1231:21-1231:80`
- Rust/SST construct: call ref_resolved_extend
- AssertId: `31_0`
- Statement hash: `3a8aa86074753b7b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩
-/
def call_requires_31_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1231
  startColumn := 21
  endLine := 1231
  endColumn := 80
  assertId := "31_0"
  functionName := "reclaim_plan.project_keys"
  kind := "call_requires"
  statementHash := "3a8aa86074753b7b"
}
@[vrml_obligation] theorem call_requires_31_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (tmp__12 : (Vermilion.Seq Int))
    (tmp__13 : (Vermilion.Seq (Vermilion.Seq Int)))
    (tmp__14 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__15 : (Vermilion.Seq Int))
    (row : reclaim_plan.RowProjection)
    (tmp__16 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (a : Int)
    (q : Int)
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_20 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_22 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_24 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → ((0 ≤ Vermilion.Seq.index tmp__12 vrml_i0) ∧ (Vermilion.Seq.index tmp__12 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → ((0 ≤ Vermilion.Seq.len tmp__14) ∧ (Vermilion.Seq.len tmp__14 < Vermilion.usizeMod)))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__15) ∧ (Vermilion.Seq.len tmp__15 < Vermilion.usizeMod))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → ((0 ≤ Vermilion.Seq.index tmp__15 vrml_i0) ∧ (Vermilion.Seq.index tmp__15 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : (0 ≤ Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)) ∧ (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row) < Vermilion.usizeMod))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (then_7_call_new_5_ensures_0 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → ((0 ≤ Vermilion.Seq.len tmp__16) ∧ (Vermilion.Seq.len tmp__16 < Vermilion.usizeMod)))
    (then_7_call_new_5_ensures_1 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod))))))
    (then_7_call_new_5_ensures_2 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_7_assume_59 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (then_7_assume_60 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (assume_60 : True)
    (assume_61 : True)
    (assume_62 : ((0 ≤ a) ∧ (a < (i + 1))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a))))
    (branch_8 : a < i)
    (assert_30 : reclaim_plan.ref_resolved_spec keys references edges a q) :
    reclaim_plan.ref_resolved_spec keys references edges a q := by
  exact assert_30
-- vrml:end reclaim_plan.project_keys.call_requires_31_0

-- vrml:begin reclaim_plan.project_keys.call_requires_31_1 451fa87f9d043ef3
/--
Generated VC `reclaim_plan.project_keys.call_requires_31_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1231:21-1231:80`
- Rust/SST construct: call ref_resolved_extend
- AssertId: `31_1`
- Statement hash: `451fa87f9d043ef3`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩
-/
def call_requires_31_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1231
  startColumn := 21
  endLine := 1231
  endColumn := 80
  assertId := "31_1"
  functionName := "reclaim_plan.project_keys"
  kind := "call_requires"
  statementHash := "451fa87f9d043ef3"
}
@[vrml_obligation] theorem call_requires_31_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (tmp__12 : (Vermilion.Seq Int))
    (tmp__13 : (Vermilion.Seq (Vermilion.Seq Int)))
    (tmp__14 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__15 : (Vermilion.Seq Int))
    (row : reclaim_plan.RowProjection)
    (tmp__16 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (a : Int)
    (q : Int)
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_20 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_22 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_24 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → ((0 ≤ Vermilion.Seq.index tmp__12 vrml_i0) ∧ (Vermilion.Seq.index tmp__12 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → ((0 ≤ Vermilion.Seq.len tmp__14) ∧ (Vermilion.Seq.len tmp__14 < Vermilion.usizeMod)))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__15) ∧ (Vermilion.Seq.len tmp__15 < Vermilion.usizeMod))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → ((0 ≤ Vermilion.Seq.index tmp__15 vrml_i0) ∧ (Vermilion.Seq.index tmp__15 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : (0 ≤ Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)) ∧ (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row) < Vermilion.usizeMod))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (then_7_call_new_5_ensures_0 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → ((0 ≤ Vermilion.Seq.len tmp__16) ∧ (Vermilion.Seq.len tmp__16 < Vermilion.usizeMod)))
    (then_7_call_new_5_ensures_1 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod))))))
    (then_7_call_new_5_ensures_2 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_7_assume_59 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (then_7_assume_60 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (assume_60 : True)
    (assume_61 : True)
    (assume_62 : ((0 ≤ a) ∧ (a < (i + 1))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a))))
    (branch_8 : a < i)
    (assert_30 : reclaim_plan.ref_resolved_spec keys references edges a q) :
    reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row) := by
  exact call_project_row_ensures_2
-- vrml:end reclaim_plan.project_keys.call_requires_31_1

-- vrml:begin reclaim_plan.project_keys.assert_32 dfde49d13316811a
/--
Generated VC `reclaim_plan.project_keys.assert_32`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1228:73-1228:124`
- Rust/SST construct: Rust source assertion
- AssertId: `32`
- Statement hash: `dfde49d13316811a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩
-/
def assert_32_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1228
  startColumn := 73
  endLine := 1228
  endColumn := 124
  assertId := "32"
  functionName := "reclaim_plan.project_keys"
  kind := "assert"
  statementHash := "dfde49d13316811a"
}
@[vrml_obligation] theorem assert_32
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (tmp__12 : (Vermilion.Seq Int))
    (tmp__13 : (Vermilion.Seq (Vermilion.Seq Int)))
    (tmp__14 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__15 : (Vermilion.Seq Int))
    (row : reclaim_plan.RowProjection)
    (tmp__16 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (a : Int)
    (q : Int)
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_20 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_22 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_24 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → ((0 ≤ Vermilion.Seq.index tmp__12 vrml_i0) ∧ (Vermilion.Seq.index tmp__12 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → ((0 ≤ Vermilion.Seq.len tmp__14) ∧ (Vermilion.Seq.len tmp__14 < Vermilion.usizeMod)))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__15) ∧ (Vermilion.Seq.len tmp__15 < Vermilion.usizeMod))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → ((0 ≤ Vermilion.Seq.index tmp__15 vrml_i0) ∧ (Vermilion.Seq.index tmp__15 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : (0 ≤ Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)) ∧ (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row) < Vermilion.usizeMod))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (then_7_call_new_5_ensures_0 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → ((0 ≤ Vermilion.Seq.len tmp__16) ∧ (Vermilion.Seq.len tmp__16 < Vermilion.usizeMod)))
    (then_7_call_new_5_ensures_1 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod))))))
    (then_7_call_new_5_ensures_2 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_7_assume_59 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (then_7_assume_60 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (assume_60 : True)
    (assume_61 : True)
    (assume_62 : ((0 ≤ a) ∧ (a < (i + 1))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a))))
    (then_8_assert_30 : (a < i) → reclaim_plan.ref_resolved_spec keys references edges a q)
    (then_8_call_ref_resolved_extend_ensures_0 : (a < i) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q) :
    reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q := by
  have hok : reclaim_plan.RowProjection.get_RowProjection_ok row := by
    by_contra h; exact then_7_assume_59 h
  by_cases ha : a < i
  · exact ref_resolved_extend_local _ _ _ _ _ _ (then_8_assert_30 ha) call_project_row_ensures_2
  · have : a = i := by have := assume_62.1.2; omega
    rw [this]
    exact call_project_row_ensures_4 hok q (by rw [← this]; exact assume_62.2)
-- vrml:end reclaim_plan.project_keys.assert_32

-- vrml:begin reclaim_plan.project_keys.assert_33 a0518fb58879f8c8
/--
Generated VC `reclaim_plan.project_keys.assert_33`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1235:13-1235:18`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `33`
- Statement hash: `a0518fb58879f8c8`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q⟩
-/
def assert_33_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1235
  startColumn := 13
  endLine := 1235
  endColumn := 18
  assertId := "33"
  functionName := "reclaim_plan.project_keys"
  kind := "assert"
  statementHash := "a0518fb58879f8c8"
}
@[vrml_obligation] theorem assert_33
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (tmp__12 : (Vermilion.Seq Int))
    (tmp__13 : (Vermilion.Seq (Vermilion.Seq Int)))
    (tmp__14 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__15 : (Vermilion.Seq Int))
    (row : reclaim_plan.RowProjection)
    (tmp__16 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_20 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_22 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_24 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → ((0 ≤ Vermilion.Seq.index tmp__12 vrml_i0) ∧ (Vermilion.Seq.index tmp__12 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → ((0 ≤ Vermilion.Seq.len tmp__14) ∧ (Vermilion.Seq.len tmp__14 < Vermilion.usizeMod)))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__15) ∧ (Vermilion.Seq.len tmp__15 < Vermilion.usizeMod))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → ((0 ≤ Vermilion.Seq.index tmp__15 vrml_i0) ∧ (Vermilion.Seq.index tmp__15 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : (0 ≤ Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)) ∧ (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row) < Vermilion.usizeMod))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (then_7_call_new_5_ensures_0 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → ((0 ≤ Vermilion.Seq.len tmp__16) ∧ (Vermilion.Seq.len tmp__16 < Vermilion.usizeMod)))
    (then_7_call_new_5_ensures_1 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod))))))
    (then_7_call_new_5_ensures_2 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_7_assume_59 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (then_7_assume_60 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (assume_60 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < (i + 1))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q))) :
    (0 ≤ (i + 1)) ∧ ((i + 1) < Vermilion.usizeMod) := by
  constructor <;> omega
-- vrml:end reclaim_plan.project_keys.assert_33

-- vrml:begin reclaim_plan.project_keys.invariant_preserve_1_0 38bd51881acdaea0
/--
Generated VC `reclaim_plan.project_keys.invariant_preserve_1_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1210:19-1210:30`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_0`
- Statement hash: `38bd51881acdaea0`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q⟩
-/
def invariant_preserve_1_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1210
  startColumn := 19
  endLine := 1210
  endColumn := 30
  assertId := "1_0"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_preserve"
  statementHash := "38bd51881acdaea0"
}
@[vrml_obligation] theorem invariant_preserve_1_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (tmp__12 : (Vermilion.Seq Int))
    (tmp__13 : (Vermilion.Seq (Vermilion.Seq Int)))
    (tmp__14 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__15 : (Vermilion.Seq Int))
    (row : reclaim_plan.RowProjection)
    (tmp__16 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_20 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_22 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_24 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → ((0 ≤ Vermilion.Seq.index tmp__12 vrml_i0) ∧ (Vermilion.Seq.index tmp__12 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → ((0 ≤ Vermilion.Seq.len tmp__14) ∧ (Vermilion.Seq.len tmp__14 < Vermilion.usizeMod)))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__15) ∧ (Vermilion.Seq.len tmp__15 < Vermilion.usizeMod))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → ((0 ≤ Vermilion.Seq.index tmp__15 vrml_i0) ∧ (Vermilion.Seq.index tmp__15 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : (0 ≤ Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)) ∧ (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row) < Vermilion.usizeMod))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (then_7_call_new_5_ensures_0 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → ((0 ≤ Vermilion.Seq.len tmp__16) ∧ (Vermilion.Seq.len tmp__16 < Vermilion.usizeMod)))
    (then_7_call_new_5_ensures_1 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod))))))
    (then_7_call_new_5_ensures_2 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_7_assume_59 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (then_7_assume_60 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (assume_60 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < (i + 1))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q)))
    (assert_33 : (0 ≤ (i + 1)) ∧ ((i + 1) < Vermilion.usizeMod)) :
    (0 ≤ (Vermilion.emod (i + 1) Vermilion.usizeMod)) ∧ ((Vermilion.emod (i + 1) Vermilion.usizeMod) ≤ Vermilion.Seq.len keys) := by
  have hr : Vermilion.emod (i + 1) Vermilion.usizeMod = i + 1 := Vermilion.emod_usizeMod_of_lt assert_33.1 assert_33.2
  rw [hr]
  omega
-- vrml:end reclaim_plan.project_keys.invariant_preserve_1_0

-- vrml:begin reclaim_plan.project_keys.invariant_preserve_1_1 5dca52fb927cd33d
/--
Generated VC `reclaim_plan.project_keys.invariant_preserve_1_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1210:32-1210:47`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_1`
- Statement hash: `5dca52fb927cd33d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q⟩
-/
def invariant_preserve_1_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1210
  startColumn := 32
  endLine := 1210
  endColumn := 47
  assertId := "1_1"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_preserve"
  statementHash := "5dca52fb927cd33d"
}
@[vrml_obligation] theorem invariant_preserve_1_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (tmp__12 : (Vermilion.Seq Int))
    (tmp__13 : (Vermilion.Seq (Vermilion.Seq Int)))
    (tmp__14 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__15 : (Vermilion.Seq Int))
    (row : reclaim_plan.RowProjection)
    (tmp__16 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_20 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_22 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_24 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → ((0 ≤ Vermilion.Seq.index tmp__12 vrml_i0) ∧ (Vermilion.Seq.index tmp__12 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → ((0 ≤ Vermilion.Seq.len tmp__14) ∧ (Vermilion.Seq.len tmp__14 < Vermilion.usizeMod)))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__15) ∧ (Vermilion.Seq.len tmp__15 < Vermilion.usizeMod))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → ((0 ≤ Vermilion.Seq.index tmp__15 vrml_i0) ∧ (Vermilion.Seq.index tmp__15 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : (0 ≤ Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)) ∧ (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row) < Vermilion.usizeMod))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (then_7_call_new_5_ensures_0 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → ((0 ≤ Vermilion.Seq.len tmp__16) ∧ (Vermilion.Seq.len tmp__16 < Vermilion.usizeMod)))
    (then_7_call_new_5_ensures_1 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod))))))
    (then_7_call_new_5_ensures_2 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_7_assume_59 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (then_7_assume_60 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (assume_60 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < (i + 1))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q)))
    (assert_33 : (0 ≤ (i + 1)) ∧ ((i + 1) < Vermilion.usizeMod)) :
    Vermilion.Seq.len keys = Vermilion.Seq.len keys := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.project_keys.invariant_preserve_1_1

-- vrml:begin reclaim_plan.project_keys.invariant_preserve_1_2 db80d2cfbde8148f
/--
Generated VC `reclaim_plan.project_keys.invariant_preserve_1_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1210:49-1210:70`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_2`
- Statement hash: `db80d2cfbde8148f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q⟩
-/
def invariant_preserve_1_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1210
  startColumn := 49
  endLine := 1210
  endColumn := 70
  assertId := "1_2"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_preserve"
  statementHash := "db80d2cfbde8148f"
}
@[vrml_obligation] theorem invariant_preserve_1_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (tmp__12 : (Vermilion.Seq Int))
    (tmp__13 : (Vermilion.Seq (Vermilion.Seq Int)))
    (tmp__14 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__15 : (Vermilion.Seq Int))
    (row : reclaim_plan.RowProjection)
    (tmp__16 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_20 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_22 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_24 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → ((0 ≤ Vermilion.Seq.index tmp__12 vrml_i0) ∧ (Vermilion.Seq.index tmp__12 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → ((0 ≤ Vermilion.Seq.len tmp__14) ∧ (Vermilion.Seq.len tmp__14 < Vermilion.usizeMod)))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__15) ∧ (Vermilion.Seq.len tmp__15 < Vermilion.usizeMod))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → ((0 ≤ Vermilion.Seq.index tmp__15 vrml_i0) ∧ (Vermilion.Seq.index tmp__15 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : (0 ≤ Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)) ∧ (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row) < Vermilion.usizeMod))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (then_7_call_new_5_ensures_0 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → ((0 ≤ Vermilion.Seq.len tmp__16) ∧ (Vermilion.Seq.len tmp__16 < Vermilion.usizeMod)))
    (then_7_call_new_5_ensures_1 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod))))))
    (then_7_call_new_5_ensures_2 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_7_assume_59 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (then_7_assume_60 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (assume_60 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < (i + 1))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q)))
    (assert_33 : (0 ≤ (i + 1)) ∧ ((i + 1) < Vermilion.usizeMod)) :
    Vermilion.Seq.len references = Vermilion.Seq.len keys := by
  exact loop_1_iteration_27
-- vrml:end reclaim_plan.project_keys.invariant_preserve_1_2

-- vrml:begin reclaim_plan.project_keys.invariant_preserve_1_3 b9c249fd9f40e155
/--
Generated VC `reclaim_plan.project_keys.invariant_preserve_1_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1210:72-1210:98`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_3`
- Statement hash: `b9c249fd9f40e155`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q⟩
-/
def invariant_preserve_1_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1210
  startColumn := 72
  endLine := 1210
  endColumn := 98
  assertId := "1_3"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_preserve"
  statementHash := "b9c249fd9f40e155"
}
@[vrml_obligation] theorem invariant_preserve_1_3
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (tmp__12 : (Vermilion.Seq Int))
    (tmp__13 : (Vermilion.Seq (Vermilion.Seq Int)))
    (tmp__14 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__15 : (Vermilion.Seq Int))
    (row : reclaim_plan.RowProjection)
    (tmp__16 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_20 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_22 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_24 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → ((0 ≤ Vermilion.Seq.index tmp__12 vrml_i0) ∧ (Vermilion.Seq.index tmp__12 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → ((0 ≤ Vermilion.Seq.len tmp__14) ∧ (Vermilion.Seq.len tmp__14 < Vermilion.usizeMod)))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__15) ∧ (Vermilion.Seq.len tmp__15 < Vermilion.usizeMod))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → ((0 ≤ Vermilion.Seq.index tmp__15 vrml_i0) ∧ (Vermilion.Seq.index tmp__15 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : (0 ≤ Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)) ∧ (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row) < Vermilion.usizeMod))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (then_7_call_new_5_ensures_0 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → ((0 ≤ Vermilion.Seq.len tmp__16) ∧ (Vermilion.Seq.len tmp__16 < Vermilion.usizeMod)))
    (then_7_call_new_5_ensures_1 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod))))))
    (then_7_call_new_5_ensures_2 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_7_assume_59 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (then_7_assume_60 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (assume_60 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < (i + 1))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q)))
    (assert_33 : (0 ≤ (i + 1)) ∧ ((i + 1) < Vermilion.usizeMod)) :
    Vermilion.Seq.len reference_index = Vermilion.Seq.len keys := by
  exact loop_1_iteration_28
-- vrml:end reclaim_plan.project_keys.invariant_preserve_1_3

-- vrml:begin reclaim_plan.project_keys.invariant_preserve_1_4 6fe9f9a70642b8d9
/--
Generated VC `reclaim_plan.project_keys.invariant_preserve_1_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1211:13-1211:36`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_4`
- Statement hash: `6fe9f9a70642b8d9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q⟩
-/
def invariant_preserve_1_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1211
  startColumn := 13
  endLine := 1211
  endColumn := 36
  assertId := "1_4"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_preserve"
  statementHash := "6fe9f9a70642b8d9"
}
@[vrml_obligation] theorem invariant_preserve_1_4
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (tmp__12 : (Vermilion.Seq Int))
    (tmp__13 : (Vermilion.Seq (Vermilion.Seq Int)))
    (tmp__14 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__15 : (Vermilion.Seq Int))
    (row : reclaim_plan.RowProjection)
    (tmp__16 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_20 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_22 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_24 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → ((0 ≤ Vermilion.Seq.index tmp__12 vrml_i0) ∧ (Vermilion.Seq.index tmp__12 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → ((0 ≤ Vermilion.Seq.len tmp__14) ∧ (Vermilion.Seq.len tmp__14 < Vermilion.usizeMod)))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__15) ∧ (Vermilion.Seq.len tmp__15 < Vermilion.usizeMod))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → ((0 ≤ Vermilion.Seq.index tmp__15 vrml_i0) ∧ (Vermilion.Seq.index tmp__15 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : (0 ≤ Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)) ∧ (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row) < Vermilion.usizeMod))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (then_7_call_new_5_ensures_0 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → ((0 ≤ Vermilion.Seq.len tmp__16) ∧ (Vermilion.Seq.len tmp__16 < Vermilion.usizeMod)))
    (then_7_call_new_5_ensures_1 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod))))))
    (then_7_call_new_5_ensures_2 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_7_assume_59 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (then_7_assume_60 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (assume_60 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < (i + 1))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q)))
    (assert_33 : (0 ≤ (i + 1)) ∧ ((i + 1) < Vermilion.usizeMod)) :
    reclaim_plan.keys_sorted_spec keys := by
  exact loop_1_iteration_29
-- vrml:end reclaim_plan.project_keys.invariant_preserve_1_4

-- vrml:begin reclaim_plan.project_keys.invariant_preserve_1_5 1f10780ac8a6865f
/--
Generated VC `reclaim_plan.project_keys.invariant_preserve_1_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1211:38-1211:86`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_5`
- Statement hash: `1f10780ac8a6865f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q⟩
-/
def invariant_preserve_1_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1211
  startColumn := 38
  endLine := 1211
  endColumn := 86
  assertId := "1_5"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_preserve"
  statementHash := "1f10780ac8a6865f"
}
@[vrml_obligation] theorem invariant_preserve_1_5
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (tmp__12 : (Vermilion.Seq Int))
    (tmp__13 : (Vermilion.Seq (Vermilion.Seq Int)))
    (tmp__14 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__15 : (Vermilion.Seq Int))
    (row : reclaim_plan.RowProjection)
    (tmp__16 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_20 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_22 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_24 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → ((0 ≤ Vermilion.Seq.index tmp__12 vrml_i0) ∧ (Vermilion.Seq.index tmp__12 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → ((0 ≤ Vermilion.Seq.len tmp__14) ∧ (Vermilion.Seq.len tmp__14 < Vermilion.usizeMod)))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__15) ∧ (Vermilion.Seq.len tmp__15 < Vermilion.usizeMod))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → ((0 ≤ Vermilion.Seq.index tmp__15 vrml_i0) ∧ (Vermilion.Seq.index tmp__15 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : (0 ≤ Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)) ∧ (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row) < Vermilion.usizeMod))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (then_7_call_new_5_ensures_0 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → ((0 ≤ Vermilion.Seq.len tmp__16) ∧ (Vermilion.Seq.len tmp__16 < Vermilion.usizeMod)))
    (then_7_call_new_5_ensures_1 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod))))))
    (then_7_call_new_5_ensures_2 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_7_assume_59 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (then_7_assume_60 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (assume_60 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < (i + 1))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q)))
    (assert_33 : (0 ≤ (i + 1)) ∧ ((i + 1) < Vermilion.usizeMod)) :
    reclaim_plan.roots_match_keys_spec keys root_keys roots := by
  exact loop_1_iteration_30
-- vrml:end reclaim_plan.project_keys.invariant_preserve_1_5

-- vrml:begin reclaim_plan.project_keys.invariant_preserve_1_6 ca7d0ac6ce2499fa
/--
Generated VC `reclaim_plan.project_keys.invariant_preserve_1_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1212:13-1212:126`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_6`
- Statement hash: `ca7d0ac6ce2499fa`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q⟩
-/
def invariant_preserve_1_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1212
  startColumn := 13
  endLine := 1212
  endColumn := 126
  assertId := "1_6"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_preserve"
  statementHash := "ca7d0ac6ce2499fa"
}
@[vrml_obligation] theorem invariant_preserve_1_6
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (tmp__12 : (Vermilion.Seq Int))
    (tmp__13 : (Vermilion.Seq (Vermilion.Seq Int)))
    (tmp__14 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__15 : (Vermilion.Seq Int))
    (row : reclaim_plan.RowProjection)
    (tmp__16 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_20 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_22 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_24 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → ((0 ≤ Vermilion.Seq.index tmp__12 vrml_i0) ∧ (Vermilion.Seq.index tmp__12 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → ((0 ≤ Vermilion.Seq.len tmp__14) ∧ (Vermilion.Seq.len tmp__14 < Vermilion.usizeMod)))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__15) ∧ (Vermilion.Seq.len tmp__15 < Vermilion.usizeMod))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → ((0 ≤ Vermilion.Seq.index tmp__15 vrml_i0) ∧ (Vermilion.Seq.index tmp__15 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : (0 ≤ Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)) ∧ (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row) < Vermilion.usizeMod))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (then_7_call_new_5_ensures_0 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → ((0 ≤ Vermilion.Seq.len tmp__16) ∧ (Vermilion.Seq.len tmp__16 < Vermilion.usizeMod)))
    (then_7_call_new_5_ensures_1 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod))))))
    (then_7_call_new_5_ensures_2 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_7_assume_59 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (then_7_assume_60 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (assume_60 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < (i + 1))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q)))
    (assert_33 : (0 ≤ (i + 1)) ∧ ((i + 1) < Vermilion.usizeMod)) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))) := by
  exact call_project_row_ensures_3
-- vrml:end reclaim_plan.project_keys.invariant_preserve_1_6

-- vrml:begin reclaim_plan.project_keys.invariant_preserve_1_7 5753767cd5a15fb4
/--
Generated VC `reclaim_plan.project_keys.invariant_preserve_1_7`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1213:13-1214:116`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_7`
- Statement hash: `5753767cd5a15fb4`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q⟩
-/
def invariant_preserve_1_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1213
  startColumn := 13
  endLine := 1214
  endColumn := 116
  assertId := "1_7"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_preserve"
  statementHash := "5753767cd5a15fb4"
}
@[vrml_obligation] theorem invariant_preserve_1_7
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (tmp__12 : (Vermilion.Seq Int))
    (tmp__13 : (Vermilion.Seq (Vermilion.Seq Int)))
    (tmp__14 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__15 : (Vermilion.Seq Int))
    (row : reclaim_plan.RowProjection)
    (tmp__16 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_20 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_22 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_24 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → ((0 ≤ Vermilion.Seq.index tmp__12 vrml_i0) ∧ (Vermilion.Seq.index tmp__12 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → ((0 ≤ Vermilion.Seq.len tmp__14) ∧ (Vermilion.Seq.len tmp__14 < Vermilion.usizeMod)))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__15) ∧ (Vermilion.Seq.len tmp__15 < Vermilion.usizeMod))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → ((0 ≤ Vermilion.Seq.index tmp__15 vrml_i0) ∧ (Vermilion.Seq.index tmp__15 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : (0 ≤ Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)) ∧ (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row) < Vermilion.usizeMod))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (then_7_call_new_5_ensures_0 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → ((0 ≤ Vermilion.Seq.len tmp__16) ∧ (Vermilion.Seq.len tmp__16 < Vermilion.usizeMod)))
    (then_7_call_new_5_ensures_1 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod))))))
    (then_7_call_new_5_ensures_2 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_7_assume_59 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (then_7_assume_60 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (assume_60 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < (i + 1))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q)))
    (assert_33 : (0 ≤ (i + 1)) ∧ ((i + 1) < Vermilion.usizeMod)) :
    (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < (Vermilion.emod (i + 1) Vermilion.usizeMod))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q)) := by
  have hr : Vermilion.emod (i + 1) Vermilion.usizeMod = i + 1 := Vermilion.emod_usizeMod_of_lt assert_33.1 assert_33.2
  rw [hr]
  exact assume_60
-- vrml:end reclaim_plan.project_keys.invariant_preserve_1_7

-- vrml:begin reclaim_plan.project_keys.assert_1_decreases 3fee5438d31c8d1d
/--
Generated VC `reclaim_plan.project_keys.assert_1_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1215:19-1215:24`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `1_decreases`
- Statement hash: `3fee5438d31c8d1d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q⟩
-/
def assert_1_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1215
  startColumn := 19
  endLine := 1215
  endColumn := 24
  assertId := "1_decreases"
  functionName := "reclaim_plan.project_keys"
  kind := "assert"
  statementHash := "3fee5438d31c8d1d"
}
@[vrml_obligation] theorem assert_1_decreases
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (tmp__12 : (Vermilion.Seq Int))
    (tmp__13 : (Vermilion.Seq (Vermilion.Seq Int)))
    (tmp__14 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__15 : (Vermilion.Seq Int))
    (row : reclaim_plan.RowProjection)
    (tmp__16 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_1_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (loop_1_iteration_13 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_14 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (loop_1_iteration_15 : (0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_17 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_19 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_20 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_22 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_24 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → ((0 ≤ Vermilion.Seq.index tmp__12 vrml_i0) ∧ (Vermilion.Seq.index tmp__12 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : (0 ≤ Vermilion.Seq.len tmp__12) ∧ (Vermilion.Seq.len tmp__12 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : (0 ≤ Vermilion.Seq.len tmp__13) ∧ (Vermilion.Seq.len tmp__13 < Vermilion.usizeMod))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → ((0 ≤ Vermilion.Seq.len tmp__14) ∧ (Vermilion.Seq.len tmp__14 < Vermilion.usizeMod)))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0) < Vermilion.usizeMod))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__15) ∧ (Vermilion.Seq.len tmp__15 < Vermilion.usizeMod))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → ((0 ≤ Vermilion.Seq.index tmp__15 vrml_i0) ∧ (Vermilion.Seq.index tmp__15 vrml_i0 < Vermilion.usizeMod)))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : (0 ≤ Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)) ∧ (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row) < Vermilion.usizeMod))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0) < Vermilion.usizeMod))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (then_7_call_new_5_ensures_0 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → ((0 ≤ Vermilion.Seq.len tmp__16) ∧ (Vermilion.Seq.len tmp__16 < Vermilion.usizeMod)))
    (then_7_call_new_5_ensures_1 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0) < Vermilion.usizeMod))))))
    (then_7_call_new_5_ensures_2 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_7_assume_59 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (then_7_assume_60 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (assume_60 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < (i + 1))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q)))
    (assert_33 : (0 ≤ (i + 1)) ∧ ((i + 1) < Vermilion.usizeMod)) :
    ((0 ≤ (Vermilion.Seq.len keys - (Vermilion.emod (i + 1) Vermilion.usizeMod))) ∧ ((Vermilion.Seq.len keys - (Vermilion.emod (i + 1) Vermilion.usizeMod)) < (Vermilion.Seq.len keys - i))) ∨ (((Vermilion.Seq.len keys - (Vermilion.emod (i + 1) Vermilion.usizeMod)) = (Vermilion.Seq.len keys - i)) ∧ False) := by
  have hr : Vermilion.emod (i + 1) Vermilion.usizeMod = i + 1 := Vermilion.emod_usizeMod_of_lt assert_33.1 assert_33.2
  rw [hr]
  left; omega
-- vrml:end reclaim_plan.project_keys.assert_1_decreases

-- vrml:begin reclaim_plan.project_keys.assert_34 286b8174f090b028
/--
Generated VC `reclaim_plan.project_keys.assert_34`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1239:81-1239:132`
- Rust/SST construct: Rust source assertion
- AssertId: `34`
- Statement hash: `286b8174f090b028`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩
-/
def assert_34_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1239
  startColumn := 81
  endLine := 1239
  endColumn := 132
  assertId := "34"
  functionName := "reclaim_plan.project_keys"
  kind := "assert"
  statementHash := "286b8174f090b028"
}
@[vrml_obligation] theorem assert_34
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (a_2 : Int)
    (q_2 : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (requires_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (assume_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod)))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod)))
    (else_1_assume_17 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod)))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (then_3_call_new_1_ensures_0 : (¬ reclaim_plan.keys_sorted_spec keys) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (then_3_call_new_1_ensures_1 : (¬ reclaim_plan.keys_sorted_spec keys) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (then_3_call_new_1_ensures_2 : (¬ reclaim_plan.keys_sorted_spec keys) → (tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_3_assume_28 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (then_3_assume_29 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (loop_0_exit_0 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (call_new_3_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (call_new_3_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (call_new_3_ensures_2 : tmp__11 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_1_exit_0 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_exit_2 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_exit_3 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_exit_4 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_exit_5 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_exit_6 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_exit_7 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_exit_8 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_exit_9 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_exit_10 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_exit_11 : (¬ (i < Vermilion.Seq.len keys)))
    (assume_50 : True)
    (assume_51 : True)
    (assume_52 : ((0 ≤ a_2) ∧ (a_2 < Vermilion.Seq.len references)) ∧ ((0 ≤ q_2) ∧ (q_2 < Vermilion.Seq.len (Vermilion.Seq.index references a_2)))) :
    reclaim_plan.ref_resolved_spec keys references edges a_2 q_2 := by
  exact loop_1_exit_10 a_2 q_2 ⟨⟨assume_52.1.1, by have := assume_52.1.2; omega⟩, assume_52.2⟩
-- vrml:end reclaim_plan.project_keys.assert_34

-- vrml:begin reclaim_plan.project_keys.ensures_35 839694d5cdd30a67
/--
Generated VC `reclaim_plan.project_keys.ensures_35`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1186:13-1186:103`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `35`
- Statement hash: `839694d5cdd30a67`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩
-/
def ensures_35_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1186
  startColumn := 13
  endLine := 1186
  endColumn := 103
  assertId := "35"
  functionName := "reclaim_plan.project_keys"
  kind := "ensures"
  statementHash := "839694d5cdd30a67"
}
@[vrml_obligation] theorem ensures_35
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (reference_index : (Vermilion.Seq (Vermilion.Seq Int)))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (roots : (Vermilion.Seq Int))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp__4 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (r : Int)
    (tmp__11 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) < Vermilion.usizeMod)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : (0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → ((0 ≤ Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1) ∧ (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1 < Vermilion.usizeMod))))))))
    (requires_6 : (0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (assume_10 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (assume_11 : (0 ≤ Vermilion.Seq.len references) ∧ (Vermilion.Seq.len references < Vermilion.usizeMod))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → ((0 ≤ Vermilion.Seq.len reference_index) ∧ (Vermilion.Seq.len reference_index < Vermilion.usizeMod)))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod)))
    (else_1_assume_17 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len root_keys) ∧ (Vermilion.Seq.len root_keys < Vermilion.usizeMod)))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0) < Vermilion.usizeMod))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (then_3_call_new_1_ensures_0 : (¬ reclaim_plan.keys_sorted_spec keys) → ((0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod)))
    (then_3_call_new_1_ensures_1 : (¬ reclaim_plan.keys_sorted_spec keys) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0) < Vermilion.usizeMod))))))
    (then_3_call_new_1_ensures_2 : (¬ reclaim_plan.keys_sorted_spec keys) → (tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_3_assume_28 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (then_3_assume_29 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (loop_0_exit_0 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (call_new_3_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__11) ∧ (Vermilion.Seq.len tmp__11 < Vermilion.usizeMod))
    (call_new_3_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0) < Vermilion.usizeMod))))))
    (call_new_3_ensures_2 : tmp__11 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_1_exit_0 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_exit_2 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_exit_3 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_exit_4 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_exit_5 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_exit_6 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_exit_7 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_exit_8 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_exit_9 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_exit_10 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_exit_11 : (¬ (i < Vermilion.Seq.len keys)))
    (assume_50 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < Vermilion.Seq.len references)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q))) :
    reclaim_plan.KeyProjection.get_KeyProjection_ok (reclaim_plan.KeyProjection.KeyProjection True edges) → reclaim_plan.projection_valid_spec keys references root_keys (reclaim_plan.KeyProjection.get_KeyProjection_edges (reclaim_plan.KeyProjection.KeyProjection True edges)) roots := by
  intro _
  exact ⟨⟨loop_1_exit_7, ⟨loop_1_exit_5, loop_1_exit_9⟩, fun a q h => assume_50 a q h⟩, loop_1_exit_8⟩
-- vrml:end reclaim_plan.project_keys.ensures_35

end reclaim_plan.project_keys

