import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.protected_closed

-- vrml:begin reclaim_plan.protected_closed.invariant_entry_0_0 85ef240f43ab15a1
/--
Generated VC `reclaim_plan.protected_closed.invariant_entry_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:266:19-266:40`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `85ef240f43ab15a1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 266
  startColumn := 19
  endLine := 266
  endColumn := 40
  assertId := "0_0"
  functionName := "reclaim_plan.protected_closed"
  kind := "invariant_entry"
  statementHash := "85ef240f43ab15a1"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (reclaimable : (Vermilion.Seq Prop))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (requires_3 : reclaim_plan.edges_in_range_spec (Vermilion.Seq.len reclaimable) edges) :
    (0 ≤ 0) ∧ (0 ≤ Vermilion.Seq.len edges) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.protected_closed.invariant_entry_0_0

-- vrml:begin reclaim_plan.protected_closed.invariant_entry_0_1 9c88755b0ead4e63
/--
Generated VC `reclaim_plan.protected_closed.invariant_entry_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:266:42-266:96`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `9c88755b0ead4e63`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 266
  startColumn := 42
  endLine := 266
  endColumn := 96
  assertId := "0_1"
  functionName := "reclaim_plan.protected_closed"
  kind := "invariant_entry"
  statementHash := "9c88755b0ead4e63"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (reclaimable : (Vermilion.Seq Prop))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (requires_3 : reclaim_plan.edges_in_range_spec (Vermilion.Seq.len reclaimable) edges) :
    reclaim_plan.edges_in_range_spec (Vermilion.Seq.len reclaimable) edges := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.protected_closed.invariant_entry_0_1

-- vrml:begin reclaim_plan.protected_closed.invariant_entry_0_2 7faea2a4a41d968a
/--
Generated VC `reclaim_plan.protected_closed.invariant_entry_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:267:13-268:90`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_2`
- Statement hash: `7faea2a4a41d968a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩
-/
def invariant_entry_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 267
  startColumn := 13
  endLine := 268
  endColumn := 90
  assertId := "0_2"
  functionName := "reclaim_plan.protected_closed"
  kind := "invariant_entry"
  statementHash := "7faea2a4a41d968a"
}
@[vrml_obligation] theorem invariant_entry_0_2
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (reclaimable : (Vermilion.Seq Prop))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (requires_3 : reclaim_plan.edges_in_range_spec (Vermilion.Seq.len reclaimable) edges) :
    (∀ (j : Int), (((0 ≤ j) ∧ (j < 0)) → ((¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j))) → (¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j)))))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.protected_closed.invariant_entry_0_2

-- vrml:begin reclaim_plan.protected_closed.call_requires_1 30fc8e95e998660d
/--
Generated VC `reclaim_plan.protected_closed.call_requires_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:271:22-271:30`
- Rust/SST construct: call vec_index
- AssertId: `1`
- Statement hash: `30fc8e95e998660d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def call_requires_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 271
  startColumn := 22
  endLine := 271
  endColumn := 30
  assertId := "1"
  functionName := "reclaim_plan.protected_closed"
  kind := "call_requires"
  statementHash := "30fc8e95e998660d"
}
@[vrml_obligation] theorem call_requires_1
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (reclaimable : (Vermilion.Seq Prop))
    (i : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_0_iteration_5 : reclaim_plan.edges_in_range_spec (Vermilion.Seq.len reclaimable) edges)
    (loop_0_iteration_6 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → ((¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j))) → (¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j)))))))
    (loop_0_iteration_7 : i < Vermilion.Seq.len edges) :
    i < Vermilion.Seq.len edges := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.protected_closed.call_requires_1

-- vrml:begin reclaim_plan.protected_closed.call_requires_2 6cd8ce98c1f9f013
/--
Generated VC `reclaim_plan.protected_closed.call_requires_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:272:13-272:27`
- Rust/SST construct: call vec_index
- AssertId: `2`
- Statement hash: `6cd8ce98c1f9f013`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def call_requires_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 272
  startColumn := 13
  endLine := 272
  endColumn := 27
  assertId := "2"
  functionName := "reclaim_plan.protected_closed"
  kind := "call_requires"
  statementHash := "6cd8ce98c1f9f013"
}
@[vrml_obligation] theorem call_requires_2
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (reclaimable : (Vermilion.Seq Prop))
    (i : Int)
    (tmp_ : (vermilion.tuple_2 Int Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_0_iteration_5 : reclaim_plan.edges_in_range_spec (Vermilion.Seq.len reclaimable) edges)
    (loop_0_iteration_6 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → ((¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j))) → (¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j)))))))
    (loop_0_iteration_7 : i < Vermilion.Seq.len edges)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp_))
    (call_vec_index_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp_))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index edges i) :
    vermilion.tuple_2.get_tuple_2__0 tmp_ < Vermilion.Seq.len reclaimable := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.protected_closed.call_requires_2

-- vrml:begin reclaim_plan.protected_closed.call_requires_3 07f2533f1ca6d419
/--
Generated VC `reclaim_plan.protected_closed.call_requires_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:272:31-272:45`
- Rust/SST construct: call vec_index
- AssertId: `3`
- Statement hash: `07f2533f1ca6d419`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def call_requires_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 272
  startColumn := 31
  endLine := 272
  endColumn := 45
  assertId := "3"
  functionName := "reclaim_plan.protected_closed"
  kind := "call_requires"
  statementHash := "07f2533f1ca6d419"
}
@[vrml_obligation] theorem call_requires_3
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (reclaimable : (Vermilion.Seq Prop))
    (i : Int)
    (tmp_ : (vermilion.tuple_2 Int Int))
    (tmp__2 : Prop)
    (tmp__4 : Prop)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_0_iteration_5 : reclaim_plan.edges_in_range_spec (Vermilion.Seq.len reclaimable) edges)
    (loop_0_iteration_6 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → ((¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j))) → (¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j)))))))
    (loop_0_iteration_7 : i < Vermilion.Seq.len edges)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp_))
    (call_vec_index_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp_))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index edges i)
    (call_vec_index_1_ensures_0 : tmp__2 ↔ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__0 tmp_))
    (branch_0 : (¬ tmp__2)) :
    vermilion.tuple_2.get_tuple_2__1 tmp_ < Vermilion.Seq.len reclaimable := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.protected_closed.call_requires_3

-- vrml:begin reclaim_plan.protected_closed.ensures_4 6cae35b788a1e695
/--
Generated VC `reclaim_plan.protected_closed.ensures_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:262:13-262:62`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `4`
- Statement hash: `6cae35b788a1e695`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def ensures_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 262
  startColumn := 13
  endLine := 262
  endColumn := 62
  assertId := "4"
  functionName := "reclaim_plan.protected_closed"
  kind := "ensures"
  statementHash := "6cae35b788a1e695"
}
@[vrml_obligation] theorem ensures_4
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (reclaimable : (Vermilion.Seq Prop))
    (i : Int)
    (tmp_ : (vermilion.tuple_2 Int Int))
    (tmp__2 : Prop)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_0_iteration_5 : reclaim_plan.edges_in_range_spec (Vermilion.Seq.len reclaimable) edges)
    (loop_0_iteration_6 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → ((¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j))) → (¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j)))))))
    (loop_0_iteration_7 : i < Vermilion.Seq.len edges)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp_))
    (call_vec_index_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp_))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index edges i)
    (call_vec_index_1_ensures_0 : tmp__2 ↔ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__0 tmp_))
    (then_0_call_vec_index_2_ensures_0 : (¬ tmp__2) → (tmp__3 ↔ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__1 tmp_)))
    (then_0_assume_14 : (¬ tmp__2) → (tmp__4 ↔ tmp__3))
    (else_0_assume_13 : (¬ (¬ tmp__2)) → (tmp__4 ↔ False))
    (branch_1 : tmp__4) :
    False ↔ reclaim_plan.protected_closed_spec edges reclaimable := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.protected_closed.ensures_4

-- vrml:begin reclaim_plan.protected_closed.assert_5 f78c69bd0cf0cc6c
/--
Generated VC `reclaim_plan.protected_closed.assert_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:275:9-275:15`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `5`
- Statement hash: `f78c69bd0cf0cc6c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 275
  startColumn := 9
  endLine := 275
  endColumn := 15
  assertId := "5"
  functionName := "reclaim_plan.protected_closed"
  kind := "assert"
  statementHash := "f78c69bd0cf0cc6c"
}
@[vrml_obligation] theorem assert_5
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (reclaimable : (Vermilion.Seq Prop))
    (i : Int)
    (tmp_ : (vermilion.tuple_2 Int Int))
    (tmp__2 : Prop)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_0_iteration_5 : reclaim_plan.edges_in_range_spec (Vermilion.Seq.len reclaimable) edges)
    (loop_0_iteration_6 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → ((¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j))) → (¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j)))))))
    (loop_0_iteration_7 : i < Vermilion.Seq.len edges)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp_))
    (call_vec_index_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp_))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index edges i)
    (call_vec_index_1_ensures_0 : tmp__2 ↔ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__0 tmp_))
    (then_0_call_vec_index_2_ensures_0 : (¬ tmp__2) → (tmp__3 ↔ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__1 tmp_)))
    (then_0_assume_14 : (¬ tmp__2) → (tmp__4 ↔ tmp__3))
    (else_0_assume_13 : (¬ (¬ tmp__2)) → (tmp__4 ↔ False))
    (then_1_assume_16 : tmp__4 → False)
    (then_1_assume_17 : tmp__4 → False) :
    Vermilion.inUnsignedRange 64 (i + 1) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.protected_closed.assert_5

-- vrml:begin reclaim_plan.protected_closed.invariant_preserve_0_0 b636b79e61247281
/--
Generated VC `reclaim_plan.protected_closed.invariant_preserve_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:266:19-266:40`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `b636b79e61247281`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 266
  startColumn := 19
  endLine := 266
  endColumn := 40
  assertId := "0_0"
  functionName := "reclaim_plan.protected_closed"
  kind := "invariant_preserve"
  statementHash := "b636b79e61247281"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (reclaimable : (Vermilion.Seq Prop))
    (i : Int)
    (tmp_ : (vermilion.tuple_2 Int Int))
    (tmp__2 : Prop)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_0_iteration_5 : reclaim_plan.edges_in_range_spec (Vermilion.Seq.len reclaimable) edges)
    (loop_0_iteration_6 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → ((¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j))) → (¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j)))))))
    (loop_0_iteration_7 : i < Vermilion.Seq.len edges)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp_))
    (call_vec_index_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp_))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index edges i)
    (call_vec_index_1_ensures_0 : tmp__2 ↔ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__0 tmp_))
    (then_0_call_vec_index_2_ensures_0 : (¬ tmp__2) → (tmp__3 ↔ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__1 tmp_)))
    (then_0_assume_14 : (¬ tmp__2) → (tmp__4 ↔ tmp__3))
    (else_0_assume_13 : (¬ (¬ tmp__2)) → (tmp__4 ↔ False))
    (then_1_assume_16 : tmp__4 → False)
    (then_1_assume_17 : tmp__4 → False)
    (assert_5 : Vermilion.inUnsignedRange 64 (i + 1)) :
    (0 ≤ ((i + 1) % 18446744073709551616)) ∧ (((i + 1) % 18446744073709551616) ≤ Vermilion.Seq.len edges) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.protected_closed.invariant_preserve_0_0

-- vrml:begin reclaim_plan.protected_closed.invariant_preserve_0_1 cb92ffb2116dde33
/--
Generated VC `reclaim_plan.protected_closed.invariant_preserve_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:266:42-266:96`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `cb92ffb2116dde33`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 266
  startColumn := 42
  endLine := 266
  endColumn := 96
  assertId := "0_1"
  functionName := "reclaim_plan.protected_closed"
  kind := "invariant_preserve"
  statementHash := "cb92ffb2116dde33"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (reclaimable : (Vermilion.Seq Prop))
    (i : Int)
    (tmp_ : (vermilion.tuple_2 Int Int))
    (tmp__2 : Prop)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_0_iteration_5 : reclaim_plan.edges_in_range_spec (Vermilion.Seq.len reclaimable) edges)
    (loop_0_iteration_6 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → ((¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j))) → (¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j)))))))
    (loop_0_iteration_7 : i < Vermilion.Seq.len edges)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp_))
    (call_vec_index_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp_))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index edges i)
    (call_vec_index_1_ensures_0 : tmp__2 ↔ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__0 tmp_))
    (then_0_call_vec_index_2_ensures_0 : (¬ tmp__2) → (tmp__3 ↔ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__1 tmp_)))
    (then_0_assume_14 : (¬ tmp__2) → (tmp__4 ↔ tmp__3))
    (else_0_assume_13 : (¬ (¬ tmp__2)) → (tmp__4 ↔ False))
    (then_1_assume_16 : tmp__4 → False)
    (then_1_assume_17 : tmp__4 → False)
    (assert_5 : Vermilion.inUnsignedRange 64 (i + 1)) :
    reclaim_plan.edges_in_range_spec (Vermilion.Seq.len reclaimable) edges := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.protected_closed.invariant_preserve_0_1

-- vrml:begin reclaim_plan.protected_closed.invariant_preserve_0_2 01e992daaa1dd556
/--
Generated VC `reclaim_plan.protected_closed.invariant_preserve_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:267:13-268:90`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_2`
- Statement hash: `01e992daaa1dd556`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def invariant_preserve_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 267
  startColumn := 13
  endLine := 268
  endColumn := 90
  assertId := "0_2"
  functionName := "reclaim_plan.protected_closed"
  kind := "invariant_preserve"
  statementHash := "01e992daaa1dd556"
}
@[vrml_obligation] theorem invariant_preserve_0_2
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (reclaimable : (Vermilion.Seq Prop))
    (i : Int)
    (tmp_ : (vermilion.tuple_2 Int Int))
    (tmp__2 : Prop)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_0_iteration_5 : reclaim_plan.edges_in_range_spec (Vermilion.Seq.len reclaimable) edges)
    (loop_0_iteration_6 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → ((¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j))) → (¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j)))))))
    (loop_0_iteration_7 : i < Vermilion.Seq.len edges)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp_))
    (call_vec_index_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp_))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index edges i)
    (call_vec_index_1_ensures_0 : tmp__2 ↔ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__0 tmp_))
    (then_0_call_vec_index_2_ensures_0 : (¬ tmp__2) → (tmp__3 ↔ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__1 tmp_)))
    (then_0_assume_14 : (¬ tmp__2) → (tmp__4 ↔ tmp__3))
    (else_0_assume_13 : (¬ (¬ tmp__2)) → (tmp__4 ↔ False))
    (then_1_assume_16 : tmp__4 → False)
    (then_1_assume_17 : tmp__4 → False)
    (assert_5 : Vermilion.inUnsignedRange 64 (i + 1)) :
    (∀ (j : Int), (((0 ≤ j) ∧ (j < ((i + 1) % 18446744073709551616))) → ((¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j))) → (¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j)))))) := by
  intro j hj
  obtain ⟨hj0, hj1⟩ := hj
  have hr : (i + 1) % 18446744073709551616 = i + 1 := by
    unfold Vermilion.inUnsignedRange at assert_5
    norm_num at assert_5
    omega
  rw [hr] at hj1
  by_cases hji : j < i
  · exact loop_0_iteration_6 j ⟨hj0, hji⟩
  · have hj : j = i := by omega
    rw [hj, ← call_vec_index_ensures_2]
    intro hu hv
    have h2 : ¬ tmp__2 := fun h => hu (call_vec_index_1_ensures_0.mp h)
    have h3 : tmp__3 := (then_0_call_vec_index_2_ensures_0 h2).mpr hv
    exact then_1_assume_16 ((then_0_assume_14 h2).mpr h3)
-- vrml:end reclaim_plan.protected_closed.invariant_preserve_0_2

-- vrml:begin reclaim_plan.protected_closed.assert_0_decreases f75b60cb7b0cb300
/--
Generated VC `reclaim_plan.protected_closed.assert_0_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:269:19-269:34`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `f75b60cb7b0cb300`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 269
  startColumn := 19
  endLine := 269
  endColumn := 34
  assertId := "0_decreases"
  functionName := "reclaim_plan.protected_closed"
  kind := "assert"
  statementHash := "f75b60cb7b0cb300"
}
@[vrml_obligation] theorem assert_0_decreases
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (reclaimable : (Vermilion.Seq Prop))
    (i : Int)
    (tmp_ : (vermilion.tuple_2 Int Int))
    (tmp__2 : Prop)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_0_iteration_5 : reclaim_plan.edges_in_range_spec (Vermilion.Seq.len reclaimable) edges)
    (loop_0_iteration_6 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → ((¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j))) → (¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j)))))))
    (loop_0_iteration_7 : i < Vermilion.Seq.len edges)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp_))
    (call_vec_index_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp_))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index edges i)
    (call_vec_index_1_ensures_0 : tmp__2 ↔ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__0 tmp_))
    (then_0_call_vec_index_2_ensures_0 : (¬ tmp__2) → (tmp__3 ↔ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__1 tmp_)))
    (then_0_assume_14 : (¬ tmp__2) → (tmp__4 ↔ tmp__3))
    (else_0_assume_13 : (¬ (¬ tmp__2)) → (tmp__4 ↔ False))
    (then_1_assume_16 : tmp__4 → False)
    (then_1_assume_17 : tmp__4 → False)
    (assert_5 : Vermilion.inUnsignedRange 64 (i + 1)) :
    ((0 ≤ (Vermilion.Seq.len edges - ((i + 1) % 18446744073709551616))) ∧ ((Vermilion.Seq.len edges - ((i + 1) % 18446744073709551616)) < (Vermilion.Seq.len edges - i))) ∨ (((Vermilion.Seq.len edges - ((i + 1) % 18446744073709551616)) = (Vermilion.Seq.len edges - i)) ∧ False) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.protected_closed.assert_0_decreases

-- vrml:begin reclaim_plan.protected_closed.ensures_6 04f41be37ac1a908
/--
Generated VC `reclaim_plan.protected_closed.ensures_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:262:13-262:62`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `6`
- Statement hash: `04f41be37ac1a908`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def ensures_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 262
  startColumn := 13
  endLine := 262
  endColumn := 62
  assertId := "6"
  functionName := "reclaim_plan.protected_closed"
  kind := "ensures"
  statementHash := "04f41be37ac1a908"
}
@[vrml_obligation] theorem ensures_6
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (reclaimable : (Vermilion.Seq Prop))
    (i : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (requires_3 : reclaim_plan.edges_in_range_spec (Vermilion.Seq.len reclaimable) edges)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 i)
    (loop_0_exit_1 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_0_exit_2 : reclaim_plan.edges_in_range_spec (Vermilion.Seq.len reclaimable) edges)
    (loop_0_exit_3 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → ((¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j))) → (¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j)))))))
    (loop_0_exit_4 : (¬ (i < Vermilion.Seq.len edges))) :
    True ↔ reclaim_plan.protected_closed_spec edges reclaimable := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.protected_closed.ensures_6

end reclaim_plan.protected_closed

