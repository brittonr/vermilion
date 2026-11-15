import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.project_keys

-- vrml:begin reclaim_plan.project_keys.ensures_6 a532c8aa28b65e7a
/--
Generated VC `reclaim_plan.project_keys.ensures_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1183:13-1183:103`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `6`
- Statement hash: `a532c8aa28b65e7a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩
-/
def ensures_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1183
  startColumn := 13
  endLine := 1183
  endColumn := 103
  assertId := "6"
  functionName := "reclaim_plan.project_keys"
  kind := "ensures"
  statementHash := "a532c8aa28b65e7a"
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
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (assume_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_1_assume_17 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (branch_2 : tmp__2)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (call_new_ensures_2 : tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))) :
    reclaim_plan.KeyProjection.get_KeyProjection_ok (reclaim_plan.KeyProjection.KeyProjection False tmp__3) → reclaim_plan.projection_valid_spec keys references root_keys (reclaim_plan.KeyProjection.get_KeyProjection_edges (reclaim_plan.KeyProjection.KeyProjection False tmp__3)) roots := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.ensures_6

-- vrml:begin reclaim_plan.project_keys.ensures_9 8ad869634658d0ab
/--
Generated VC `reclaim_plan.project_keys.ensures_9`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1183:13-1183:103`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `9`
- Statement hash: `8ad869634658d0ab`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩
-/
def ensures_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1183
  startColumn := 13
  endLine := 1183
  endColumn := 103
  assertId := "9"
  functionName := "reclaim_plan.project_keys"
  kind := "ensures"
  statementHash := "8ad869634658d0ab"
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
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (assume_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_1_assume_17 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (branch_3 : (¬ reclaim_plan.keys_sorted_spec keys))
    (call_new_1_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (call_new_1_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (call_new_1_ensures_2 : tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))) :
    reclaim_plan.KeyProjection.get_KeyProjection_ok (reclaim_plan.KeyProjection.KeyProjection False tmp__4) → reclaim_plan.projection_valid_spec keys references root_keys (reclaim_plan.KeyProjection.get_KeyProjection_edges (reclaim_plan.KeyProjection.KeyProjection False tmp__4)) roots := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.ensures_9

-- vrml:begin reclaim_plan.project_keys.invariant_entry_0_0 609a2305b81d9a61
/--
Generated VC `reclaim_plan.project_keys.invariant_entry_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1194:19-1194:40`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `609a2305b81d9a61`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1194
  startColumn := 19
  endLine := 1194
  endColumn := 40
  assertId := "0_0"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_entry"
  statementHash := "609a2305b81d9a61"
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
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (assume_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_1_assume_17 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (then_3_call_new_1_ensures_0 : (¬ reclaim_plan.keys_sorted_spec keys) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (then_3_call_new_1_ensures_1 : (¬ reclaim_plan.keys_sorted_spec keys) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (then_3_call_new_1_ensures_2 : (¬ reclaim_plan.keys_sorted_spec keys) → (tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_3_assume_28 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (then_3_assume_29 : (¬ reclaim_plan.keys_sorted_spec keys) → False) :
    (0 ≤ 0) ∧ (0 ≤ Vermilion.Seq.len roots) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.invariant_entry_0_0

-- vrml:begin reclaim_plan.project_keys.invariant_entry_0_1 ac111a9d98406585
/--
Generated VC `reclaim_plan.project_keys.invariant_entry_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1194:42-1194:72`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `ac111a9d98406585`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1194
  startColumn := 42
  endLine := 1194
  endColumn := 72
  assertId := "0_1"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_entry"
  statementHash := "ac111a9d98406585"
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
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (assume_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_1_assume_17 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (then_3_call_new_1_ensures_0 : (¬ reclaim_plan.keys_sorted_spec keys) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (then_3_call_new_1_ensures_1 : (¬ reclaim_plan.keys_sorted_spec keys) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (then_3_call_new_1_ensures_2 : (¬ reclaim_plan.keys_sorted_spec keys) → (tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_3_assume_28 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (then_3_assume_29 : (¬ reclaim_plan.keys_sorted_spec keys) → False) :
    Vermilion.Seq.len roots = Vermilion.Seq.len root_keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.invariant_entry_0_1

-- vrml:begin reclaim_plan.project_keys.invariant_entry_0_2 b394b37dd19fa8b1
/--
Generated VC `reclaim_plan.project_keys.invariant_entry_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1194:74-1194:89`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_2`
- Statement hash: `b394b37dd19fa8b1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩
-/
def invariant_entry_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1194
  startColumn := 74
  endLine := 1194
  endColumn := 89
  assertId := "0_2"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_entry"
  statementHash := "b394b37dd19fa8b1"
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
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (assume_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_1_assume_17 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (then_3_call_new_1_ensures_0 : (¬ reclaim_plan.keys_sorted_spec keys) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (then_3_call_new_1_ensures_1 : (¬ reclaim_plan.keys_sorted_spec keys) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (then_3_call_new_1_ensures_2 : (¬ reclaim_plan.keys_sorted_spec keys) → (tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_3_assume_28 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (then_3_assume_29 : (¬ reclaim_plan.keys_sorted_spec keys) → False) :
    Vermilion.Seq.len keys = Vermilion.Seq.len keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.invariant_entry_0_2

-- vrml:begin reclaim_plan.project_keys.invariant_entry_0_3 2fb11edc1f7911bf
/--
Generated VC `reclaim_plan.project_keys.invariant_entry_0_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1195:13-1196:94`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_3`
- Statement hash: `2fb11edc1f7911bf`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩
-/
def invariant_entry_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1195
  startColumn := 13
  endLine := 1196
  endColumn := 94
  assertId := "0_3"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_entry"
  statementHash := "2fb11edc1f7911bf"
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
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (assume_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_1_assume_17 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (then_3_call_new_1_ensures_0 : (¬ reclaim_plan.keys_sorted_spec keys) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (then_3_call_new_1_ensures_1 : (¬ reclaim_plan.keys_sorted_spec keys) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (then_3_call_new_1_ensures_2 : (¬ reclaim_plan.keys_sorted_spec keys) → (tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_3_assume_28 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (then_3_assume_29 : (¬ reclaim_plan.keys_sorted_spec keys) → False) :
    (∀ (q : Int), (((0 ≤ q) ∧ (q < 0)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.invariant_entry_0_3

-- vrml:begin reclaim_plan.project_keys.call_requires_11 b65ca586c19909ce
/--
Generated VC `reclaim_plan.project_keys.call_requires_11`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1199:12-1199:20`
- Rust/SST construct: call vec_index
- AssertId: `11`
- Statement hash: `b65ca586c19909ce`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩
-/
def call_requires_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1199
  startColumn := 12
  endLine := 1199
  endColumn := 20
  assertId := "11"
  functionName := "reclaim_plan.project_keys"
  kind := "call_requires"
  statementHash := "b65ca586c19909ce"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_0_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_0_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_0_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_0_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_0_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_0_iteration_20 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_21 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_iteration_22 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_23 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_iteration_24 : r < Vermilion.Seq.len roots) :
    r < Vermilion.Seq.len roots := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.call_requires_11

-- vrml:begin reclaim_plan.project_keys.call_requires_12 73bbdfd79949b16a
/--
Generated VC `reclaim_plan.project_keys.call_requires_12`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1199:43-1199:51`
- Rust/SST construct: call vec_index
- AssertId: `12`
- Statement hash: `73bbdfd79949b16a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩
-/
def call_requires_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1199
  startColumn := 43
  endLine := 1199
  endColumn := 51
  assertId := "12"
  functionName := "reclaim_plan.project_keys"
  kind := "call_requires"
  statementHash := "73bbdfd79949b16a"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_0_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_0_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_0_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_0_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_0_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_0_iteration_20 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_21 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_iteration_22 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_23 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_iteration_24 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__5)
    (call_vec_index_ensures_1 : tmp__5 = Vermilion.Seq.index roots r)
    (branch_4 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys))) :
    r < Vermilion.Seq.len roots := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.call_requires_12

-- vrml:begin reclaim_plan.project_keys.call_requires_13 046ec7a0dbbcff4e
/--
Generated VC `reclaim_plan.project_keys.call_requires_13`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1199:38-1199:52`
- Rust/SST construct: call vec_index
- AssertId: `13`
- Statement hash: `046ec7a0dbbcff4e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩
-/
def call_requires_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1199
  startColumn := 38
  endLine := 1199
  endColumn := 52
  assertId := "13"
  functionName := "reclaim_plan.project_keys"
  kind := "call_requires"
  statementHash := "046ec7a0dbbcff4e"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_0_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_0_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_0_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_0_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_0_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_0_iteration_20 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_21 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_iteration_22 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_23 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_iteration_24 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__5)
    (call_vec_index_ensures_1 : tmp__5 = Vermilion.Seq.index roots r)
    (branch_4 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)))
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__6)
    (call_vec_index_1_ensures_1 : tmp__6 = Vermilion.Seq.index roots r) :
    tmp__6 < Vermilion.Seq.len keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.call_requires_13

-- vrml:begin reclaim_plan.project_keys.call_requires_14 af5fd1f14287b5c2
/--
Generated VC `reclaim_plan.project_keys.call_requires_14`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1199:55-1199:67`
- Rust/SST construct: call vec_index
- AssertId: `14`
- Statement hash: `af5fd1f14287b5c2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__7 vrml_i0⟩
-/
def call_requires_14_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1199
  startColumn := 55
  endLine := 1199
  endColumn := 67
  assertId := "14"
  functionName := "reclaim_plan.project_keys"
  kind := "call_requires"
  statementHash := "af5fd1f14287b5c2"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_0_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_0_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_0_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_0_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_0_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_0_iteration_20 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_21 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_iteration_22 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_23 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_iteration_24 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__5)
    (call_vec_index_ensures_1 : tmp__5 = Vermilion.Seq.index roots r)
    (branch_4 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)))
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__6)
    (call_vec_index_1_ensures_1 : tmp__6 = Vermilion.Seq.index roots r)
    (call_vec_index_2_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__7))
    (call_vec_index_2_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__7)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__7 vrml_i0))))
    (call_vec_index_2_ensures_2 : tmp__7 = Vermilion.Seq.index keys tmp__6) :
    r < Vermilion.Seq.len root_keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.call_requires_14

-- vrml:begin reclaim_plan.project_keys.ensures_17 f89cc2e42917ca15
/--
Generated VC `reclaim_plan.project_keys.ensures_17`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1183:13-1183:103`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `17`
- Statement hash: `f89cc2e42917ca15`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__7 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__8 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__10 vrml_i0⟩
-/
def ensures_17_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1183
  startColumn := 13
  endLine := 1183
  endColumn := 103
  assertId := "17"
  functionName := "reclaim_plan.project_keys"
  kind := "ensures"
  statementHash := "f89cc2e42917ca15"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_0_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_0_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_0_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_0_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_0_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_0_iteration_20 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_21 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_iteration_22 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_23 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_iteration_24 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__5)
    (call_vec_index_ensures_1 : tmp__5 = Vermilion.Seq.index roots r)
    (then_4_assume_28 : (tmp__5 ≥ Vermilion.Seq.len keys) → (tmp__9 ↔ True))
    (else_4_call_vec_index_1_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 tmp__6)
    (else_4_call_vec_index_1_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__6 = Vermilion.Seq.index roots r))
    (else_4_call_vec_index_2_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__7))
    (else_4_call_vec_index_2_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__7)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__7 vrml_i0))))
    (else_4_call_vec_index_2_ensures_2 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__7 = Vermilion.Seq.index keys tmp__6))
    (else_4_call_vec_index_3_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__8))
    (else_4_call_vec_index_3_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__8)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__8 vrml_i0))))
    (else_4_call_vec_index_3_ensures_2 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__8 = Vermilion.Seq.index root_keys r))
    (else_4_assume_36 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__9 ↔ (¬ (tmp__7 = tmp__8))))
    (branch_5 : tmp__9)
    (call_new_2_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__10))
    (call_new_2_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__10)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__10 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__10 vrml_i0))))))
    (call_new_2_ensures_2 : tmp__10 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))) :
    reclaim_plan.KeyProjection.get_KeyProjection_ok (reclaim_plan.KeyProjection.KeyProjection False tmp__10) → reclaim_plan.projection_valid_spec keys references root_keys (reclaim_plan.KeyProjection.get_KeyProjection_edges (reclaim_plan.KeyProjection.KeyProjection False tmp__10)) roots := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.ensures_17

-- vrml:begin reclaim_plan.project_keys.assert_18 5e9cfd7fb143f145
/--
Generated VC `reclaim_plan.project_keys.assert_18`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1202:13-1202:18`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `18`
- Statement hash: `5e9cfd7fb143f145`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__7 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__8 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__10 vrml_i0⟩
-/
def assert_18_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1202
  startColumn := 13
  endLine := 1202
  endColumn := 18
  assertId := "18"
  functionName := "reclaim_plan.project_keys"
  kind := "assert"
  statementHash := "5e9cfd7fb143f145"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_0_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_0_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_0_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_0_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_0_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_0_iteration_20 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_21 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_iteration_22 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_23 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_iteration_24 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__5)
    (call_vec_index_ensures_1 : tmp__5 = Vermilion.Seq.index roots r)
    (then_4_assume_28 : (tmp__5 ≥ Vermilion.Seq.len keys) → (tmp__9 ↔ True))
    (else_4_call_vec_index_1_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 tmp__6)
    (else_4_call_vec_index_1_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__6 = Vermilion.Seq.index roots r))
    (else_4_call_vec_index_2_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__7))
    (else_4_call_vec_index_2_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__7)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__7 vrml_i0))))
    (else_4_call_vec_index_2_ensures_2 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__7 = Vermilion.Seq.index keys tmp__6))
    (else_4_call_vec_index_3_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__8))
    (else_4_call_vec_index_3_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__8)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__8 vrml_i0))))
    (else_4_call_vec_index_3_ensures_2 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__8 = Vermilion.Seq.index root_keys r))
    (else_4_assume_36 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__9 ↔ (¬ (tmp__7 = tmp__8))))
    (then_5_call_new_2_ensures_0 : tmp__9 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__10))
    (then_5_call_new_2_ensures_1 : tmp__9 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__10)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__10 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__10 vrml_i0))))))
    (then_5_call_new_2_ensures_2 : tmp__9 → (tmp__10 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_5_assume_41 : tmp__9 → False)
    (then_5_assume_42 : tmp__9 → False) :
    Vermilion.inUnsignedRange 64 (r + 1) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.assert_18

-- vrml:begin reclaim_plan.project_keys.invariant_preserve_0_0 f1cb54609b33dd21
/--
Generated VC `reclaim_plan.project_keys.invariant_preserve_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1194:19-1194:40`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `f1cb54609b33dd21`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__7 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__8 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__10 vrml_i0⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1194
  startColumn := 19
  endLine := 1194
  endColumn := 40
  assertId := "0_0"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_preserve"
  statementHash := "f1cb54609b33dd21"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_0_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_0_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_0_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_0_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_0_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_0_iteration_20 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_21 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_iteration_22 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_23 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_iteration_24 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__5)
    (call_vec_index_ensures_1 : tmp__5 = Vermilion.Seq.index roots r)
    (then_4_assume_28 : (tmp__5 ≥ Vermilion.Seq.len keys) → (tmp__9 ↔ True))
    (else_4_call_vec_index_1_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 tmp__6)
    (else_4_call_vec_index_1_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__6 = Vermilion.Seq.index roots r))
    (else_4_call_vec_index_2_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__7))
    (else_4_call_vec_index_2_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__7)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__7 vrml_i0))))
    (else_4_call_vec_index_2_ensures_2 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__7 = Vermilion.Seq.index keys tmp__6))
    (else_4_call_vec_index_3_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__8))
    (else_4_call_vec_index_3_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__8)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__8 vrml_i0))))
    (else_4_call_vec_index_3_ensures_2 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__8 = Vermilion.Seq.index root_keys r))
    (else_4_assume_36 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__9 ↔ (¬ (tmp__7 = tmp__8))))
    (then_5_call_new_2_ensures_0 : tmp__9 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__10))
    (then_5_call_new_2_ensures_1 : tmp__9 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__10)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__10 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__10 vrml_i0))))))
    (then_5_call_new_2_ensures_2 : tmp__9 → (tmp__10 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_5_assume_41 : tmp__9 → False)
    (then_5_assume_42 : tmp__9 → False)
    (assert_18 : Vermilion.inUnsignedRange 64 (r + 1)) :
    (0 ≤ ((r + 1) % 18446744073709551616)) ∧ (((r + 1) % 18446744073709551616) ≤ Vermilion.Seq.len roots) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.invariant_preserve_0_0

-- vrml:begin reclaim_plan.project_keys.invariant_preserve_0_1 9995fb951843618b
/--
Generated VC `reclaim_plan.project_keys.invariant_preserve_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1194:42-1194:72`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `9995fb951843618b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__7 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__8 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__10 vrml_i0⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1194
  startColumn := 42
  endLine := 1194
  endColumn := 72
  assertId := "0_1"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_preserve"
  statementHash := "9995fb951843618b"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_0_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_0_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_0_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_0_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_0_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_0_iteration_20 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_21 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_iteration_22 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_23 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_iteration_24 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__5)
    (call_vec_index_ensures_1 : tmp__5 = Vermilion.Seq.index roots r)
    (then_4_assume_28 : (tmp__5 ≥ Vermilion.Seq.len keys) → (tmp__9 ↔ True))
    (else_4_call_vec_index_1_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 tmp__6)
    (else_4_call_vec_index_1_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__6 = Vermilion.Seq.index roots r))
    (else_4_call_vec_index_2_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__7))
    (else_4_call_vec_index_2_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__7)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__7 vrml_i0))))
    (else_4_call_vec_index_2_ensures_2 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__7 = Vermilion.Seq.index keys tmp__6))
    (else_4_call_vec_index_3_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__8))
    (else_4_call_vec_index_3_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__8)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__8 vrml_i0))))
    (else_4_call_vec_index_3_ensures_2 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__8 = Vermilion.Seq.index root_keys r))
    (else_4_assume_36 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__9 ↔ (¬ (tmp__7 = tmp__8))))
    (then_5_call_new_2_ensures_0 : tmp__9 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__10))
    (then_5_call_new_2_ensures_1 : tmp__9 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__10)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__10 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__10 vrml_i0))))))
    (then_5_call_new_2_ensures_2 : tmp__9 → (tmp__10 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_5_assume_41 : tmp__9 → False)
    (then_5_assume_42 : tmp__9 → False)
    (assert_18 : Vermilion.inUnsignedRange 64 (r + 1)) :
    Vermilion.Seq.len roots = Vermilion.Seq.len root_keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.invariant_preserve_0_1

-- vrml:begin reclaim_plan.project_keys.invariant_preserve_0_2 83cf6f3c3641365f
/--
Generated VC `reclaim_plan.project_keys.invariant_preserve_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1194:74-1194:89`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_2`
- Statement hash: `83cf6f3c3641365f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__7 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__8 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__10 vrml_i0⟩
-/
def invariant_preserve_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1194
  startColumn := 74
  endLine := 1194
  endColumn := 89
  assertId := "0_2"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_preserve"
  statementHash := "83cf6f3c3641365f"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_0_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_0_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_0_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_0_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_0_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_0_iteration_20 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_21 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_iteration_22 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_23 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_iteration_24 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__5)
    (call_vec_index_ensures_1 : tmp__5 = Vermilion.Seq.index roots r)
    (then_4_assume_28 : (tmp__5 ≥ Vermilion.Seq.len keys) → (tmp__9 ↔ True))
    (else_4_call_vec_index_1_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 tmp__6)
    (else_4_call_vec_index_1_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__6 = Vermilion.Seq.index roots r))
    (else_4_call_vec_index_2_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__7))
    (else_4_call_vec_index_2_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__7)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__7 vrml_i0))))
    (else_4_call_vec_index_2_ensures_2 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__7 = Vermilion.Seq.index keys tmp__6))
    (else_4_call_vec_index_3_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__8))
    (else_4_call_vec_index_3_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__8)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__8 vrml_i0))))
    (else_4_call_vec_index_3_ensures_2 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__8 = Vermilion.Seq.index root_keys r))
    (else_4_assume_36 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__9 ↔ (¬ (tmp__7 = tmp__8))))
    (then_5_call_new_2_ensures_0 : tmp__9 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__10))
    (then_5_call_new_2_ensures_1 : tmp__9 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__10)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__10 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__10 vrml_i0))))))
    (then_5_call_new_2_ensures_2 : tmp__9 → (tmp__10 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_5_assume_41 : tmp__9 → False)
    (then_5_assume_42 : tmp__9 → False)
    (assert_18 : Vermilion.inUnsignedRange 64 (r + 1)) :
    Vermilion.Seq.len keys = Vermilion.Seq.len keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.invariant_preserve_0_2

-- vrml:begin reclaim_plan.project_keys.invariant_preserve_0_3 893ede48375c2c12
/--
Generated VC `reclaim_plan.project_keys.invariant_preserve_0_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1195:13-1196:94`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_3`
- Statement hash: `893ede48375c2c12`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__7 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__8 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__10 vrml_i0⟩
-/
def invariant_preserve_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1195
  startColumn := 13
  endLine := 1196
  endColumn := 94
  assertId := "0_3"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_preserve"
  statementHash := "893ede48375c2c12"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_0_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_0_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_0_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_0_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_0_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_0_iteration_20 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_21 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_iteration_22 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_23 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_iteration_24 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__5)
    (call_vec_index_ensures_1 : tmp__5 = Vermilion.Seq.index roots r)
    (then_4_assume_28 : (tmp__5 ≥ Vermilion.Seq.len keys) → (tmp__9 ↔ True))
    (else_4_call_vec_index_1_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 tmp__6)
    (else_4_call_vec_index_1_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__6 = Vermilion.Seq.index roots r))
    (else_4_call_vec_index_2_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__7))
    (else_4_call_vec_index_2_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__7)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__7 vrml_i0))))
    (else_4_call_vec_index_2_ensures_2 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__7 = Vermilion.Seq.index keys tmp__6))
    (else_4_call_vec_index_3_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__8))
    (else_4_call_vec_index_3_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__8)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__8 vrml_i0))))
    (else_4_call_vec_index_3_ensures_2 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__8 = Vermilion.Seq.index root_keys r))
    (else_4_assume_36 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__9 ↔ (¬ (tmp__7 = tmp__8))))
    (then_5_call_new_2_ensures_0 : tmp__9 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__10))
    (then_5_call_new_2_ensures_1 : tmp__9 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__10)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__10 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__10 vrml_i0))))))
    (then_5_call_new_2_ensures_2 : tmp__9 → (tmp__10 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_5_assume_41 : tmp__9 → False)
    (then_5_assume_42 : tmp__9 → False)
    (assert_18 : Vermilion.inUnsignedRange 64 (r + 1)) :
    (∀ (q : Int), (((0 ≤ q) ∧ (q < ((r + 1) % 18446744073709551616))) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.project_keys.invariant_preserve_0_3

-- vrml:begin reclaim_plan.project_keys.assert_0_decreases 4d29d6d1781683cb
/--
Generated VC `reclaim_plan.project_keys.assert_0_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1197:19-1197:34`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `4d29d6d1781683cb`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__7 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__8 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__10 vrml_i0⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1197
  startColumn := 19
  endLine := 1197
  endColumn := 34
  assertId := "0_decreases"
  functionName := "reclaim_plan.project_keys"
  kind := "assert"
  statementHash := "4d29d6d1781683cb"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_0_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_0_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_0_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_0_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_0_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_0_iteration_20 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_21 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_iteration_22 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_23 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_iteration_24 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__5)
    (call_vec_index_ensures_1 : tmp__5 = Vermilion.Seq.index roots r)
    (then_4_assume_28 : (tmp__5 ≥ Vermilion.Seq.len keys) → (tmp__9 ↔ True))
    (else_4_call_vec_index_1_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 tmp__6)
    (else_4_call_vec_index_1_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__6 = Vermilion.Seq.index roots r))
    (else_4_call_vec_index_2_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__7))
    (else_4_call_vec_index_2_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__7)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__7 vrml_i0))))
    (else_4_call_vec_index_2_ensures_2 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__7 = Vermilion.Seq.index keys tmp__6))
    (else_4_call_vec_index_3_ensures_0 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__8))
    (else_4_call_vec_index_3_ensures_1 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__8)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__8 vrml_i0))))
    (else_4_call_vec_index_3_ensures_2 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__8 = Vermilion.Seq.index root_keys r))
    (else_4_assume_36 : (¬ (tmp__5 ≥ Vermilion.Seq.len keys)) → (tmp__9 ↔ (¬ (tmp__7 = tmp__8))))
    (then_5_call_new_2_ensures_0 : tmp__9 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__10))
    (then_5_call_new_2_ensures_1 : tmp__9 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__10)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__10 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__10 vrml_i0))))))
    (then_5_call_new_2_ensures_2 : tmp__9 → (tmp__10 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_5_assume_41 : tmp__9 → False)
    (then_5_assume_42 : tmp__9 → False)
    (assert_18 : Vermilion.inUnsignedRange 64 (r + 1)) :
    ((0 ≤ (Vermilion.Seq.len roots - ((r + 1) % 18446744073709551616))) ∧ ((Vermilion.Seq.len roots - ((r + 1) % 18446744073709551616)) < (Vermilion.Seq.len roots - r))) ∨ (((Vermilion.Seq.len roots - ((r + 1) % 18446744073709551616)) = (Vermilion.Seq.len roots - r)) ∧ False) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.assert_0_decreases

-- vrml:begin reclaim_plan.project_keys.invariant_entry_1_0 8ca5789ae825e198
/--
Generated VC `reclaim_plan.project_keys.invariant_entry_1_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1207:19-1207:30`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_0`
- Statement hash: `8ca5789ae825e198`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩
-/
def invariant_entry_1_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1207
  startColumn := 19
  endLine := 1207
  endColumn := 30
  assertId := "1_0"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_entry"
  statementHash := "8ca5789ae825e198"
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
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (assume_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_1_assume_17 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (then_3_call_new_1_ensures_0 : (¬ reclaim_plan.keys_sorted_spec keys) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (then_3_call_new_1_ensures_1 : (¬ reclaim_plan.keys_sorted_spec keys) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (then_3_call_new_1_ensures_2 : (¬ reclaim_plan.keys_sorted_spec keys) → (tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_3_assume_28 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (then_3_assume_29 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 r)
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (call_new_3_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (call_new_3_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (call_new_3_ensures_2 : tmp__11 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))) :
    (0 ≤ 0) ∧ (0 ≤ Vermilion.Seq.len keys) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.invariant_entry_1_0

-- vrml:begin reclaim_plan.project_keys.invariant_entry_1_1 c12faf359b021e5d
/--
Generated VC `reclaim_plan.project_keys.invariant_entry_1_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1207:32-1207:47`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_1`
- Statement hash: `c12faf359b021e5d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩
-/
def invariant_entry_1_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1207
  startColumn := 32
  endLine := 1207
  endColumn := 47
  assertId := "1_1"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_entry"
  statementHash := "c12faf359b021e5d"
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
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (assume_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_1_assume_17 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (then_3_call_new_1_ensures_0 : (¬ reclaim_plan.keys_sorted_spec keys) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (then_3_call_new_1_ensures_1 : (¬ reclaim_plan.keys_sorted_spec keys) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (then_3_call_new_1_ensures_2 : (¬ reclaim_plan.keys_sorted_spec keys) → (tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_3_assume_28 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (then_3_assume_29 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 r)
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (call_new_3_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (call_new_3_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (call_new_3_ensures_2 : tmp__11 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))) :
    Vermilion.Seq.len keys = Vermilion.Seq.len keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.invariant_entry_1_1

-- vrml:begin reclaim_plan.project_keys.invariant_entry_1_2 e170ada82f1b2aaf
/--
Generated VC `reclaim_plan.project_keys.invariant_entry_1_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1207:49-1207:70`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_2`
- Statement hash: `e170ada82f1b2aaf`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩
-/
def invariant_entry_1_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1207
  startColumn := 49
  endLine := 1207
  endColumn := 70
  assertId := "1_2"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_entry"
  statementHash := "e170ada82f1b2aaf"
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
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (assume_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_1_assume_17 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (then_3_call_new_1_ensures_0 : (¬ reclaim_plan.keys_sorted_spec keys) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (then_3_call_new_1_ensures_1 : (¬ reclaim_plan.keys_sorted_spec keys) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (then_3_call_new_1_ensures_2 : (¬ reclaim_plan.keys_sorted_spec keys) → (tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_3_assume_28 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (then_3_assume_29 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 r)
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (call_new_3_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (call_new_3_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (call_new_3_ensures_2 : tmp__11 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))) :
    Vermilion.Seq.len references = Vermilion.Seq.len keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.invariant_entry_1_2

-- vrml:begin reclaim_plan.project_keys.invariant_entry_1_3 bd50796bd7115435
/--
Generated VC `reclaim_plan.project_keys.invariant_entry_1_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1207:72-1207:98`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_3`
- Statement hash: `bd50796bd7115435`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩
-/
def invariant_entry_1_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1207
  startColumn := 72
  endLine := 1207
  endColumn := 98
  assertId := "1_3"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_entry"
  statementHash := "bd50796bd7115435"
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
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (assume_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_1_assume_17 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (then_3_call_new_1_ensures_0 : (¬ reclaim_plan.keys_sorted_spec keys) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (then_3_call_new_1_ensures_1 : (¬ reclaim_plan.keys_sorted_spec keys) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (then_3_call_new_1_ensures_2 : (¬ reclaim_plan.keys_sorted_spec keys) → (tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_3_assume_28 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (then_3_assume_29 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 r)
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (call_new_3_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (call_new_3_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (call_new_3_ensures_2 : tmp__11 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))) :
    Vermilion.Seq.len reference_index = Vermilion.Seq.len keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.invariant_entry_1_3

-- vrml:begin reclaim_plan.project_keys.invariant_entry_1_4 3af7df76de469eb9
/--
Generated VC `reclaim_plan.project_keys.invariant_entry_1_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1208:13-1208:36`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_4`
- Statement hash: `3af7df76de469eb9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩
-/
def invariant_entry_1_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1208
  startColumn := 13
  endLine := 1208
  endColumn := 36
  assertId := "1_4"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_entry"
  statementHash := "3af7df76de469eb9"
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
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (assume_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_1_assume_17 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (then_3_call_new_1_ensures_0 : (¬ reclaim_plan.keys_sorted_spec keys) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (then_3_call_new_1_ensures_1 : (¬ reclaim_plan.keys_sorted_spec keys) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (then_3_call_new_1_ensures_2 : (¬ reclaim_plan.keys_sorted_spec keys) → (tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_3_assume_28 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (then_3_assume_29 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 r)
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (call_new_3_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (call_new_3_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (call_new_3_ensures_2 : tmp__11 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))) :
    reclaim_plan.keys_sorted_spec keys := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.project_keys.invariant_entry_1_4

-- vrml:begin reclaim_plan.project_keys.invariant_entry_1_5 435d8b1b5546313f
/--
Generated VC `reclaim_plan.project_keys.invariant_entry_1_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1208:38-1208:86`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_5`
- Statement hash: `435d8b1b5546313f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩
-/
def invariant_entry_1_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1208
  startColumn := 38
  endLine := 1208
  endColumn := 86
  assertId := "1_5"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_entry"
  statementHash := "435d8b1b5546313f"
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
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (assume_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_1_assume_17 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (then_3_call_new_1_ensures_0 : (¬ reclaim_plan.keys_sorted_spec keys) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (then_3_call_new_1_ensures_1 : (¬ reclaim_plan.keys_sorted_spec keys) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (then_3_call_new_1_ensures_2 : (¬ reclaim_plan.keys_sorted_spec keys) → (tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_3_assume_28 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (then_3_assume_29 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 r)
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (call_new_3_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (call_new_3_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (call_new_3_ensures_2 : tmp__11 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))) :
    reclaim_plan.roots_match_keys_spec keys root_keys roots := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.project_keys.invariant_entry_1_5

-- vrml:begin reclaim_plan.project_keys.invariant_entry_1_6 8208db1c34571f04
/--
Generated VC `reclaim_plan.project_keys.invariant_entry_1_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1209:13-1209:126`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_6`
- Statement hash: `8208db1c34571f04`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index tmp__11 k⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩
-/
def invariant_entry_1_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1209
  startColumn := 13
  endLine := 1209
  endColumn := 126
  assertId := "1_6"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_entry"
  statementHash := "8208db1c34571f04"
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
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (assume_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_1_assume_17 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (then_3_call_new_1_ensures_0 : (¬ reclaim_plan.keys_sorted_spec keys) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (then_3_call_new_1_ensures_1 : (¬ reclaim_plan.keys_sorted_spec keys) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (then_3_call_new_1_ensures_2 : (¬ reclaim_plan.keys_sorted_spec keys) → (tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_3_assume_28 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (then_3_assume_29 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 r)
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (call_new_3_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (call_new_3_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (call_new_3_ensures_2 : tmp__11 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__11)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__11 k))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.invariant_entry_1_6

-- vrml:begin reclaim_plan.project_keys.invariant_entry_1_7 541a9b392aeb1c27
/--
Generated VC `reclaim_plan.project_keys.invariant_entry_1_7`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1210:13-1211:116`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_7`
- Statement hash: `541a9b392aeb1c27`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.ref_resolved_spec keys references tmp__11 a q⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩
-/
def invariant_entry_1_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1210
  startColumn := 13
  endLine := 1211
  endColumn := 116
  assertId := "1_7"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_entry"
  statementHash := "541a9b392aeb1c27"
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
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (assume_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_1_assume_17 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (then_3_call_new_1_ensures_0 : (¬ reclaim_plan.keys_sorted_spec keys) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (then_3_call_new_1_ensures_1 : (¬ reclaim_plan.keys_sorted_spec keys) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (then_3_call_new_1_ensures_2 : (¬ reclaim_plan.keys_sorted_spec keys) → (tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_3_assume_28 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (then_3_assume_29 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 r)
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (call_new_3_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (call_new_3_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (call_new_3_ensures_2 : tmp__11 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))) :
    (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < 0)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references tmp__11 a q)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.invariant_entry_1_7

-- vrml:begin reclaim_plan.project_keys.call_requires_20 41becbe6b6711d2f
/--
Generated VC `reclaim_plan.project_keys.call_requires_20`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1214:12-1214:30`
- Rust/SST construct: call vec_index
- AssertId: `20`
- Statement hash: `41becbe6b6711d2f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩
-/
def call_requires_20_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1214
  startColumn := 12
  endLine := 1214
  endColumn := 30
  assertId := "20"
  functionName := "reclaim_plan.project_keys"
  kind := "call_requires"
  statementHash := "41becbe6b6711d2f"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_1_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_1_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (loop_1_iteration_22 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_24 : Vermilion.inUnsignedRange 64 i)
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
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.call_requires_20

-- vrml:begin reclaim_plan.project_keys.call_requires_22 8cdb1e6d4231fefd
/--
Generated VC `reclaim_plan.project_keys.call_requires_22`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1214:40-1214:53`
- Rust/SST construct: call vec_index
- AssertId: `22`
- Statement hash: `8cdb1e6d4231fefd`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩
-/
def call_requires_22_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1214
  startColumn := 40
  endLine := 1214
  endColumn := 53
  assertId := "22"
  functionName := "reclaim_plan.project_keys"
  kind := "call_requires"
  statementHash := "8cdb1e6d4231fefd"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_1_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_1_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (loop_1_iteration_22 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_24 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__12 vrml_i0))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12)) :
    i < Vermilion.Seq.len references := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.call_requires_22

-- vrml:begin reclaim_plan.project_keys.ensures_25 a1aad4cbc5fb7e35
/--
Generated VC `reclaim_plan.project_keys.ensures_25`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1183:13-1183:103`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `25`
- Statement hash: `a1aad4cbc5fb7e35`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩
-/
def ensures_25_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1183
  startColumn := 13
  endLine := 1183
  endColumn := 103
  assertId := "25"
  functionName := "reclaim_plan.project_keys"
  kind := "ensures"
  statementHash := "a1aad4cbc5fb7e35"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_1_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_1_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (loop_1_iteration_22 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_24 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__12 vrml_i0))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_5_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (branch_6 : Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13)
    (call_new_4_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__14))
    (call_new_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0))))))
    (call_new_4_ensures_2 : tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))) :
    reclaim_plan.KeyProjection.get_KeyProjection_ok (reclaim_plan.KeyProjection.KeyProjection False tmp__14) → reclaim_plan.projection_valid_spec keys references root_keys (reclaim_plan.KeyProjection.get_KeyProjection_edges (reclaim_plan.KeyProjection.KeyProjection False tmp__14)) roots := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.ensures_25

-- vrml:begin reclaim_plan.project_keys.call_requires_26 f380bde9edef6b1f
/--
Generated VC `reclaim_plan.project_keys.call_requires_26`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1218:53-1218:71`
- Rust/SST construct: call vec_index
- AssertId: `26`
- Statement hash: `f380bde9edef6b1f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩
-/
def call_requires_26_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1218
  startColumn := 53
  endLine := 1218
  endColumn := 71
  assertId := "26"
  functionName := "reclaim_plan.project_keys"
  kind := "call_requires"
  statementHash := "f380bde9edef6b1f"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_1_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_1_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (loop_1_iteration_22 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_24 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__12 vrml_i0))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_5_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__14))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False) :
    i < Vermilion.Seq.len reference_index := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.call_requires_26

-- vrml:begin reclaim_plan.project_keys.call_requires_27_0 c2020ffdd4ca5a80
/--
Generated VC `reclaim_plan.project_keys.call_requires_27_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1218:19-1218:79`
- Rust/SST construct: call project_row
- AssertId: `27_0`
- Statement hash: `c2020ffdd4ca5a80`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩
-/
def call_requires_27_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1218
  startColumn := 19
  endLine := 1218
  endColumn := 79
  assertId := "27_0"
  functionName := "reclaim_plan.project_keys"
  kind := "call_requires"
  statementHash := "c2020ffdd4ca5a80"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_1_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_1_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (loop_1_iteration_22 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_24 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__12 vrml_i0))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_5_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__14))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__15))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__15 vrml_i0))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i) :
    i < Vermilion.Seq.len keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.call_requires_27_0

-- vrml:begin reclaim_plan.project_keys.call_requires_27_1 1ccb9d9facb5687b
/--
Generated VC `reclaim_plan.project_keys.call_requires_27_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1218:19-1218:79`
- Rust/SST construct: call project_row
- AssertId: `27_1`
- Statement hash: `1ccb9d9facb5687b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩
-/
def call_requires_27_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1218
  startColumn := 19
  endLine := 1218
  endColumn := 79
  assertId := "27_1"
  functionName := "reclaim_plan.project_keys"
  kind := "call_requires"
  statementHash := "1ccb9d9facb5687b"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_1_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_1_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (loop_1_iteration_22 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_24 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__12 vrml_i0))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_5_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__14))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__15))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__15 vrml_i0))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i) :
    Vermilion.Seq.len references = Vermilion.Seq.len keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.call_requires_27_1

-- vrml:begin reclaim_plan.project_keys.call_requires_27_2 734c751f998b4896
/--
Generated VC `reclaim_plan.project_keys.call_requires_27_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1218:19-1218:79`
- Rust/SST construct: call project_row
- AssertId: `27_2`
- Statement hash: `734c751f998b4896`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩
-/
def call_requires_27_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1218
  startColumn := 19
  endLine := 1218
  endColumn := 79
  assertId := "27_2"
  functionName := "reclaim_plan.project_keys"
  kind := "call_requires"
  statementHash := "734c751f998b4896"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_1_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_1_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (loop_1_iteration_22 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_24 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__12 vrml_i0))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_5_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__14))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__15))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__15 vrml_i0))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i) :
    Vermilion.Seq.len tmp__15 = Vermilion.Seq.len (Vermilion.Seq.index references i) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.call_requires_27_2

-- vrml:begin reclaim_plan.project_keys.call_requires_27_3 9f5cab42ecfdf87c
/--
Generated VC `reclaim_plan.project_keys.call_requires_27_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1218:19-1218:79`
- Rust/SST construct: call project_row
- AssertId: `27_3`
- Statement hash: `9f5cab42ecfdf87c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges k⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩
-/
def call_requires_27_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1218
  startColumn := 19
  endLine := 1218
  endColumn := 79
  assertId := "27_3"
  functionName := "reclaim_plan.project_keys"
  kind := "call_requires"
  statementHash := "9f5cab42ecfdf87c"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_1_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_1_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (loop_1_iteration_22 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_24 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__12 vrml_i0))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_5_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__14))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__15))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__15 vrml_i0))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.call_requires_27_3

-- vrml:begin reclaim_plan.project_keys.ensures_29 96afc5cbcebbddd4
/--
Generated VC `reclaim_plan.project_keys.ensures_29`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1183:13-1183:103`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `29`
- Statement hash: `96afc5cbcebbddd4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩
-/
def ensures_29_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1183
  startColumn := 13
  endLine := 1183
  endColumn := 103
  assertId := "29"
  functionName := "reclaim_plan.project_keys"
  kind := "ensures"
  statementHash := "96afc5cbcebbddd4"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_1_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_1_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (loop_1_iteration_22 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_24 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__12 vrml_i0))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_5_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__14))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__15))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__15 vrml_i0))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (branch_7 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row))
    (call_new_5_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__16))
    (call_new_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0))))))
    (call_new_5_ensures_2 : tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))) :
    reclaim_plan.KeyProjection.get_KeyProjection_ok (reclaim_plan.KeyProjection.KeyProjection False tmp__16) → reclaim_plan.projection_valid_spec keys references root_keys (reclaim_plan.KeyProjection.get_KeyProjection_edges (reclaim_plan.KeyProjection.KeyProjection False tmp__16)) roots := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.ensures_29

-- vrml:begin reclaim_plan.project_keys.assert_30 d68e156a09a480ce
/--
Generated VC `reclaim_plan.project_keys.assert_30`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1227:28-1227:77`
- Rust/SST construct: Rust source assertion
- AssertId: `30`
- Statement hash: `d68e156a09a480ce`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩
-/
def assert_30_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1227
  startColumn := 28
  endLine := 1227
  endColumn := 77
  assertId := "30"
  functionName := "reclaim_plan.project_keys"
  kind := "assert"
  statementHash := "d68e156a09a480ce"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_1_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_1_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (loop_1_iteration_22 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_24 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__12 vrml_i0))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_5_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__14))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__15))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__15 vrml_i0))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (then_7_call_new_5_ensures_0 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__16))
    (then_7_call_new_5_ensures_1 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0))))))
    (then_7_call_new_5_ensures_2 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_7_assume_59 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (then_7_assume_60 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (assume_60 : True)
    (assume_61 : True)
    (assume_62 : ((0 ≤ a) ∧ (a < (i + 1))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a))))
    (branch_8 : a < i) :
    reclaim_plan.ref_resolved_spec keys references edges a q := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.project_keys.assert_30

-- vrml:begin reclaim_plan.project_keys.call_requires_31_0 3c261fdde5d74c82
/--
Generated VC `reclaim_plan.project_keys.call_requires_31_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1228:21-1228:80`
- Rust/SST construct: call ref_resolved_extend
- AssertId: `31_0`
- Statement hash: `3c261fdde5d74c82`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩
-/
def call_requires_31_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1228
  startColumn := 21
  endLine := 1228
  endColumn := 80
  assertId := "31_0"
  functionName := "reclaim_plan.project_keys"
  kind := "call_requires"
  statementHash := "3c261fdde5d74c82"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_1_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_1_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (loop_1_iteration_22 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_24 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__12 vrml_i0))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_5_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__14))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__15))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__15 vrml_i0))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (then_7_call_new_5_ensures_0 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__16))
    (then_7_call_new_5_ensures_1 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0))))))
    (then_7_call_new_5_ensures_2 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_7_assume_59 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (then_7_assume_60 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (assume_60 : True)
    (assume_61 : True)
    (assume_62 : ((0 ≤ a) ∧ (a < (i + 1))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a))))
    (branch_8 : a < i)
    (assert_30 : reclaim_plan.ref_resolved_spec keys references edges a q) :
    reclaim_plan.ref_resolved_spec keys references edges a q := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.project_keys.call_requires_31_0

-- vrml:begin reclaim_plan.project_keys.call_requires_31_1 aa13317b6344f3be
/--
Generated VC `reclaim_plan.project_keys.call_requires_31_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1228:21-1228:80`
- Rust/SST construct: call ref_resolved_extend
- AssertId: `31_1`
- Statement hash: `aa13317b6344f3be`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩
-/
def call_requires_31_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1228
  startColumn := 21
  endLine := 1228
  endColumn := 80
  assertId := "31_1"
  functionName := "reclaim_plan.project_keys"
  kind := "call_requires"
  statementHash := "aa13317b6344f3be"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_1_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_1_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (loop_1_iteration_22 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_24 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__12 vrml_i0))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_5_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__14))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__15))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__15 vrml_i0))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (then_7_call_new_5_ensures_0 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__16))
    (then_7_call_new_5_ensures_1 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0))))))
    (then_7_call_new_5_ensures_2 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_7_assume_59 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (then_7_assume_60 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (assume_60 : True)
    (assume_61 : True)
    (assume_62 : ((0 ≤ a) ∧ (a < (i + 1))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a))))
    (branch_8 : a < i)
    (assert_30 : reclaim_plan.ref_resolved_spec keys references edges a q) :
    reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.project_keys.call_requires_31_1

-- vrml:begin reclaim_plan.project_keys.assert_32 369bce64c65777f5
/--
Generated VC `reclaim_plan.project_keys.assert_32`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1225:73-1225:124`
- Rust/SST construct: Rust source assertion
- AssertId: `32`
- Statement hash: `369bce64c65777f5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩
-/
def assert_32_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1225
  startColumn := 73
  endLine := 1225
  endColumn := 124
  assertId := "32"
  functionName := "reclaim_plan.project_keys"
  kind := "assert"
  statementHash := "369bce64c65777f5"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_1_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_1_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (loop_1_iteration_22 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_24 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__12 vrml_i0))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_5_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__14))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__15))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__15 vrml_i0))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (then_7_call_new_5_ensures_0 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__16))
    (then_7_call_new_5_ensures_1 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0))))))
    (then_7_call_new_5_ensures_2 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_7_assume_59 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (then_7_assume_60 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (assume_60 : True)
    (assume_61 : True)
    (assume_62 : ((0 ≤ a) ∧ (a < (i + 1))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a))))
    (then_8_assert_30 : (a < i) → reclaim_plan.ref_resolved_spec keys references edges a q)
    (then_8_call_ref_resolved_extend_ensures_0 : (a < i) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q) :
    reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.project_keys.assert_32

-- vrml:begin reclaim_plan.project_keys.assert_33 1db755006a674616
/--
Generated VC `reclaim_plan.project_keys.assert_33`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1232:13-1232:18`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `33`
- Statement hash: `1db755006a674616`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q⟩
-/
def assert_33_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1232
  startColumn := 13
  endLine := 1232
  endColumn := 18
  assertId := "33"
  functionName := "reclaim_plan.project_keys"
  kind := "assert"
  statementHash := "1db755006a674616"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_1_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_1_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (loop_1_iteration_22 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_24 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__12 vrml_i0))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_5_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__14))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__15))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__15 vrml_i0))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (then_7_call_new_5_ensures_0 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__16))
    (then_7_call_new_5_ensures_1 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0))))))
    (then_7_call_new_5_ensures_2 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_7_assume_59 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (then_7_assume_60 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (assume_60 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < (i + 1))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q))) :
    Vermilion.inUnsignedRange 64 (i + 1) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.project_keys.assert_33

-- vrml:begin reclaim_plan.project_keys.invariant_preserve_1_0 368dedc64d6da6a8
/--
Generated VC `reclaim_plan.project_keys.invariant_preserve_1_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1207:19-1207:30`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_0`
- Statement hash: `368dedc64d6da6a8`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q⟩
-/
def invariant_preserve_1_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1207
  startColumn := 19
  endLine := 1207
  endColumn := 30
  assertId := "1_0"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_preserve"
  statementHash := "368dedc64d6da6a8"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_1_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_1_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (loop_1_iteration_22 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_24 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__12 vrml_i0))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_5_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__14))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__15))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__15 vrml_i0))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (then_7_call_new_5_ensures_0 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__16))
    (then_7_call_new_5_ensures_1 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0))))))
    (then_7_call_new_5_ensures_2 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_7_assume_59 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (then_7_assume_60 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (assume_60 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < (i + 1))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q)))
    (assert_33 : Vermilion.inUnsignedRange 64 (i + 1)) :
    (0 ≤ ((i + 1) % 18446744073709551616)) ∧ (((i + 1) % 18446744073709551616) ≤ Vermilion.Seq.len keys) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.project_keys.invariant_preserve_1_0

-- vrml:begin reclaim_plan.project_keys.invariant_preserve_1_1 be7f517fc669b4bd
/--
Generated VC `reclaim_plan.project_keys.invariant_preserve_1_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1207:32-1207:47`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_1`
- Statement hash: `be7f517fc669b4bd`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q⟩
-/
def invariant_preserve_1_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1207
  startColumn := 32
  endLine := 1207
  endColumn := 47
  assertId := "1_1"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_preserve"
  statementHash := "be7f517fc669b4bd"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_1_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_1_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (loop_1_iteration_22 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_24 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__12 vrml_i0))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_5_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__14))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__15))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__15 vrml_i0))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (then_7_call_new_5_ensures_0 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__16))
    (then_7_call_new_5_ensures_1 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0))))))
    (then_7_call_new_5_ensures_2 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_7_assume_59 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (then_7_assume_60 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (assume_60 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < (i + 1))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q)))
    (assert_33 : Vermilion.inUnsignedRange 64 (i + 1)) :
    Vermilion.Seq.len keys = Vermilion.Seq.len keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_keys.invariant_preserve_1_1

-- vrml:begin reclaim_plan.project_keys.invariant_preserve_1_2 2c88f82c4d8f4a0f
/--
Generated VC `reclaim_plan.project_keys.invariant_preserve_1_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1207:49-1207:70`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_2`
- Statement hash: `2c88f82c4d8f4a0f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q⟩
-/
def invariant_preserve_1_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1207
  startColumn := 49
  endLine := 1207
  endColumn := 70
  assertId := "1_2"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_preserve"
  statementHash := "2c88f82c4d8f4a0f"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_1_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_1_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (loop_1_iteration_22 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_24 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__12 vrml_i0))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_5_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__14))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__15))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__15 vrml_i0))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (then_7_call_new_5_ensures_0 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__16))
    (then_7_call_new_5_ensures_1 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0))))))
    (then_7_call_new_5_ensures_2 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_7_assume_59 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (then_7_assume_60 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (assume_60 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < (i + 1))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q)))
    (assert_33 : Vermilion.inUnsignedRange 64 (i + 1)) :
    Vermilion.Seq.len references = Vermilion.Seq.len keys := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.project_keys.invariant_preserve_1_2

-- vrml:begin reclaim_plan.project_keys.invariant_preserve_1_3 5bf550fd6b9191d5
/--
Generated VC `reclaim_plan.project_keys.invariant_preserve_1_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1207:72-1207:98`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_3`
- Statement hash: `5bf550fd6b9191d5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q⟩
-/
def invariant_preserve_1_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1207
  startColumn := 72
  endLine := 1207
  endColumn := 98
  assertId := "1_3"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_preserve"
  statementHash := "5bf550fd6b9191d5"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_1_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_1_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (loop_1_iteration_22 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_24 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__12 vrml_i0))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_5_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__14))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__15))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__15 vrml_i0))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (then_7_call_new_5_ensures_0 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__16))
    (then_7_call_new_5_ensures_1 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0))))))
    (then_7_call_new_5_ensures_2 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_7_assume_59 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (then_7_assume_60 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (assume_60 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < (i + 1))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q)))
    (assert_33 : Vermilion.inUnsignedRange 64 (i + 1)) :
    Vermilion.Seq.len reference_index = Vermilion.Seq.len keys := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.project_keys.invariant_preserve_1_3

-- vrml:begin reclaim_plan.project_keys.invariant_preserve_1_4 53689680164e3959
/--
Generated VC `reclaim_plan.project_keys.invariant_preserve_1_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1208:13-1208:36`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_4`
- Statement hash: `53689680164e3959`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q⟩
-/
def invariant_preserve_1_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1208
  startColumn := 13
  endLine := 1208
  endColumn := 36
  assertId := "1_4"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_preserve"
  statementHash := "53689680164e3959"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_1_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_1_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (loop_1_iteration_22 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_24 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__12 vrml_i0))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_5_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__14))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__15))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__15 vrml_i0))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (then_7_call_new_5_ensures_0 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__16))
    (then_7_call_new_5_ensures_1 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0))))))
    (then_7_call_new_5_ensures_2 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_7_assume_59 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (then_7_assume_60 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (assume_60 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < (i + 1))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q)))
    (assert_33 : Vermilion.inUnsignedRange 64 (i + 1)) :
    reclaim_plan.keys_sorted_spec keys := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.project_keys.invariant_preserve_1_4

-- vrml:begin reclaim_plan.project_keys.invariant_preserve_1_5 dd09a68d79de97df
/--
Generated VC `reclaim_plan.project_keys.invariant_preserve_1_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1208:38-1208:86`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_5`
- Statement hash: `dd09a68d79de97df`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q⟩
-/
def invariant_preserve_1_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1208
  startColumn := 38
  endLine := 1208
  endColumn := 86
  assertId := "1_5"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_preserve"
  statementHash := "dd09a68d79de97df"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_1_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_1_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (loop_1_iteration_22 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_24 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__12 vrml_i0))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_5_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__14))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__15))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__15 vrml_i0))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (then_7_call_new_5_ensures_0 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__16))
    (then_7_call_new_5_ensures_1 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0))))))
    (then_7_call_new_5_ensures_2 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_7_assume_59 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (then_7_assume_60 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (assume_60 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < (i + 1))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q)))
    (assert_33 : Vermilion.inUnsignedRange 64 (i + 1)) :
    reclaim_plan.roots_match_keys_spec keys root_keys roots := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.project_keys.invariant_preserve_1_5

-- vrml:begin reclaim_plan.project_keys.invariant_preserve_1_6 bed5bd0d1db6797a
/--
Generated VC `reclaim_plan.project_keys.invariant_preserve_1_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1209:13-1209:126`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_6`
- Statement hash: `bed5bd0d1db6797a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q⟩
-/
def invariant_preserve_1_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1209
  startColumn := 13
  endLine := 1209
  endColumn := 126
  assertId := "1_6"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_preserve"
  statementHash := "bed5bd0d1db6797a"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_1_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_1_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (loop_1_iteration_22 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_24 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__12 vrml_i0))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_5_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__14))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__15))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__15 vrml_i0))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (then_7_call_new_5_ensures_0 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__16))
    (then_7_call_new_5_ensures_1 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0))))))
    (then_7_call_new_5_ensures_2 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_7_assume_59 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (then_7_assume_60 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (assume_60 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < (i + 1))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q)))
    (assert_33 : Vermilion.inUnsignedRange 64 (i + 1)) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.project_keys.invariant_preserve_1_6

-- vrml:begin reclaim_plan.project_keys.invariant_preserve_1_7 92ef340f7213c454
/--
Generated VC `reclaim_plan.project_keys.invariant_preserve_1_7`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1210:13-1211:116`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_7`
- Statement hash: `92ef340f7213c454`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q⟩
-/
def invariant_preserve_1_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1210
  startColumn := 13
  endLine := 1211
  endColumn := 116
  assertId := "1_7"
  functionName := "reclaim_plan.project_keys"
  kind := "invariant_preserve"
  statementHash := "92ef340f7213c454"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_1_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_1_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (loop_1_iteration_22 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_24 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__12 vrml_i0))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_5_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__14))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__15))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__15 vrml_i0))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (then_7_call_new_5_ensures_0 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__16))
    (then_7_call_new_5_ensures_1 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0))))))
    (then_7_call_new_5_ensures_2 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_7_assume_59 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (then_7_assume_60 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (assume_60 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < (i + 1))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q)))
    (assert_33 : Vermilion.inUnsignedRange 64 (i + 1)) :
    (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < ((i + 1) % 18446744073709551616))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.project_keys.invariant_preserve_1_7

-- vrml:begin reclaim_plan.project_keys.assert_1_decreases 7995e7005be5b3a3
/--
Generated VC `reclaim_plan.project_keys.assert_1_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1212:19-1212:24`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `1_decreases`
- Statement hash: `7995e7005be5b3a3`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨Vermilion.Seq.index tmp__12 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__13 vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index tmp__14 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__15 vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0⟩ ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q⟩ ⟨Vermilion.Seq.index tmp__16 vrml_i0⟩ ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q⟩
-/
def assert_1_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1212
  startColumn := 19
  endLine := 1212
  endColumn := 24
  assertId := "1_decreases"
  functionName := "reclaim_plan.project_keys"
  kind := "assert"
  statementHash := "7995e7005be5b3a3"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (loop_1_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (loop_1_iteration_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (loop_1_iteration_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (loop_1_iteration_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (loop_1_iteration_19 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (loop_1_iteration_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (loop_1_iteration_22 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_24 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_25 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_1_iteration_26 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_27 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_1_iteration_28 : Vermilion.Seq.len reference_index = Vermilion.Seq.len keys)
    (loop_1_iteration_29 : reclaim_plan.keys_sorted_spec keys)
    (loop_1_iteration_30 : reclaim_plan.roots_match_keys_spec keys root_keys roots)
    (loop_1_iteration_31 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_1_iteration_32 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < i)) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references edges a q)))
    (loop_1_iteration_33 : i < Vermilion.Seq.len keys)
    (call_vec_index_4_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_4_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__12)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__12 vrml_i0))))
    (call_vec_index_4_ensures_2 : tmp__12 = Vermilion.Seq.index reference_index i)
    (assume_37 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__12))
    (call_vec_index_5_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (call_vec_index_5_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__13)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp__13 vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp__13 vrml_i0) vrml_i1)))))))
    (call_vec_index_5_ensures_2 : tmp__13 = Vermilion.Seq.index references i)
    (assume_41 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__13))
    (then_6_call_new_4_ensures_0 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__14))
    (then_6_call_new_4_ensures_1 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__14)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__14 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__14 vrml_i0))))))
    (then_6_call_new_4_ensures_2 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → (tmp__14 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_6_assume_46 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (then_6_assume_47 : (Vermilion.Seq.len tmp__12 ≠ Vermilion.Seq.len tmp__13) → False)
    (call_vec_index_6_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__15))
    (call_vec_index_6_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__15)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__15 vrml_i0))))
    (call_vec_index_6_ensures_2 : tmp__15 = Vermilion.Seq.index reference_index i)
    (call_project_row_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row)))
    (call_project_row_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) vrml_i0))))))
    (call_project_row_ensures_2 : reclaim_plan.prefix_of_spec edges (reclaim_plan.RowProjection.get_RowProjection_edges row))
    (call_project_row_ensures_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges row))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges row) k))))
    (call_project_row_ensures_4 : reclaim_plan.RowProjection.get_RowProjection_ok row → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) i q)))
    (then_7_call_new_5_ensures_0 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__16))
    (then_7_call_new_5_ensures_1 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__16)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__16 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__16 vrml_i0))))))
    (then_7_call_new_5_ensures_2 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → (tmp__16 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_7_assume_59 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (then_7_assume_60 : (¬ reclaim_plan.RowProjection.get_RowProjection_ok row) → False)
    (assume_60 : (∀ (a : Int) (q : Int), ((((0 ≤ a) ∧ (a < (i + 1))) ∧ ((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references a)))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges row) a q)))
    (assert_33 : Vermilion.inUnsignedRange 64 (i + 1)) :
    ((0 ≤ (Vermilion.Seq.len keys - ((i + 1) % 18446744073709551616))) ∧ ((Vermilion.Seq.len keys - ((i + 1) % 18446744073709551616)) < (Vermilion.Seq.len keys - i))) ∨ (((Vermilion.Seq.len keys - ((i + 1) % 18446744073709551616)) = (Vermilion.Seq.len keys - i)) ∧ False) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.project_keys.assert_1_decreases

-- vrml:begin reclaim_plan.project_keys.assert_34 f61f1d4dfb64ca38
/--
Generated VC `reclaim_plan.project_keys.assert_34`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1236:81-1236:132`
- Rust/SST construct: Rust source assertion
- AssertId: `34`
- Statement hash: `f61f1d4dfb64ca38`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩
-/
def assert_34_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1236
  startColumn := 81
  endLine := 1236
  endColumn := 132
  assertId := "34"
  functionName := "reclaim_plan.project_keys"
  kind := "assert"
  statementHash := "f61f1d4dfb64ca38"
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
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (assume_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_1_assume_17 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (then_3_call_new_1_ensures_0 : (¬ reclaim_plan.keys_sorted_spec keys) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (then_3_call_new_1_ensures_1 : (¬ reclaim_plan.keys_sorted_spec keys) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (then_3_call_new_1_ensures_2 : (¬ reclaim_plan.keys_sorted_spec keys) → (tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_3_assume_28 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (then_3_assume_29 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 r)
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (call_new_3_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (call_new_3_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (call_new_3_ensures_2 : tmp__11 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_exit_2 : Vermilion.inUnsignedRange 64 i)
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
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.project_keys.assert_34

-- vrml:begin reclaim_plan.project_keys.ensures_35 7ab00d1549e12117
/--
Generated VC `reclaim_plan.project_keys.ensures_35`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1183:13-1183:103`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `35`
- Statement hash: `7ab00d1549e12117`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index reference_index vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index roots q⟩ ⟨Vermilion.Seq.index tmp__11 vrml_i0⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges a q⟩
-/
def ensures_35_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1183
  startColumn := 13
  endLine := 1183
  endColumn := 103
  assertId := "35"
  functionName := "reclaim_plan.project_keys"
  kind := "ensures"
  statementHash := "7ab00d1549e12117"
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
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len reference_index)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index reference_index vrml_i0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.index reference_index vrml_i0) vrml_i1)))))))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (requires_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (assume_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (then_0_assume_13 : (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys) → (tmp_ ↔ True))
    (else_0_assume_13 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reference_index))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len references ≠ Vermilion.Seq.len keys)) → (tmp_ ↔ (Vermilion.Seq.len reference_index ≠ Vermilion.Seq.len keys)))
    (then_1_assume_16 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_16 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_1_assume_17 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len root_keys))
    (else_1_assume_18 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots ≠ Vermilion.Seq.len root_keys)))
    (then_2_call_new_ensures_0 : tmp__2 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (then_2_call_new_ensures_1 : tmp__2 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__3 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__3 vrml_i0))))))
    (then_2_call_new_ensures_2 : tmp__2 → (tmp__3 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_2_assume_23 : tmp__2 → False)
    (then_2_assume_24 : tmp__2 → False)
    (then_3_call_new_1_ensures_0 : (¬ reclaim_plan.keys_sorted_spec keys) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (then_3_call_new_1_ensures_1 : (¬ reclaim_plan.keys_sorted_spec keys) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__4 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__4 vrml_i0))))))
    (then_3_call_new_1_ensures_2 : (¬ reclaim_plan.keys_sorted_spec keys) → (tmp__4 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int))))
    (then_3_assume_28 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (then_3_assume_29 : (¬ reclaim_plan.keys_sorted_spec keys) → False)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 r)
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : Vermilion.Seq.len roots = Vermilion.Seq.len root_keys)
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : (∀ (q : Int), (((0 ≤ q) ∧ (q < r)) → ((Vermilion.Seq.index roots q < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots q) = Vermilion.Seq.index root_keys q)))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (call_new_3_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__11))
    (call_new_3_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__11)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__11 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__11 vrml_i0))))))
    (call_new_3_ensures_2 : tmp__11 = (Vermilion.Seq.empty : Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_exit_2 : Vermilion.inUnsignedRange 64 i)
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
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.project_keys.ensures_35

end reclaim_plan.project_keys

