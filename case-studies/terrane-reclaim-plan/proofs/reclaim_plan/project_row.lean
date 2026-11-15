import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.project_row

-- vrml:begin reclaim_plan.project_row.call_requires_0 7312e083dbb613ba
/--
Generated VC `reclaim_plan.project_row.call_requires_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1123:16-1123:29`
- Rust/SST construct: call vec_index
- AssertId: `0`
- Statement hash: `7312e083dbb613ba`
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
  statementHash := "7312e083dbb613ba"
}
@[vrml_obligation] theorem call_requires_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : Vermilion.inUnsignedRange 64 i)
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (requires_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (requires_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (requires_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (requires_9 : i < Vermilion.Seq.len keys)
    (requires_10 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (requires_11 : Vermilion.Seq.len index_row = Vermilion.Seq.len (Vermilion.Seq.index references i))
    (requires_12 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index input k)))) :
    i < Vermilion.Seq.len references := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.call_requires_0

-- vrml:begin reclaim_plan.project_row.invariant_entry_0_0 9935303c3b2f5af7
/--
Generated VC `reclaim_plan.project_row.invariant_entry_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1126:19-1126:38`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `9935303c3b2f5af7`
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
  statementHash := "9935303c3b2f5af7"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : Vermilion.inUnsignedRange 64 i)
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (requires_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (requires_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (requires_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (requires_9 : i < Vermilion.Seq.len keys)
    (requires_10 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (requires_11 : Vermilion.Seq.len index_row = Vermilion.Seq.len (Vermilion.Seq.index references i))
    (requires_12 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index input k))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index references i) :
    (0 ≤ 0) ∧ (0 ≤ Vermilion.Seq.len tmp_) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.invariant_entry_0_0

-- vrml:begin reclaim_plan.project_row.invariant_entry_0_1 16491efbeb3a2e7d
/--
Generated VC `reclaim_plan.project_row.invariant_entry_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1126:40-1126:54`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `16491efbeb3a2e7d`
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
  statementHash := "16491efbeb3a2e7d"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : Vermilion.inUnsignedRange 64 i)
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (requires_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (requires_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (requires_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (requires_9 : i < Vermilion.Seq.len keys)
    (requires_10 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (requires_11 : Vermilion.Seq.len index_row = Vermilion.Seq.len (Vermilion.Seq.index references i))
    (requires_12 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index input k))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index references i) :
    i < Vermilion.Seq.len keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.invariant_entry_0_1

-- vrml:begin reclaim_plan.project_row.invariant_entry_0_2 665535931b29e0f0
/--
Generated VC `reclaim_plan.project_row.invariant_entry_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1126:56-1126:86`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_2`
- Statement hash: `665535931b29e0f0`
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
  statementHash := "665535931b29e0f0"
}
@[vrml_obligation] theorem invariant_entry_0_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : Vermilion.inUnsignedRange 64 i)
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (requires_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (requires_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (requires_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (requires_9 : i < Vermilion.Seq.len keys)
    (requires_10 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (requires_11 : Vermilion.Seq.len index_row = Vermilion.Seq.len (Vermilion.Seq.index references i))
    (requires_12 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index input k))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index references i) :
    Vermilion.Seq.len references = Vermilion.Seq.len keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.invariant_entry_0_2

-- vrml:begin reclaim_plan.project_row.invariant_entry_0_3 39d3c09841960115
/--
Generated VC `reclaim_plan.project_row.invariant_entry_0_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1127:13-1127:41`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_3`
- Statement hash: `39d3c09841960115`
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
  statementHash := "39d3c09841960115"
}
@[vrml_obligation] theorem invariant_entry_0_3
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : Vermilion.inUnsignedRange 64 i)
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (requires_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (requires_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (requires_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (requires_9 : i < Vermilion.Seq.len keys)
    (requires_10 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (requires_11 : Vermilion.Seq.len index_row = Vermilion.Seq.len (Vermilion.Seq.index references i))
    (requires_12 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index input k))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index references i) :
    tmp_ = Vermilion.Seq.index references i := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.invariant_entry_0_3

-- vrml:begin reclaim_plan.project_row.invariant_entry_0_4 4411e922864308f5
/--
Generated VC `reclaim_plan.project_row.invariant_entry_0_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1127:43-1127:71`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_4`
- Statement hash: `4411e922864308f5`
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
  statementHash := "4411e922864308f5"
}
@[vrml_obligation] theorem invariant_entry_0_4
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : Vermilion.inUnsignedRange 64 i)
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (requires_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (requires_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (requires_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (requires_9 : i < Vermilion.Seq.len keys)
    (requires_10 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (requires_11 : Vermilion.Seq.len index_row = Vermilion.Seq.len (Vermilion.Seq.index references i))
    (requires_12 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index input k))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index references i) :
    Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_ := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.invariant_entry_0_4

-- vrml:begin reclaim_plan.project_row.invariant_entry_0_5 53053c2736889e9c
/--
Generated VC `reclaim_plan.project_row.invariant_entry_0_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1128:13-1128:43`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_5`
- Statement hash: `53053c2736889e9c`
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
  statementHash := "53053c2736889e9c"
}
@[vrml_obligation] theorem invariant_entry_0_5
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : Vermilion.inUnsignedRange 64 i)
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (requires_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (requires_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (requires_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (requires_9 : i < Vermilion.Seq.len keys)
    (requires_10 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (requires_11 : Vermilion.Seq.len index_row = Vermilion.Seq.len (Vermilion.Seq.index references i))
    (requires_12 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index input k))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index references i) :
    reclaim_plan.prefix_of_spec input input := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.invariant_entry_0_5

-- vrml:begin reclaim_plan.project_row.invariant_entry_0_6 ccd6fa7cddc3d02f
/--
Generated VC `reclaim_plan.project_row.invariant_entry_0_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1129:13-1129:126`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_6`
- Statement hash: `ccd6fa7cddc3d02f`
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
  statementHash := "ccd6fa7cddc3d02f"
}
@[vrml_obligation] theorem invariant_entry_0_6
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : Vermilion.inUnsignedRange 64 i)
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (requires_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (requires_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (requires_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (requires_9 : i < Vermilion.Seq.len keys)
    (requires_10 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (requires_11 : Vermilion.Seq.len index_row = Vermilion.Seq.len (Vermilion.Seq.index references i))
    (requires_12 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index input k))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index references i) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index input k))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.invariant_entry_0_6

-- vrml:begin reclaim_plan.project_row.invariant_entry_0_7 4024dc747ebd02fe
/--
Generated VC `reclaim_plan.project_row.invariant_entry_0_7`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1130:13-1130:172`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_7`
- Statement hash: `4024dc747ebd02fe`
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
  statementHash := "4024dc747ebd02fe"
}
@[vrml_obligation] theorem invariant_entry_0_7
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : Vermilion.inUnsignedRange 64 i)
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (requires_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (requires_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (requires_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (requires_9 : i < Vermilion.Seq.len keys)
    (requires_10 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (requires_11 : Vermilion.Seq.len index_row = Vermilion.Seq.len (Vermilion.Seq.index references i))
    (requires_12 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index input k))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index references i) :
    (∀ (q : Int), (((0 ≤ q) ∧ (q < 0)) → reclaim_plan.ref_resolved_spec keys references input i q)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.invariant_entry_0_7

-- vrml:begin reclaim_plan.project_row.call_requires_2 f58f8302756634d3
/--
Generated VC `reclaim_plan.project_row.call_requires_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1133:17-1133:29`
- Rust/SST construct: call vec_index
- AssertId: `2`
- Statement hash: `f58f8302756634d3`
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
  statementHash := "f58f8302756634d3"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
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
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.call_requires_2

-- vrml:begin reclaim_plan.project_row.call_requires_4 bc902b9d6ee86770
/--
Generated VC `reclaim_plan.project_row.call_requires_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1134:40-1134:47`
- Rust/SST construct: call vec_index
- AssertId: `4`
- Statement hash: `bc902b9d6ee86770`
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
  statementHash := "bc902b9d6ee86770"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (branch_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys))) :
    tmp__2 < Vermilion.Seq.len keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.call_requires_4

-- vrml:begin reclaim_plan.project_row.call_requires_5 c49a1b3551956545
/--
Generated VC `reclaim_plan.project_row.call_requires_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1134:50-1134:56`
- Rust/SST construct: call vec_index
- AssertId: `5`
- Statement hash: `c49a1b3551956545`
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
  statementHash := "c49a1b3551956545"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (branch_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)))
    (call_vec_index_2_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (call_vec_index_2_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (call_vec_index_2_ensures_2 : tmp__3 = Vermilion.Seq.index keys tmp__2) :
    j < Vermilion.Seq.len tmp_ := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.call_requires_5

-- vrml:begin reclaim_plan.project_row.ensures_7_0 cb34616e8aa6c580
/--
Generated VC `reclaim_plan.project_row.ensures_7_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1117:9-1117:46`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `7_0`
- Statement hash: `cb34616e8aa6c580`
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
  statementHash := "cb34616e8aa6c580"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (branch_1 : tmp__5) :
    reclaim_plan.prefix_of_spec input (reclaim_plan.RowProjection.get_RowProjection_edges (reclaim_plan.RowProjection.RowProjection False edges)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.ensures_7_0

-- vrml:begin reclaim_plan.project_row.ensures_7_1 f10ec9b0136da6f6
/--
Generated VC `reclaim_plan.project_row.ensures_7_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1118:9-1118:143`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `7_1`
- Statement hash: `f10ec9b0136da6f6`
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
  statementHash := "f10ec9b0136da6f6"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (branch_1 : tmp__5) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len (reclaim_plan.RowProjection.get_RowProjection_edges (reclaim_plan.RowProjection.RowProjection False edges)))) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges (reclaim_plan.RowProjection.RowProjection False edges)) k))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.ensures_7_1

-- vrml:begin reclaim_plan.project_row.ensures_7_2 eb3135b6fd03f34b
/--
Generated VC `reclaim_plan.project_row.ensures_7_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1119:9-1120:119`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `7_2`
- Statement hash: `eb3135b6fd03f34b`
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
  statementHash := "eb3135b6fd03f34b"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (branch_1 : tmp__5) :
    reclaim_plan.RowProjection.get_RowProjection_ok (reclaim_plan.RowProjection.RowProjection False edges) → (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index references i))) → reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges (reclaim_plan.RowProjection.RowProjection False edges)) i q)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.ensures_7_2

-- vrml:begin reclaim_plan.project_row.assert_9 5b8f33bdd3a0cca4
/--
Generated VC `reclaim_plan.project_row.assert_9`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1140:20-1140:48`
- Rust/SST construct: Rust source assertion
- AssertId: `9`
- Statement hash: `5b8f33bdd3a0cca4`
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
  statementHash := "5b8f33bdd3a0cca4"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2)) :
    reclaim_plan.prefix_of_spec edges tmp__post := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.assert_9

-- vrml:begin reclaim_plan.project_row.assert_10 56ed54adf0737a59
/--
Generated VC `reclaim_plan.project_row.assert_10`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1141:20-1141:72`
- Rust/SST construct: Rust source assertion
- AssertId: `10`
- Statement hash: `56ed54adf0737a59`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def assert_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1141
  startColumn := 20
  endLine := 1141
  endColumn := 72
  assertId := "10"
  functionName := "reclaim_plan.project_row"
  kind := "assert"
  statementHash := "56ed54adf0737a59"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post) :
    Vermilion.Seq.index (Vermilion.Seq.index references i) j = Vermilion.Seq.index keys tmp__2 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.assert_10

-- vrml:begin reclaim_plan.project_row.assert_11 c6023c06f57f621f
/--
Generated VC `reclaim_plan.project_row.assert_11`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1142:20-1142:86`
- Rust/SST construct: Rust source assertion
- AssertId: `11`
- Statement hash: `c6023c06f57f621f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def assert_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1142
  startColumn := 20
  endLine := 1142
  endColumn := 86
  assertId := "11"
  functionName := "reclaim_plan.project_row"
  kind := "assert"
  statementHash := "c6023c06f57f621f"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index (Vermilion.Seq.index references i) j = Vermilion.Seq.index keys tmp__2) :
    reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.project_row.assert_11

-- vrml:begin reclaim_plan.project_row.assert_12 a50b0609a3803eff
/--
Generated VC `reclaim_plan.project_row.assert_12`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1145:28-1145:48`
- Rust/SST construct: Rust source assertion
- AssertId: `12`
- Statement hash: `a50b0609a3803eff`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def assert_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1145
  startColumn := 28
  endLine := 1145
  endColumn := 48
  assertId := "12"
  functionName := "reclaim_plan.project_row"
  kind := "assert"
  statementHash := "a50b0609a3803eff"
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
    (k : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index (Vermilion.Seq.index references i) j = Vermilion.Seq.index keys tmp__2)
    (assert_11 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_42 : True)
    (assume_43 : (0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post))
    (branch_2 : k < Vermilion.Seq.len edges) :
    Vermilion.Seq.index tmp__post k = Vermilion.Seq.index edges k := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.assert_12

-- vrml:begin reclaim_plan.project_row.assert_13 bf623ecfd62ff10f
/--
Generated VC `reclaim_plan.project_row.assert_13`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1143:87-1143:137`
- Rust/SST construct: Rust source assertion
- AssertId: `13`
- Statement hash: `bf623ecfd62ff10f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def assert_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1143
  startColumn := 87
  endLine := 1143
  endColumn := 137
  assertId := "13"
  functionName := "reclaim_plan.project_row"
  kind := "assert"
  statementHash := "bf623ecfd62ff10f"
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
    (k : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index (Vermilion.Seq.index references i) j = Vermilion.Seq.index keys tmp__2)
    (assert_11 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_42 : True)
    (assume_43 : (0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post))
    (then_2_assert_12 : (k < Vermilion.Seq.len edges) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index edges k)) :
    reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.project_row.assert_13

-- vrml:begin reclaim_plan.project_row.assert_14 3cfbdbe74a648271
/--
Generated VC `reclaim_plan.project_row.assert_14`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1151:28-1151:84`
- Rust/SST construct: Rust source assertion
- AssertId: `14`
- Statement hash: `3cfbdbe74a648271`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post k⟩
-/
def assert_14_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1151
  startColumn := 28
  endLine := 1151
  endColumn := 84
  assertId := "14"
  functionName := "reclaim_plan.project_row"
  kind := "assert"
  statementHash := "3cfbdbe74a648271"
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
    (q : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index (Vermilion.Seq.index references i) j = Vermilion.Seq.index keys tmp__2)
    (assert_11 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_42 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_43 : True)
    (assume_44 : (0 ≤ q) ∧ (q < (j + 1)))
    (branch_3 : q < j) :
    reclaim_plan.ref_resolved_spec keys references edges i q := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.assert_14

-- vrml:begin reclaim_plan.project_row.call_requires_15_0 3aa70c7d663cad19
/--
Generated VC `reclaim_plan.project_row.call_requires_15_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1152:21-1152:87`
- Rust/SST construct: call ref_resolved_extend
- AssertId: `15_0`
- Statement hash: `3aa70c7d663cad19`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post k⟩
-/
def call_requires_15_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1152
  startColumn := 21
  endLine := 1152
  endColumn := 87
  assertId := "15_0"
  functionName := "reclaim_plan.project_row"
  kind := "call_requires"
  statementHash := "3aa70c7d663cad19"
}
@[vrml_obligation] theorem call_requires_15_0
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index (Vermilion.Seq.index references i) j = Vermilion.Seq.index keys tmp__2)
    (assert_11 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_42 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_43 : True)
    (assume_44 : (0 ≤ q) ∧ (q < (j + 1)))
    (branch_3 : q < j)
    (assert_14 : reclaim_plan.ref_resolved_spec keys references edges i q) :
    reclaim_plan.ref_resolved_spec keys references edges i q := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.call_requires_15_0

-- vrml:begin reclaim_plan.project_row.call_requires_15_1 f107d1bf7f6b8432
/--
Generated VC `reclaim_plan.project_row.call_requires_15_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1152:21-1152:87`
- Rust/SST construct: call ref_resolved_extend
- AssertId: `15_1`
- Statement hash: `f107d1bf7f6b8432`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post k⟩
-/
def call_requires_15_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1152
  startColumn := 21
  endLine := 1152
  endColumn := 87
  assertId := "15_1"
  functionName := "reclaim_plan.project_row"
  kind := "call_requires"
  statementHash := "f107d1bf7f6b8432"
}
@[vrml_obligation] theorem call_requires_15_1
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index (Vermilion.Seq.index references i) j = Vermilion.Seq.index keys tmp__2)
    (assert_11 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_42 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_43 : True)
    (assume_44 : (0 ≤ q) ∧ (q < (j + 1)))
    (branch_3 : q < j)
    (assert_14 : reclaim_plan.ref_resolved_spec keys references edges i q) :
    reclaim_plan.prefix_of_spec edges tmp__post := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.call_requires_15_1

-- vrml:begin reclaim_plan.project_row.assert_16 2ca4fe27b52de29b
/--
Generated VC `reclaim_plan.project_row.assert_16`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1154:28-1154:63`
- Rust/SST construct: Rust source assertion
- AssertId: `16`
- Statement hash: `2ca4fe27b52de29b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post k⟩
-/
def assert_16_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1154
  startColumn := 28
  endLine := 1154
  endColumn := 63
  assertId := "16"
  functionName := "reclaim_plan.project_row"
  kind := "assert"
  statementHash := "2ca4fe27b52de29b"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index (Vermilion.Seq.index references i) j = Vermilion.Seq.index keys tmp__2)
    (assert_11 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_42 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_43 : True)
    (assume_44 : (0 ≤ q) ∧ (q < (j + 1)))
    (branch_3 : (¬ (q < j))) :
    Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.assert_16

-- vrml:begin reclaim_plan.project_row.assert_17 4ddc8f35b5f6cc50
/--
Generated VC `reclaim_plan.project_row.assert_17`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1155:28-1155:69`
- Rust/SST construct: Rust source assertion
- AssertId: `17`
- Statement hash: `4ddc8f35b5f6cc50`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post k⟩
-/
def assert_17_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1155
  startColumn := 28
  endLine := 1155
  endColumn := 69
  assertId := "17"
  functionName := "reclaim_plan.project_row"
  kind := "assert"
  statementHash := "4ddc8f35b5f6cc50"
}
@[vrml_obligation] theorem assert_17
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index (Vermilion.Seq.index references i) j = Vermilion.Seq.index keys tmp__2)
    (assert_11 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_42 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_43 : True)
    (assume_44 : (0 ≤ q) ∧ (q < (j + 1)))
    (branch_3 : (¬ (q < j)))
    (assert_16 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2) :
    reclaim_plan.has_edge_spec tmp__post i tmp__2 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.project_row.assert_17

-- vrml:begin reclaim_plan.project_row.assert_18 52ba00dc83669963
/--
Generated VC `reclaim_plan.project_row.assert_18`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1149:17-1149:75`
- Rust/SST construct: Rust source assertion
- AssertId: `18`
- Statement hash: `52ba00dc83669963`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post k⟩
-/
def assert_18_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1149
  startColumn := 17
  endLine := 1149
  endColumn := 75
  assertId := "18"
  functionName := "reclaim_plan.project_row"
  kind := "assert"
  statementHash := "52ba00dc83669963"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index (Vermilion.Seq.index references i) j = Vermilion.Seq.index keys tmp__2)
    (assert_11 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_42 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_43 : True)
    (assume_44 : (0 ≤ q) ∧ (q < (j + 1)))
    (then_3_assert_14 : (q < j) → reclaim_plan.ref_resolved_spec keys references edges i q)
    (then_3_call_ref_resolved_extend_ensures_0 : (q < j) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)
    (else_3_assert_16 : (¬ (q < j)) → (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2))
    (else_3_assert_17 : (¬ (q < j)) → reclaim_plan.has_edge_spec tmp__post i tmp__2) :
    reclaim_plan.ref_resolved_spec keys references tmp__post i q := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.project_row.assert_18

-- vrml:begin reclaim_plan.project_row.assert_19 2b8a537718f0ca8e
/--
Generated VC `reclaim_plan.project_row.assert_19`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1159:24-1159:44`
- Rust/SST construct: Rust source assertion
- AssertId: `19`
- Statement hash: `2b8a537718f0ca8e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post k⟩ ⟨reclaim_plan.ref_resolved_spec keys references tmp__post i q⟩
-/
def assert_19_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1159
  startColumn := 24
  endLine := 1159
  endColumn := 44
  assertId := "19"
  functionName := "reclaim_plan.project_row"
  kind := "assert"
  statementHash := "2b8a537718f0ca8e"
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
    (k_2 : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index (Vermilion.Seq.index references i) j = Vermilion.Seq.index keys tmp__2)
    (assert_11 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_42 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_43 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_44 : True)
    (assume_45 : (0 ≤ k_2) ∧ (k_2 < Vermilion.Seq.len input)) :
    Vermilion.Seq.index edges k_2 = Vermilion.Seq.index input k_2 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.assert_19

-- vrml:begin reclaim_plan.project_row.assert_20 b4721e3683bd1d40
/--
Generated VC `reclaim_plan.project_row.assert_20`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1158:87-1158:109`
- Rust/SST construct: Rust source assertion
- AssertId: `20`
- Statement hash: `b4721e3683bd1d40`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post k⟩ ⟨reclaim_plan.ref_resolved_spec keys references tmp__post i q⟩
-/
def assert_20_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1158
  startColumn := 87
  endLine := 1158
  endColumn := 109
  assertId := "20"
  functionName := "reclaim_plan.project_row"
  kind := "assert"
  statementHash := "b4721e3683bd1d40"
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
    (k_2 : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index (Vermilion.Seq.index references i) j = Vermilion.Seq.index keys tmp__2)
    (assert_11 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_42 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_43 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_44 : True)
    (assume_45 : (0 ≤ k_2) ∧ (k_2 < Vermilion.Seq.len input))
    (assert_19 : Vermilion.Seq.index edges k_2 = Vermilion.Seq.index input k_2) :
    Vermilion.Seq.index tmp__post k_2 = Vermilion.Seq.index input k_2 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.assert_20

-- vrml:begin reclaim_plan.project_row.assert_21 c4465296e1710464
/--
Generated VC `reclaim_plan.project_row.assert_21`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1162:13-1162:18`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `21`
- Statement hash: `c4465296e1710464`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post k⟩ ⟨reclaim_plan.ref_resolved_spec keys references tmp__post i q⟩ ⟨Vermilion.Seq.index input k⟩
-/
def assert_21_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1162
  startColumn := 13
  endLine := 1162
  endColumn := 18
  assertId := "21"
  functionName := "reclaim_plan.project_row"
  kind := "assert"
  statementHash := "c4465296e1710464"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index (Vermilion.Seq.index references i) j = Vermilion.Seq.index keys tmp__2)
    (assert_11 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_42 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_43 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k)))) :
    Vermilion.inUnsignedRange 64 (j + 1) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.assert_21

-- vrml:begin reclaim_plan.project_row.invariant_preserve_0_0 856fa7cfbe699305
/--
Generated VC `reclaim_plan.project_row.invariant_preserve_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1126:19-1126:38`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `856fa7cfbe699305`
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
  statementHash := "856fa7cfbe699305"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index (Vermilion.Seq.index references i) j = Vermilion.Seq.index keys tmp__2)
    (assert_11 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_42 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_43 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k))))
    (assert_21 : Vermilion.inUnsignedRange 64 (j + 1)) :
    (0 ≤ ((j + 1) % 18446744073709551616)) ∧ (((j + 1) % 18446744073709551616) ≤ Vermilion.Seq.len tmp_) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.invariant_preserve_0_0

-- vrml:begin reclaim_plan.project_row.invariant_preserve_0_1 ab287378d80a37b9
/--
Generated VC `reclaim_plan.project_row.invariant_preserve_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1126:40-1126:54`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `ab287378d80a37b9`
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
  statementHash := "ab287378d80a37b9"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index (Vermilion.Seq.index references i) j = Vermilion.Seq.index keys tmp__2)
    (assert_11 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_42 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_43 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k))))
    (assert_21 : Vermilion.inUnsignedRange 64 (j + 1)) :
    i < Vermilion.Seq.len keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.invariant_preserve_0_1

-- vrml:begin reclaim_plan.project_row.invariant_preserve_0_2 dadc019eb1718a94
/--
Generated VC `reclaim_plan.project_row.invariant_preserve_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1126:56-1126:86`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_2`
- Statement hash: `dadc019eb1718a94`
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
  statementHash := "dadc019eb1718a94"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index (Vermilion.Seq.index references i) j = Vermilion.Seq.index keys tmp__2)
    (assert_11 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_42 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_43 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k))))
    (assert_21 : Vermilion.inUnsignedRange 64 (j + 1)) :
    Vermilion.Seq.len references = Vermilion.Seq.len keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.invariant_preserve_0_2

-- vrml:begin reclaim_plan.project_row.invariant_preserve_0_3 1f9d07e2ec6df439
/--
Generated VC `reclaim_plan.project_row.invariant_preserve_0_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1127:13-1127:41`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_3`
- Statement hash: `1f9d07e2ec6df439`
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
  statementHash := "1f9d07e2ec6df439"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index (Vermilion.Seq.index references i) j = Vermilion.Seq.index keys tmp__2)
    (assert_11 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_42 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_43 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k))))
    (assert_21 : Vermilion.inUnsignedRange 64 (j + 1)) :
    tmp_ = Vermilion.Seq.index references i := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.invariant_preserve_0_3

-- vrml:begin reclaim_plan.project_row.invariant_preserve_0_4 69334bb07134e281
/--
Generated VC `reclaim_plan.project_row.invariant_preserve_0_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1127:43-1127:71`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_4`
- Statement hash: `69334bb07134e281`
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
  statementHash := "69334bb07134e281"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index (Vermilion.Seq.index references i) j = Vermilion.Seq.index keys tmp__2)
    (assert_11 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_42 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_43 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k))))
    (assert_21 : Vermilion.inUnsignedRange 64 (j + 1)) :
    Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_ := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.invariant_preserve_0_4

-- vrml:begin reclaim_plan.project_row.invariant_preserve_0_5 b723af5f5764c36d
/--
Generated VC `reclaim_plan.project_row.invariant_preserve_0_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1128:13-1128:43`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_5`
- Statement hash: `b723af5f5764c36d`
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
  statementHash := "b723af5f5764c36d"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index (Vermilion.Seq.index references i) j = Vermilion.Seq.index keys tmp__2)
    (assert_11 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_42 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_43 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k))))
    (assert_21 : Vermilion.inUnsignedRange 64 (j + 1)) :
    reclaim_plan.prefix_of_spec input tmp__post := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.invariant_preserve_0_5

-- vrml:begin reclaim_plan.project_row.invariant_preserve_0_6 d16cc878e772a013
/--
Generated VC `reclaim_plan.project_row.invariant_preserve_0_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1129:13-1129:126`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_6`
- Statement hash: `d16cc878e772a013`
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
  statementHash := "d16cc878e772a013"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index (Vermilion.Seq.index references i) j = Vermilion.Seq.index keys tmp__2)
    (assert_11 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_42 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_43 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k))))
    (assert_21 : Vermilion.inUnsignedRange 64 (j + 1)) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.invariant_preserve_0_6

-- vrml:begin reclaim_plan.project_row.invariant_preserve_0_7 2cf48169365f735c
/--
Generated VC `reclaim_plan.project_row.invariant_preserve_0_7`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1130:13-1130:172`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_7`
- Statement hash: `2cf48169365f735c`
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
  statementHash := "2cf48169365f735c"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index (Vermilion.Seq.index references i) j = Vermilion.Seq.index keys tmp__2)
    (assert_11 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_42 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_43 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k))))
    (assert_21 : Vermilion.inUnsignedRange 64 (j + 1)) :
    (∀ (q : Int), (((0 ≤ q) ∧ (q < ((j + 1) % 18446744073709551616))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.project_row.invariant_preserve_0_7

-- vrml:begin reclaim_plan.project_row.assert_0_decreases 2f82158d589c189f
/--
Generated VC `reclaim_plan.project_row.assert_0_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1131:19-1131:32`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `2f82158d589c189f`
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
  statementHash := "2f82158d589c189f"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_13 : Vermilion.inUnsignedRange 64 j)
    (loop_0_iteration_14 : (0 ≤ j) ∧ (j ≤ Vermilion.Seq.len tmp_))
    (loop_0_iteration_15 : i < Vermilion.Seq.len keys)
    (loop_0_iteration_16 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (loop_0_iteration_17 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_iteration_18 : Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_)
    (loop_0_iteration_19 : reclaim_plan.prefix_of_spec input edges)
    (loop_0_iteration_20 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index edges k))))
    (loop_0_iteration_21 : (∀ (q : Int), (((0 ≤ q) ∧ (q < j)) → reclaim_plan.ref_resolved_spec keys references edges i q)))
    (loop_0_iteration_22 : j < Vermilion.Seq.len tmp_)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index index_row j)
    (assume_25 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_27 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__5 ↔ True))
    (else_0_call_vec_index_2_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (else_0_call_vec_index_2_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_vec_index_2_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 = Vermilion.Seq.index keys tmp__2))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__4))
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (else_0_call_vec_index_3_ensures_2 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 = Vermilion.Seq.index tmp_ j))
    (else_0_assume_33 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__5 ↔ (¬ (tmp__3 = tmp__4))))
    (then_1_assume_35 : tmp__5 → False)
    (then_1_assume_36 : tmp__5 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post vrml_i0))))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push edges (vermilion.tuple_2.tuple_2 i tmp__2))
    (assert_9 : reclaim_plan.prefix_of_spec edges tmp__post)
    (assert_10 : Vermilion.Seq.index (Vermilion.Seq.index references i) j = Vermilion.Seq.index keys tmp__2)
    (assert_11 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_42 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_43 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k))))
    (assert_21 : Vermilion.inUnsignedRange 64 (j + 1)) :
    ((0 ≤ (Vermilion.Seq.len tmp_ - ((j + 1) % 18446744073709551616))) ∧ ((Vermilion.Seq.len tmp_ - ((j + 1) % 18446744073709551616)) < (Vermilion.Seq.len tmp_ - j))) ∨ (((Vermilion.Seq.len tmp_ - ((j + 1) % 18446744073709551616)) = (Vermilion.Seq.len tmp_ - j)) ∧ False) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.assert_0_decreases

-- vrml:begin reclaim_plan.project_row.ensures_22_0 877f5e51c10e415d
/--
Generated VC `reclaim_plan.project_row.ensures_22_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1117:9-1117:46`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `22_0`
- Statement hash: `877f5e51c10e415d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index input k⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩
-/
def ensures_22_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1117
  startColumn := 9
  endLine := 1117
  endColumn := 46
  assertId := "22_0"
  functionName := "reclaim_plan.project_row"
  kind := "ensures"
  statementHash := "877f5e51c10e415d"
}
@[vrml_obligation] theorem ensures_22_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : Vermilion.inUnsignedRange 64 i)
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (requires_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (requires_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (requires_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (requires_9 : i < Vermilion.Seq.len keys)
    (requires_10 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (requires_11 : Vermilion.Seq.len index_row = Vermilion.Seq.len (Vermilion.Seq.index references i))
    (requires_12 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index input k))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_exit_2 : Vermilion.inUnsignedRange 64 j)
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
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.ensures_22_0

-- vrml:begin reclaim_plan.project_row.ensures_22_1 04992559d8d68060
/--
Generated VC `reclaim_plan.project_row.ensures_22_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1118:9-1118:143`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `22_1`
- Statement hash: `04992559d8d68060`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (reclaim_plan.RowProjection.get_RowProjection_edges (reclaim_plan.RowProjection.RowProjection True edges)) k⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index input k⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩
-/
def ensures_22_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1118
  startColumn := 9
  endLine := 1118
  endColumn := 143
  assertId := "22_1"
  functionName := "reclaim_plan.project_row"
  kind := "ensures"
  statementHash := "04992559d8d68060"
}
@[vrml_obligation] theorem ensures_22_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : Vermilion.inUnsignedRange 64 i)
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (requires_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (requires_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (requires_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (requires_9 : i < Vermilion.Seq.len keys)
    (requires_10 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (requires_11 : Vermilion.Seq.len index_row = Vermilion.Seq.len (Vermilion.Seq.index references i))
    (requires_12 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index input k))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_exit_2 : Vermilion.inUnsignedRange 64 j)
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
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.ensures_22_1

-- vrml:begin reclaim_plan.project_row.ensures_22_2 81fc9741550d3095
/--
Generated VC `reclaim_plan.project_row.ensures_22_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1119:9-1120:119`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `22_2`
- Statement hash: `81fc9741550d3095`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.ref_resolved_spec keys references (reclaim_plan.RowProjection.get_RowProjection_edges (reclaim_plan.RowProjection.RowProjection True edges)) i q⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index references vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index index_row vrml_i0⟩ ⟨Vermilion.Seq.index input vrml_i0⟩ ⟨Vermilion.Seq.index input k⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.ref_resolved_spec keys references edges i q⟩
-/
def ensures_22_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1119
  startColumn := 9
  endLine := 1120
  endColumn := 119
  assertId := "22_2"
  functionName := "reclaim_plan.project_row"
  kind := "ensures"
  statementHash := "81fc9741550d3095"
}
@[vrml_obligation] theorem ensures_22_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (references : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (i : Int)
    (index_row : (Vermilion.Seq Int))
    (input : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (tmp_ : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (j : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len references))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len references)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index references vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index references vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_4 : Vermilion.inUnsignedRange 64 i)
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index_row))
    (requires_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index_row)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index_row vrml_i0))))
    (requires_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len input))
    (requires_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index input vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index input vrml_i0))))))
    (requires_9 : i < Vermilion.Seq.len keys)
    (requires_10 : Vermilion.Seq.len references = Vermilion.Seq.len keys)
    (requires_11 : Vermilion.Seq.len index_row = Vermilion.Seq.len (Vermilion.Seq.index references i))
    (requires_12 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index input k))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index tmp_ vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index tmp_ vrml_i0) vrml_i1)))))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index references i)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_exit_2 : Vermilion.inUnsignedRange 64 j)
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
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.project_row.ensures_22_2

end reclaim_plan.project_row

