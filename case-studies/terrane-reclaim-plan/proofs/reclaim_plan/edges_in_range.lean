import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.edges_in_range

-- vrml:begin reclaim_plan.edges_in_range.invariant_entry_0_0 84c0286f3116fd87
/--
Generated VC `reclaim_plan.edges_in_range.invariant_entry_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:248:19-248:40`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `84c0286f3116fd87`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 248
  startColumn := 19
  endLine := 248
  endColumn := 40
  assertId := "0_0"
  functionName := "reclaim_plan.edges_in_range"
  kind := "invariant_entry"
  statementHash := "84c0286f3116fd87"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)))))) :
    (0 ≤ 0) ∧ (0 ≤ Vermilion.Seq.len edges) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.edges_in_range.invariant_entry_0_0

-- vrml:begin reclaim_plan.edges_in_range.invariant_entry_0_1 9d6d02e93148fab7
/--
Generated VC `reclaim_plan.edges_in_range.invariant_entry_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:249:13-249:131`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `9d6d02e93148fab7`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 249
  startColumn := 13
  endLine := 249
  endColumn := 131
  assertId := "0_1"
  functionName := "reclaim_plan.edges_in_range"
  kind := "invariant_entry"
  statementHash := "9d6d02e93148fab7"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)))))) :
    (∀ (j : Int), (((0 ≤ j) ∧ (j < 0)) → ((vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j) < n) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j) < n)))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.edges_in_range.invariant_entry_0_1

-- vrml:begin reclaim_plan.edges_in_range.call_requires_1 0c7a5dadd8f715ad
/--
Generated VC `reclaim_plan.edges_in_range.call_requires_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:252:12-252:20`
- Rust/SST construct: call vec_index
- AssertId: `1`
- Statement hash: `0c7a5dadd8f715ad`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def call_requires_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 252
  startColumn := 12
  endLine := 252
  endColumn := 20
  assertId := "1"
  functionName := "reclaim_plan.edges_in_range"
  kind := "call_requires"
  statementHash := "0c7a5dadd8f715ad"
}
@[vrml_obligation] theorem call_requires_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_0_iteration_5 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → ((vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j) < n) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j) < n)))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len edges) :
    i < Vermilion.Seq.len edges := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.edges_in_range.call_requires_1

-- vrml:begin reclaim_plan.edges_in_range.call_requires_2 51cf30b3aee586f7
/--
Generated VC `reclaim_plan.edges_in_range.call_requires_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:252:31-252:39`
- Rust/SST construct: call vec_index
- AssertId: `2`
- Statement hash: `51cf30b3aee586f7`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def call_requires_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 252
  startColumn := 31
  endLine := 252
  endColumn := 39
  assertId := "2"
  functionName := "reclaim_plan.edges_in_range"
  kind := "call_requires"
  statementHash := "51cf30b3aee586f7"
}
@[vrml_obligation] theorem call_requires_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (tmp_ : (vermilion.tuple_2 Int Int))
    (tmp__3 : Prop)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_0_iteration_5 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → ((vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j) < n) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j) < n)))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len edges)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp_))
    (call_vec_index_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp_))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index edges i)
    (branch_0 : (¬ (vermilion.tuple_2.get_tuple_2__0 tmp_ ≥ n))) :
    i < Vermilion.Seq.len edges := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.edges_in_range.call_requires_2

-- vrml:begin reclaim_plan.edges_in_range.ensures_3 cb234315408d9029
/--
Generated VC `reclaim_plan.edges_in_range.ensures_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:244:13-244:56`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3`
- Statement hash: `cb234315408d9029`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def ensures_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 244
  startColumn := 13
  endLine := 244
  endColumn := 56
  assertId := "3"
  functionName := "reclaim_plan.edges_in_range"
  kind := "ensures"
  statementHash := "cb234315408d9029"
}
@[vrml_obligation] theorem ensures_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (tmp_ : (vermilion.tuple_2 Int Int))
    (tmp__3 : Prop)
    (tmp__2 : (vermilion.tuple_2 Int Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_0_iteration_5 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → ((vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j) < n) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j) < n)))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len edges)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp_))
    (call_vec_index_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp_))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index edges i)
    (then_0_assume_11 : (vermilion.tuple_2.get_tuple_2__0 tmp_ ≥ n) → (tmp__3 ↔ True))
    (else_0_call_vec_index_1_ensures_0 : (¬ (vermilion.tuple_2.get_tuple_2__0 tmp_ ≥ n)) → Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__2))
    (else_0_call_vec_index_1_ensures_1 : (¬ (vermilion.tuple_2.get_tuple_2__0 tmp_ ≥ n)) → Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__2))
    (else_0_call_vec_index_1_ensures_2 : (¬ (vermilion.tuple_2.get_tuple_2__0 tmp_ ≥ n)) → (tmp__2 = Vermilion.Seq.index edges i))
    (else_0_assume_14 : (¬ (vermilion.tuple_2.get_tuple_2__0 tmp_ ≥ n)) → (tmp__3 ↔ (vermilion.tuple_2.get_tuple_2__1 tmp__2 ≥ n)))
    (branch_1 : tmp__3) :
    False ↔ reclaim_plan.edges_in_range_spec n edges := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.edges_in_range.ensures_3

-- vrml:begin reclaim_plan.edges_in_range.assert_4 52f863e174347a33
/--
Generated VC `reclaim_plan.edges_in_range.assert_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:255:9-255:15`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `4`
- Statement hash: `52f863e174347a33`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 255
  startColumn := 9
  endLine := 255
  endColumn := 15
  assertId := "4"
  functionName := "reclaim_plan.edges_in_range"
  kind := "assert"
  statementHash := "52f863e174347a33"
}
@[vrml_obligation] theorem assert_4
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (tmp_ : (vermilion.tuple_2 Int Int))
    (tmp__3 : Prop)
    (tmp__2 : (vermilion.tuple_2 Int Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_0_iteration_5 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → ((vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j) < n) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j) < n)))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len edges)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp_))
    (call_vec_index_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp_))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index edges i)
    (then_0_assume_11 : (vermilion.tuple_2.get_tuple_2__0 tmp_ ≥ n) → (tmp__3 ↔ True))
    (else_0_call_vec_index_1_ensures_0 : (¬ (vermilion.tuple_2.get_tuple_2__0 tmp_ ≥ n)) → Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__2))
    (else_0_call_vec_index_1_ensures_1 : (¬ (vermilion.tuple_2.get_tuple_2__0 tmp_ ≥ n)) → Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__2))
    (else_0_call_vec_index_1_ensures_2 : (¬ (vermilion.tuple_2.get_tuple_2__0 tmp_ ≥ n)) → (tmp__2 = Vermilion.Seq.index edges i))
    (else_0_assume_14 : (¬ (vermilion.tuple_2.get_tuple_2__0 tmp_ ≥ n)) → (tmp__3 ↔ (vermilion.tuple_2.get_tuple_2__1 tmp__2 ≥ n)))
    (then_1_assume_16 : tmp__3 → False)
    (then_1_assume_17 : tmp__3 → False) :
    Vermilion.inUnsignedRange 64 (i + 1) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.edges_in_range.assert_4

-- vrml:begin reclaim_plan.edges_in_range.invariant_preserve_0_0 16a8b4f988a45e83
/--
Generated VC `reclaim_plan.edges_in_range.invariant_preserve_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:248:19-248:40`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `16a8b4f988a45e83`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 248
  startColumn := 19
  endLine := 248
  endColumn := 40
  assertId := "0_0"
  functionName := "reclaim_plan.edges_in_range"
  kind := "invariant_preserve"
  statementHash := "16a8b4f988a45e83"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (tmp_ : (vermilion.tuple_2 Int Int))
    (tmp__3 : Prop)
    (tmp__2 : (vermilion.tuple_2 Int Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_0_iteration_5 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → ((vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j) < n) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j) < n)))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len edges)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp_))
    (call_vec_index_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp_))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index edges i)
    (then_0_assume_11 : (vermilion.tuple_2.get_tuple_2__0 tmp_ ≥ n) → (tmp__3 ↔ True))
    (else_0_call_vec_index_1_ensures_0 : (¬ (vermilion.tuple_2.get_tuple_2__0 tmp_ ≥ n)) → Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__2))
    (else_0_call_vec_index_1_ensures_1 : (¬ (vermilion.tuple_2.get_tuple_2__0 tmp_ ≥ n)) → Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__2))
    (else_0_call_vec_index_1_ensures_2 : (¬ (vermilion.tuple_2.get_tuple_2__0 tmp_ ≥ n)) → (tmp__2 = Vermilion.Seq.index edges i))
    (else_0_assume_14 : (¬ (vermilion.tuple_2.get_tuple_2__0 tmp_ ≥ n)) → (tmp__3 ↔ (vermilion.tuple_2.get_tuple_2__1 tmp__2 ≥ n)))
    (then_1_assume_16 : tmp__3 → False)
    (then_1_assume_17 : tmp__3 → False)
    (assert_4 : Vermilion.inUnsignedRange 64 (i + 1)) :
    (0 ≤ ((i + 1) % 18446744073709551616)) ∧ (((i + 1) % 18446744073709551616) ≤ Vermilion.Seq.len edges) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.edges_in_range.invariant_preserve_0_0

-- vrml:begin reclaim_plan.edges_in_range.invariant_preserve_0_1 00b587ce596dc45b
/--
Generated VC `reclaim_plan.edges_in_range.invariant_preserve_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:249:13-249:131`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `00b587ce596dc45b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 249
  startColumn := 13
  endLine := 249
  endColumn := 131
  assertId := "0_1"
  functionName := "reclaim_plan.edges_in_range"
  kind := "invariant_preserve"
  statementHash := "00b587ce596dc45b"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (tmp_ : (vermilion.tuple_2 Int Int))
    (tmp__3 : Prop)
    (tmp__2 : (vermilion.tuple_2 Int Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_0_iteration_5 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → ((vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j) < n) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j) < n)))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len edges)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp_))
    (call_vec_index_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp_))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index edges i)
    (then_0_assume_11 : (vermilion.tuple_2.get_tuple_2__0 tmp_ ≥ n) → (tmp__3 ↔ True))
    (else_0_call_vec_index_1_ensures_0 : (¬ (vermilion.tuple_2.get_tuple_2__0 tmp_ ≥ n)) → Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__2))
    (else_0_call_vec_index_1_ensures_1 : (¬ (vermilion.tuple_2.get_tuple_2__0 tmp_ ≥ n)) → Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__2))
    (else_0_call_vec_index_1_ensures_2 : (¬ (vermilion.tuple_2.get_tuple_2__0 tmp_ ≥ n)) → (tmp__2 = Vermilion.Seq.index edges i))
    (else_0_assume_14 : (¬ (vermilion.tuple_2.get_tuple_2__0 tmp_ ≥ n)) → (tmp__3 ↔ (vermilion.tuple_2.get_tuple_2__1 tmp__2 ≥ n)))
    (then_1_assume_16 : tmp__3 → False)
    (then_1_assume_17 : tmp__3 → False)
    (assert_4 : Vermilion.inUnsignedRange 64 (i + 1)) :
    (∀ (j : Int), (((0 ≤ j) ∧ (j < ((i + 1) % 18446744073709551616))) → ((vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j) < n) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j) < n)))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.edges_in_range.invariant_preserve_0_1

-- vrml:begin reclaim_plan.edges_in_range.assert_0_decreases b4a86fe0c8c2948e
/--
Generated VC `reclaim_plan.edges_in_range.assert_0_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:250:19-250:34`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `b4a86fe0c8c2948e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 250
  startColumn := 19
  endLine := 250
  endColumn := 34
  assertId := "0_decreases"
  functionName := "reclaim_plan.edges_in_range"
  kind := "assert"
  statementHash := "b4a86fe0c8c2948e"
}
@[vrml_obligation] theorem assert_0_decreases
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (tmp_ : (vermilion.tuple_2 Int Int))
    (tmp__3 : Prop)
    (tmp__2 : (vermilion.tuple_2 Int Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_0_iteration_5 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → ((vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j) < n) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j) < n)))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len edges)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp_))
    (call_vec_index_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp_))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index edges i)
    (then_0_assume_11 : (vermilion.tuple_2.get_tuple_2__0 tmp_ ≥ n) → (tmp__3 ↔ True))
    (else_0_call_vec_index_1_ensures_0 : (¬ (vermilion.tuple_2.get_tuple_2__0 tmp_ ≥ n)) → Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__2))
    (else_0_call_vec_index_1_ensures_1 : (¬ (vermilion.tuple_2.get_tuple_2__0 tmp_ ≥ n)) → Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__2))
    (else_0_call_vec_index_1_ensures_2 : (¬ (vermilion.tuple_2.get_tuple_2__0 tmp_ ≥ n)) → (tmp__2 = Vermilion.Seq.index edges i))
    (else_0_assume_14 : (¬ (vermilion.tuple_2.get_tuple_2__0 tmp_ ≥ n)) → (tmp__3 ↔ (vermilion.tuple_2.get_tuple_2__1 tmp__2 ≥ n)))
    (then_1_assume_16 : tmp__3 → False)
    (then_1_assume_17 : tmp__3 → False)
    (assert_4 : Vermilion.inUnsignedRange 64 (i + 1)) :
    ((0 ≤ (Vermilion.Seq.len edges - ((i + 1) % 18446744073709551616))) ∧ ((Vermilion.Seq.len edges - ((i + 1) % 18446744073709551616)) < (Vermilion.Seq.len edges - i))) ∨ (((Vermilion.Seq.len edges - ((i + 1) % 18446744073709551616)) = (Vermilion.Seq.len edges - i)) ∧ False) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.edges_in_range.assert_0_decreases

-- vrml:begin reclaim_plan.edges_in_range.ensures_5 d0f3dde0818a7f27
/--
Generated VC `reclaim_plan.edges_in_range.ensures_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:244:13-244:56`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `5`
- Statement hash: `d0f3dde0818a7f27`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def ensures_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 244
  startColumn := 13
  endLine := 244
  endColumn := 56
  assertId := "5"
  functionName := "reclaim_plan.edges_in_range"
  kind := "ensures"
  statementHash := "d0f3dde0818a7f27"
}
@[vrml_obligation] theorem ensures_5
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 i)
    (loop_0_exit_1 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_0_exit_2 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → ((vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j) < n) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j) < n)))))
    (loop_0_exit_3 : (¬ (i < Vermilion.Seq.len edges))) :
    True ↔ reclaim_plan.edges_in_range_spec n edges := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.edges_in_range.ensures_5

end reclaim_plan.edges_in_range

