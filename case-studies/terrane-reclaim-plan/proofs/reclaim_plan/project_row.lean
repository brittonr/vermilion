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

-- vrml:begin reclaim_plan.project_row.assert_10 e84ecb8406614b6e
/--
Generated VC `reclaim_plan.project_row.assert_10`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1142:20-1142:31`
- Rust/SST construct: Rust source assertion
- AssertId: `10`
- Statement hash: `e84ecb8406614b6e`
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
  statementHash := "e84ecb8406614b6e"
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
    Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.assert_10

-- vrml:begin reclaim_plan.project_row.assert_11 10941415ec616412
/--
Generated VC `reclaim_plan.project_row.assert_11`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1143:20-1143:76`
- Rust/SST construct: Rust source assertion
- AssertId: `11`
- Statement hash: `10941415ec616412`
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
  statementHash := "10941415ec616412"
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
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2) :
    Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.assert_11

-- vrml:begin reclaim_plan.project_row.assert_12 f6b8a4cc29bdef49
/--
Generated VC `reclaim_plan.project_row.assert_12`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1144:20-1144:58`
- Rust/SST construct: Rust source assertion
- AssertId: `12`
- Statement hash: `f6b8a4cc29bdef49`
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
  statementHash := "f6b8a4cc29bdef49"
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
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) :
    (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.assert_12

-- vrml:begin reclaim_plan.project_row.assert_13 af6c73d1c0c31eb7
/--
Generated VC `reclaim_plan.project_row.assert_13`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1145:20-1145:62`
- Rust/SST construct: Rust source assertion
- AssertId: `13`
- Statement hash: `af6c73d1c0c31eb7`
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
  statementHash := "af6c73d1c0c31eb7"
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

-- vrml:begin reclaim_plan.project_row.assert_14 cba274e55e26b0cd
/--
Generated VC `reclaim_plan.project_row.assert_14`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1148:28-1148:48`
- Rust/SST construct: Rust source assertion
- AssertId: `14`
- Statement hash: `cba274e55e26b0cd`
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
  statementHash := "cba274e55e26b0cd"
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
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : True)
    (assume_45 : (0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post))
    (branch_2 : k < Vermilion.Seq.len edges) :
    Vermilion.Seq.index tmp__post k = Vermilion.Seq.index edges k := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.assert_14

-- vrml:begin reclaim_plan.project_row.assert_15 ee89dd20dbb7bc9b
/--
Generated VC `reclaim_plan.project_row.assert_15`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1146:87-1146:137`
- Rust/SST construct: Rust source assertion
- AssertId: `15`
- Statement hash: `ee89dd20dbb7bc9b`
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
  statementHash := "ee89dd20dbb7bc9b"
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

-- vrml:begin reclaim_plan.project_row.assert_16 8f73a7dbd09cd995
/--
Generated VC `reclaim_plan.project_row.assert_16`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1154:28-1154:84`
- Rust/SST construct: Rust source assertion
- AssertId: `16`
- Statement hash: `8f73a7dbd09cd995`
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
  statementHash := "8f73a7dbd09cd995"
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
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : True)
    (assume_46 : (0 ≤ q) ∧ (q < (j + 1)))
    (branch_3 : q < j) :
    reclaim_plan.ref_resolved_spec keys references edges i q := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.assert_16

-- vrml:begin reclaim_plan.project_row.call_requires_17_0 4d57cecf81ec8077
/--
Generated VC `reclaim_plan.project_row.call_requires_17_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1155:21-1155:87`
- Rust/SST construct: call ref_resolved_extend
- AssertId: `17_0`
- Statement hash: `4d57cecf81ec8077`
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
  statementHash := "4d57cecf81ec8077"
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
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.call_requires_17_0

-- vrml:begin reclaim_plan.project_row.call_requires_17_1 2db694317a576ddc
/--
Generated VC `reclaim_plan.project_row.call_requires_17_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1155:21-1155:87`
- Rust/SST construct: call ref_resolved_extend
- AssertId: `17_1`
- Statement hash: `2db694317a576ddc`
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
  statementHash := "2db694317a576ddc"
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
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.call_requires_17_1

-- vrml:begin reclaim_plan.project_row.assert_18 1426375a6a30989f
/--
Generated VC `reclaim_plan.project_row.assert_18`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1157:28-1157:63`
- Rust/SST construct: Rust source assertion
- AssertId: `18`
- Statement hash: `1426375a6a30989f`
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
  statementHash := "1426375a6a30989f"
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
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : True)
    (assume_46 : (0 ≤ q) ∧ (q < (j + 1)))
    (branch_3 : (¬ (q < j))) :
    Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.assert_18

-- vrml:begin reclaim_plan.project_row.assert_19 2d586d9e8dd3b75e
/--
Generated VC `reclaim_plan.project_row.assert_19`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1158:28-1158:69`
- Rust/SST construct: Rust source assertion
- AssertId: `19`
- Statement hash: `2d586d9e8dd3b75e`
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
  statementHash := "2d586d9e8dd3b75e"
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

-- vrml:begin reclaim_plan.project_row.assert_20 cc1aa62814d5d1b1
/--
Generated VC `reclaim_plan.project_row.assert_20`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1152:17-1152:75`
- Rust/SST construct: Rust source assertion
- AssertId: `20`
- Statement hash: `cc1aa62814d5d1b1`
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
  statementHash := "cc1aa62814d5d1b1"
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
      unfold Vermilion.inUnsignedRange at call_vec_index_1_ensures_0; exact call_vec_index_1_ensures_0.1
    have e0 : vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)) = i := by
      rw [assert_10]; rfl
    have e1 : vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)) = tmp__2 := by
      rw [assert_10]; rfl
    have hk := assert_11
    rw [e0, e1] at hk
    refine ⟨tmp__2, ⟨⟨h0, by omega⟩, ?_⟩, he⟩
    rw [hqj]; exact hk.symm
-- vrml:end reclaim_plan.project_row.assert_20

-- vrml:begin reclaim_plan.project_row.assert_21 7b458fe706c90280
/--
Generated VC `reclaim_plan.project_row.assert_21`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1162:24-1162:44`
- Rust/SST construct: Rust source assertion
- AssertId: `21`
- Statement hash: `7b458fe706c90280`
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
  statementHash := "7b458fe706c90280"
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
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_46 : True)
    (assume_47 : (0 ≤ k_2) ∧ (k_2 < Vermilion.Seq.len input)) :
    Vermilion.Seq.index edges k_2 = Vermilion.Seq.index input k_2 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.assert_21

-- vrml:begin reclaim_plan.project_row.assert_22 45eea6d7b406464f
/--
Generated VC `reclaim_plan.project_row.assert_22`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1161:87-1161:109`
- Rust/SST construct: Rust source assertion
- AssertId: `22`
- Statement hash: `45eea6d7b406464f`
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
  statementHash := "45eea6d7b406464f"
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
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.assert_22

-- vrml:begin reclaim_plan.project_row.assert_23 e1cfef361cfab5fc
/--
Generated VC `reclaim_plan.project_row.assert_23`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1165:13-1165:18`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `23`
- Statement hash: `e1cfef361cfab5fc`
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
  statementHash := "e1cfef361cfab5fc"
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
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_46 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k)))) :
    Vermilion.inUnsignedRange 64 (j + 1) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.assert_23

-- vrml:begin reclaim_plan.project_row.invariant_preserve_0_0 81e3fba7751c855b
/--
Generated VC `reclaim_plan.project_row.invariant_preserve_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1126:19-1126:38`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `81e3fba7751c855b`
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
  statementHash := "81e3fba7751c855b"
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
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_46 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k))))
    (assert_23 : Vermilion.inUnsignedRange 64 (j + 1)) :
    (0 ≤ ((j + 1) % 18446744073709551616)) ∧ (((j + 1) % 18446744073709551616) ≤ Vermilion.Seq.len tmp_) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.invariant_preserve_0_0

-- vrml:begin reclaim_plan.project_row.invariant_preserve_0_1 759768dd8b19b5ab
/--
Generated VC `reclaim_plan.project_row.invariant_preserve_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1126:40-1126:54`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `759768dd8b19b5ab`
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
  statementHash := "759768dd8b19b5ab"
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
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_46 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k))))
    (assert_23 : Vermilion.inUnsignedRange 64 (j + 1)) :
    i < Vermilion.Seq.len keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.invariant_preserve_0_1

-- vrml:begin reclaim_plan.project_row.invariant_preserve_0_2 f5a9b877b297d2b2
/--
Generated VC `reclaim_plan.project_row.invariant_preserve_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1126:56-1126:86`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_2`
- Statement hash: `f5a9b877b297d2b2`
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
  statementHash := "f5a9b877b297d2b2"
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
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_46 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k))))
    (assert_23 : Vermilion.inUnsignedRange 64 (j + 1)) :
    Vermilion.Seq.len references = Vermilion.Seq.len keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.invariant_preserve_0_2

-- vrml:begin reclaim_plan.project_row.invariant_preserve_0_3 1001ace914e3f993
/--
Generated VC `reclaim_plan.project_row.invariant_preserve_0_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1127:13-1127:41`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_3`
- Statement hash: `1001ace914e3f993`
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
  statementHash := "1001ace914e3f993"
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
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_46 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k))))
    (assert_23 : Vermilion.inUnsignedRange 64 (j + 1)) :
    tmp_ = Vermilion.Seq.index references i := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.invariant_preserve_0_3

-- vrml:begin reclaim_plan.project_row.invariant_preserve_0_4 456080fb06ad1a4b
/--
Generated VC `reclaim_plan.project_row.invariant_preserve_0_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1127:43-1127:71`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_4`
- Statement hash: `456080fb06ad1a4b`
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
  statementHash := "456080fb06ad1a4b"
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
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_46 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k))))
    (assert_23 : Vermilion.inUnsignedRange 64 (j + 1)) :
    Vermilion.Seq.len index_row = Vermilion.Seq.len tmp_ := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.invariant_preserve_0_4

-- vrml:begin reclaim_plan.project_row.invariant_preserve_0_5 371f93c502d58563
/--
Generated VC `reclaim_plan.project_row.invariant_preserve_0_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1128:13-1128:43`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_5`
- Statement hash: `371f93c502d58563`
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
  statementHash := "371f93c502d58563"
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
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_46 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k))))
    (assert_23 : Vermilion.inUnsignedRange 64 (j + 1)) :
    reclaim_plan.prefix_of_spec input tmp__post := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.invariant_preserve_0_5

-- vrml:begin reclaim_plan.project_row.invariant_preserve_0_6 4ea985404fb9d0f1
/--
Generated VC `reclaim_plan.project_row.invariant_preserve_0_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1129:13-1129:126`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_6`
- Statement hash: `4ea985404fb9d0f1`
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
  statementHash := "4ea985404fb9d0f1"
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
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_46 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k))))
    (assert_23 : Vermilion.inUnsignedRange 64 (j + 1)) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.invariant_preserve_0_6

-- vrml:begin reclaim_plan.project_row.invariant_preserve_0_7 76a79135f2666d3a
/--
Generated VC `reclaim_plan.project_row.invariant_preserve_0_7`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1130:13-1130:172`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_7`
- Statement hash: `76a79135f2666d3a`
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
  statementHash := "76a79135f2666d3a"
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
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_46 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k))))
    (assert_23 : Vermilion.inUnsignedRange 64 (j + 1)) :
    (∀ (q : Int), (((0 ≤ q) ∧ (q < ((j + 1) % 18446744073709551616))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)) := by
  have hr : (j + 1) % 18446744073709551616 = j + 1 := by
    unfold Vermilion.inUnsignedRange at assert_23; norm_num at assert_23; omega
  rw [hr]; exact assume_45
-- vrml:end reclaim_plan.project_row.invariant_preserve_0_7

-- vrml:begin reclaim_plan.project_row.assert_0_decreases 63f170b657f2625d
/--
Generated VC `reclaim_plan.project_row.assert_0_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1131:19-1131:32`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `63f170b657f2625d`
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
  statementHash := "63f170b657f2625d"
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
    (assert_10 : Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges) = vermilion.tuple_2.tuple_2 i tmp__2)
    (assert_11 : Vermilion.Seq.index (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))
    (assert_12 : (0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index references (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges))))))
    (assert_13 : reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post (Vermilion.Seq.len edges)))
    (assume_44 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → reclaim_plan.edge_names_ref_spec keys references (Vermilion.Seq.index tmp__post k))))
    (assume_45 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (j + 1))) → reclaim_plan.ref_resolved_spec keys references tmp__post i q)))
    (assume_46 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len input)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index input k))))
    (assert_23 : Vermilion.inUnsignedRange 64 (j + 1)) :
    ((0 ≤ (Vermilion.Seq.len tmp_ - ((j + 1) % 18446744073709551616))) ∧ ((Vermilion.Seq.len tmp_ - ((j + 1) % 18446744073709551616)) < (Vermilion.Seq.len tmp_ - j))) ∨ (((Vermilion.Seq.len tmp_ - ((j + 1) % 18446744073709551616)) = (Vermilion.Seq.len tmp_ - j)) ∧ False) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.project_row.assert_0_decreases

-- vrml:begin reclaim_plan.project_row.ensures_24_0 877f5e51c10e415d
/--
Generated VC `reclaim_plan.project_row.ensures_24_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1117:9-1117:46`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `24_0`
- Statement hash: `877f5e51c10e415d`
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
  statementHash := "877f5e51c10e415d"
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
-- vrml:end reclaim_plan.project_row.ensures_24_0

-- vrml:begin reclaim_plan.project_row.ensures_24_1 04992559d8d68060
/--
Generated VC `reclaim_plan.project_row.ensures_24_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1118:9-1118:143`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `24_1`
- Statement hash: `04992559d8d68060`
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
  statementHash := "04992559d8d68060"
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
-- vrml:end reclaim_plan.project_row.ensures_24_1

-- vrml:begin reclaim_plan.project_row.ensures_24_2 81fc9741550d3095
/--
Generated VC `reclaim_plan.project_row.ensures_24_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1119:9-1120:119`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `24_2`
- Statement hash: `81fc9741550d3095`
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
  statementHash := "81fc9741550d3095"
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
  intro _ q hq
  exact loop_0_exit_10 q ⟨hq.1, by rw [loop_0_exit_6] at loop_0_exit_11; omega⟩
-- vrml:end reclaim_plan.project_row.ensures_24_2

end reclaim_plan.project_row

