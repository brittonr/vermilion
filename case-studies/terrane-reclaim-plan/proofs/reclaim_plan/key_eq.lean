import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.key_eq

-- vrml:begin reclaim_plan.key_eq.ensures_2 c37076d440e69895
/--
Generated VC `reclaim_plan.key_eq.ensures_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1030:13-1030:29`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2`
- Statement hash: `c37076d440e69895`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def ensures_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1030
  startColumn := 13
  endLine := 1030
  endColumn := 29
  assertId := "2"
  functionName := "reclaim_plan.key_eq"
  kind := "ensures"
  statementHash := "c37076d440e69895"
}
@[vrml_obligation] theorem ensures_2
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (assume_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (assume_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (branch_0 : Vermilion.Seq.len a ≠ Vermilion.Seq.len b) :
    False ↔ (a = b) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_eq.ensures_2

-- vrml:begin reclaim_plan.key_eq.invariant_entry_0_0 b76d05596c9e0e01
/--
Generated VC `reclaim_plan.key_eq.invariant_entry_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1037:19-1037:36`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `b76d05596c9e0e01`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1037
  startColumn := 19
  endLine := 1037
  endColumn := 36
  assertId := "0_0"
  functionName := "reclaim_plan.key_eq"
  kind := "invariant_entry"
  statementHash := "b76d05596c9e0e01"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (assume_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (assume_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (then_0_assume_7 : (Vermilion.Seq.len a ≠ Vermilion.Seq.len b) → False)
    (then_0_assume_8 : (Vermilion.Seq.len a ≠ Vermilion.Seq.len b) → False) :
    (0 ≤ 0) ∧ (0 ≤ Vermilion.Seq.len a) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_eq.invariant_entry_0_0

-- vrml:begin reclaim_plan.key_eq.invariant_entry_0_1 2015e539d7b5d20a
/--
Generated VC `reclaim_plan.key_eq.invariant_entry_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1037:38-1037:56`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `2015e539d7b5d20a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1037
  startColumn := 38
  endLine := 1037
  endColumn := 56
  assertId := "0_1"
  functionName := "reclaim_plan.key_eq"
  kind := "invariant_entry"
  statementHash := "2015e539d7b5d20a"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (assume_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (assume_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (then_0_assume_7 : (Vermilion.Seq.len a ≠ Vermilion.Seq.len b) → False)
    (then_0_assume_8 : (Vermilion.Seq.len a ≠ Vermilion.Seq.len b) → False) :
    Vermilion.Seq.len a = Vermilion.Seq.len b := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_eq.invariant_entry_0_1

-- vrml:begin reclaim_plan.key_eq.invariant_entry_0_2 da0d64fe8a177d55
/--
Generated VC `reclaim_plan.key_eq.invariant_entry_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1037:58-1037:90`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_2`
- Statement hash: `da0d64fe8a177d55`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def invariant_entry_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1037
  startColumn := 58
  endLine := 1037
  endColumn := 90
  assertId := "0_2"
  functionName := "reclaim_plan.key_eq"
  kind := "invariant_entry"
  statementHash := "da0d64fe8a177d55"
}
@[vrml_obligation] theorem invariant_entry_0_2
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (assume_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (assume_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (then_0_assume_7 : (Vermilion.Seq.len a ≠ Vermilion.Seq.len b) → False)
    (then_0_assume_8 : (Vermilion.Seq.len a ≠ Vermilion.Seq.len b) → False) :
    reclaim_plan.prefix_eq_spec a b 0 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_eq.invariant_entry_0_2

-- vrml:begin reclaim_plan.key_eq.call_requires_4 c4026c2f52cb813a
/--
Generated VC `reclaim_plan.key_eq.call_requires_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1040:12-1040:16`
- Rust/SST construct: call vec_index
- AssertId: `4`
- Statement hash: `c4026c2f52cb813a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def call_requires_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1040
  startColumn := 12
  endLine := 1040
  endColumn := 16
  assertId := "4"
  functionName := "reclaim_plan.key_eq"
  kind := "call_requires"
  statementHash := "c4026c2f52cb813a"
}
@[vrml_obligation] theorem call_requires_4
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (i : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_7 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len a))
    (loop_0_iteration_8 : Vermilion.Seq.len a = Vermilion.Seq.len b)
    (loop_0_iteration_9 : reclaim_plan.prefix_eq_spec a b i)
    (loop_0_iteration_10 : i < Vermilion.Seq.len a) :
    i < Vermilion.Seq.len a := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_eq.call_requires_4

-- vrml:begin reclaim_plan.key_eq.call_requires_5 1de59199254d62f7
/--
Generated VC `reclaim_plan.key_eq.call_requires_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1040:20-1040:24`
- Rust/SST construct: call vec_index
- AssertId: `5`
- Statement hash: `1de59199254d62f7`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def call_requires_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1040
  startColumn := 20
  endLine := 1040
  endColumn := 24
  assertId := "5"
  functionName := "reclaim_plan.key_eq"
  kind := "call_requires"
  statementHash := "1de59199254d62f7"
}
@[vrml_obligation] theorem call_requires_5
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (i : Int)
    (tmp_ : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_7 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len a))
    (loop_0_iteration_8 : Vermilion.Seq.len a = Vermilion.Seq.len b)
    (loop_0_iteration_9 : reclaim_plan.prefix_eq_spec a b i)
    (loop_0_iteration_10 : i < Vermilion.Seq.len a)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 8 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index a i) :
    i < Vermilion.Seq.len b := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_eq.call_requires_5

-- vrml:begin reclaim_plan.key_eq.assert_6 46d2c80a5774b3e4
/--
Generated VC `reclaim_plan.key_eq.assert_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1041:20-1041:48`
- Rust/SST construct: Rust source assertion
- AssertId: `6`
- Statement hash: `46d2c80a5774b3e4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def assert_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1041
  startColumn := 20
  endLine := 1041
  endColumn := 48
  assertId := "6"
  functionName := "reclaim_plan.key_eq"
  kind := "assert"
  statementHash := "46d2c80a5774b3e4"
}
@[vrml_obligation] theorem assert_6
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (i : Int)
    (tmp_ : Int)
    (tmp__2 : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_7 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len a))
    (loop_0_iteration_8 : Vermilion.Seq.len a = Vermilion.Seq.len b)
    (loop_0_iteration_9 : reclaim_plan.prefix_eq_spec a b i)
    (loop_0_iteration_10 : i < Vermilion.Seq.len a)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 8 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index a i)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 8 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index b i)
    (branch_1 : tmp_ ≠ tmp__2) :
    (¬ (Vermilion.Seq.index a i = Vermilion.Seq.index b i)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_eq.assert_6

-- vrml:begin reclaim_plan.key_eq.ensures_7 25b41e383e8c7e0c
/--
Generated VC `reclaim_plan.key_eq.ensures_7`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1030:13-1030:29`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `7`
- Statement hash: `25b41e383e8c7e0c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def ensures_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1030
  startColumn := 13
  endLine := 1030
  endColumn := 29
  assertId := "7"
  functionName := "reclaim_plan.key_eq"
  kind := "ensures"
  statementHash := "25b41e383e8c7e0c"
}
@[vrml_obligation] theorem ensures_7
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (i : Int)
    (tmp_ : Int)
    (tmp__2 : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_7 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len a))
    (loop_0_iteration_8 : Vermilion.Seq.len a = Vermilion.Seq.len b)
    (loop_0_iteration_9 : reclaim_plan.prefix_eq_spec a b i)
    (loop_0_iteration_10 : i < Vermilion.Seq.len a)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 8 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index a i)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 8 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index b i)
    (branch_1 : tmp_ ≠ tmp__2)
    (assert_6 : (¬ (Vermilion.Seq.index a i = Vermilion.Seq.index b i))) :
    False ↔ (a = b) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_eq.ensures_7

-- vrml:begin reclaim_plan.key_eq.assert_8 2321ab8869a3650f
/--
Generated VC `reclaim_plan.key_eq.assert_8`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1044:13-1044:18`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `8`
- Statement hash: `2321ab8869a3650f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def assert_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1044
  startColumn := 13
  endLine := 1044
  endColumn := 18
  assertId := "8"
  functionName := "reclaim_plan.key_eq"
  kind := "assert"
  statementHash := "2321ab8869a3650f"
}
@[vrml_obligation] theorem assert_8
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (i : Int)
    (tmp_ : Int)
    (tmp__2 : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_7 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len a))
    (loop_0_iteration_8 : Vermilion.Seq.len a = Vermilion.Seq.len b)
    (loop_0_iteration_9 : reclaim_plan.prefix_eq_spec a b i)
    (loop_0_iteration_10 : i < Vermilion.Seq.len a)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 8 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index a i)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 8 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index b i)
    (then_1_assert_6 : (tmp_ ≠ tmp__2) → (¬ (Vermilion.Seq.index a i = Vermilion.Seq.index b i)))
    (then_1_assume_17 : (tmp_ ≠ tmp__2) → False)
    (then_1_assume_18 : (tmp_ ≠ tmp__2) → False) :
    Vermilion.inUnsignedRange 64 (i + 1) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_eq.assert_8

-- vrml:begin reclaim_plan.key_eq.invariant_preserve_0_0 18a44d302dfe7f58
/--
Generated VC `reclaim_plan.key_eq.invariant_preserve_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1037:19-1037:36`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `18a44d302dfe7f58`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1037
  startColumn := 19
  endLine := 1037
  endColumn := 36
  assertId := "0_0"
  functionName := "reclaim_plan.key_eq"
  kind := "invariant_preserve"
  statementHash := "18a44d302dfe7f58"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (i : Int)
    (tmp_ : Int)
    (tmp__2 : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_7 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len a))
    (loop_0_iteration_8 : Vermilion.Seq.len a = Vermilion.Seq.len b)
    (loop_0_iteration_9 : reclaim_plan.prefix_eq_spec a b i)
    (loop_0_iteration_10 : i < Vermilion.Seq.len a)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 8 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index a i)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 8 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index b i)
    (then_1_assert_6 : (tmp_ ≠ tmp__2) → (¬ (Vermilion.Seq.index a i = Vermilion.Seq.index b i)))
    (then_1_assume_17 : (tmp_ ≠ tmp__2) → False)
    (then_1_assume_18 : (tmp_ ≠ tmp__2) → False)
    (assert_8 : Vermilion.inUnsignedRange 64 (i + 1)) :
    (0 ≤ ((i + 1) % 18446744073709551616)) ∧ (((i + 1) % 18446744073709551616) ≤ Vermilion.Seq.len a) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_eq.invariant_preserve_0_0

-- vrml:begin reclaim_plan.key_eq.invariant_preserve_0_1 a1574205d2ba874b
/--
Generated VC `reclaim_plan.key_eq.invariant_preserve_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1037:38-1037:56`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `a1574205d2ba874b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1037
  startColumn := 38
  endLine := 1037
  endColumn := 56
  assertId := "0_1"
  functionName := "reclaim_plan.key_eq"
  kind := "invariant_preserve"
  statementHash := "a1574205d2ba874b"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (i : Int)
    (tmp_ : Int)
    (tmp__2 : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_7 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len a))
    (loop_0_iteration_8 : Vermilion.Seq.len a = Vermilion.Seq.len b)
    (loop_0_iteration_9 : reclaim_plan.prefix_eq_spec a b i)
    (loop_0_iteration_10 : i < Vermilion.Seq.len a)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 8 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index a i)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 8 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index b i)
    (then_1_assert_6 : (tmp_ ≠ tmp__2) → (¬ (Vermilion.Seq.index a i = Vermilion.Seq.index b i)))
    (then_1_assume_17 : (tmp_ ≠ tmp__2) → False)
    (then_1_assume_18 : (tmp_ ≠ tmp__2) → False)
    (assert_8 : Vermilion.inUnsignedRange 64 (i + 1)) :
    Vermilion.Seq.len a = Vermilion.Seq.len b := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_eq.invariant_preserve_0_1

-- vrml:begin reclaim_plan.key_eq.invariant_preserve_0_2 1450a17b4165a944
/--
Generated VC `reclaim_plan.key_eq.invariant_preserve_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1037:58-1037:90`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_2`
- Statement hash: `1450a17b4165a944`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def invariant_preserve_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1037
  startColumn := 58
  endLine := 1037
  endColumn := 90
  assertId := "0_2"
  functionName := "reclaim_plan.key_eq"
  kind := "invariant_preserve"
  statementHash := "1450a17b4165a944"
}
@[vrml_obligation] theorem invariant_preserve_0_2
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (i : Int)
    (tmp_ : Int)
    (tmp__2 : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_7 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len a))
    (loop_0_iteration_8 : Vermilion.Seq.len a = Vermilion.Seq.len b)
    (loop_0_iteration_9 : reclaim_plan.prefix_eq_spec a b i)
    (loop_0_iteration_10 : i < Vermilion.Seq.len a)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 8 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index a i)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 8 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index b i)
    (then_1_assert_6 : (tmp_ ≠ tmp__2) → (¬ (Vermilion.Seq.index a i = Vermilion.Seq.index b i)))
    (then_1_assume_17 : (tmp_ ≠ tmp__2) → False)
    (then_1_assume_18 : (tmp_ ≠ tmp__2) → False)
    (assert_8 : Vermilion.inUnsignedRange 64 (i + 1)) :
    reclaim_plan.prefix_eq_spec a b ((i + 1) % 18446744073709551616) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.key_eq.invariant_preserve_0_2

-- vrml:begin reclaim_plan.key_eq.assert_0_decreases b2b971e70494e97b
/--
Generated VC `reclaim_plan.key_eq.assert_0_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1038:19-1038:30`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `b2b971e70494e97b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1038
  startColumn := 19
  endLine := 1038
  endColumn := 30
  assertId := "0_decreases"
  functionName := "reclaim_plan.key_eq"
  kind := "assert"
  statementHash := "b2b971e70494e97b"
}
@[vrml_obligation] theorem assert_0_decreases
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (i : Int)
    (tmp_ : Int)
    (tmp__2 : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_7 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len a))
    (loop_0_iteration_8 : Vermilion.Seq.len a = Vermilion.Seq.len b)
    (loop_0_iteration_9 : reclaim_plan.prefix_eq_spec a b i)
    (loop_0_iteration_10 : i < Vermilion.Seq.len a)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 8 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index a i)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 8 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index b i)
    (then_1_assert_6 : (tmp_ ≠ tmp__2) → (¬ (Vermilion.Seq.index a i = Vermilion.Seq.index b i)))
    (then_1_assume_17 : (tmp_ ≠ tmp__2) → False)
    (then_1_assume_18 : (tmp_ ≠ tmp__2) → False)
    (assert_8 : Vermilion.inUnsignedRange 64 (i + 1)) :
    ((0 ≤ (Vermilion.Seq.len a - ((i + 1) % 18446744073709551616))) ∧ ((Vermilion.Seq.len a - ((i + 1) % 18446744073709551616)) < (Vermilion.Seq.len a - i))) ∨ (((Vermilion.Seq.len a - ((i + 1) % 18446744073709551616)) = (Vermilion.Seq.len a - i)) ∧ False) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_eq.assert_0_decreases

-- vrml:begin reclaim_plan.key_eq.assert_9 f455f34853cb1c4a
/--
Generated VC `reclaim_plan.key_eq.assert_9`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1046:12-1046:21`
- Rust/SST construct: Rust source assertion
- AssertId: `9`
- Statement hash: `f455f34853cb1c4a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def assert_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1046
  startColumn := 12
  endLine := 1046
  endColumn := 21
  assertId := "9"
  functionName := "reclaim_plan.key_eq"
  kind := "assert"
  statementHash := "f455f34853cb1c4a"
}
@[vrml_obligation] theorem assert_9
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (i : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (assume_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (assume_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (then_0_assume_7 : (Vermilion.Seq.len a ≠ Vermilion.Seq.len b) → False)
    (then_0_assume_8 : (Vermilion.Seq.len a ≠ Vermilion.Seq.len b) → False)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 i)
    (loop_0_exit_1 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len a))
    (loop_0_exit_2 : Vermilion.Seq.len a = Vermilion.Seq.len b)
    (loop_0_exit_3 : reclaim_plan.prefix_eq_spec a b i)
    (loop_0_exit_4 : (¬ (i < Vermilion.Seq.len a))) :
    a = b := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.key_eq.assert_9

-- vrml:begin reclaim_plan.key_eq.ensures_10 24a0cc908724ff02
/--
Generated VC `reclaim_plan.key_eq.ensures_10`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1030:13-1030:29`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `10`
- Statement hash: `24a0cc908724ff02`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def ensures_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1030
  startColumn := 13
  endLine := 1030
  endColumn := 29
  assertId := "10"
  functionName := "reclaim_plan.key_eq"
  kind := "ensures"
  statementHash := "24a0cc908724ff02"
}
@[vrml_obligation] theorem ensures_10
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (i : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (assume_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (assume_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (then_0_assume_7 : (Vermilion.Seq.len a ≠ Vermilion.Seq.len b) → False)
    (then_0_assume_8 : (Vermilion.Seq.len a ≠ Vermilion.Seq.len b) → False)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 i)
    (loop_0_exit_1 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len a))
    (loop_0_exit_2 : Vermilion.Seq.len a = Vermilion.Seq.len b)
    (loop_0_exit_3 : reclaim_plan.prefix_eq_spec a b i)
    (loop_0_exit_4 : (¬ (i < Vermilion.Seq.len a)))
    (assert_9 : a = b) :
    True ↔ (a = b) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_eq.ensures_10

end reclaim_plan.key_eq

