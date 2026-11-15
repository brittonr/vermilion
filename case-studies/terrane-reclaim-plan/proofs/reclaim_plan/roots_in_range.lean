import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.roots_in_range

-- vrml:begin reclaim_plan.roots_in_range.invariant_entry_0_0 c1ed74993a21cac1
/--
Generated VC `reclaim_plan.roots_in_range.invariant_entry_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:232:19-232:40`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `c1ed74993a21cac1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 232
  startColumn := 19
  endLine := 232
  endColumn := 40
  assertId := "0_0"
  functionName := "reclaim_plan.roots_in_range"
  kind := "invariant_entry"
  statementHash := "c1ed74993a21cac1"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (n : Int)
    (roots : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0)))) :
    (0 ≤ 0) ∧ (0 ≤ Vermilion.Seq.len roots) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.roots_in_range.invariant_entry_0_0

-- vrml:begin reclaim_plan.roots_in_range.invariant_entry_0_1 e8a3402ee497d853
/--
Generated VC `reclaim_plan.roots_in_range.invariant_entry_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:232:42-232:123`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `e8a3402ee497d853`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index roots j⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 232
  startColumn := 42
  endLine := 232
  endColumn := 123
  assertId := "0_1"
  functionName := "reclaim_plan.roots_in_range"
  kind := "invariant_entry"
  statementHash := "e8a3402ee497d853"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (n : Int)
    (roots : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0)))) :
    (∀ (j : Int), (((0 ≤ j) ∧ (j < 0)) → (Vermilion.Seq.index roots j < n))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.roots_in_range.invariant_entry_0_1

-- vrml:begin reclaim_plan.roots_in_range.call_requires_1 e936a913e1baff0d
/--
Generated VC `reclaim_plan.roots_in_range.call_requires_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:235:12-235:20`
- Rust/SST construct: call vec_index
- AssertId: `1`
- Statement hash: `e936a913e1baff0d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def call_requires_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 235
  startColumn := 12
  endLine := 235
  endColumn := 20
  assertId := "1"
  functionName := "reclaim_plan.roots_in_range"
  kind := "call_requires"
  statementHash := "e936a913e1baff0d"
}
@[vrml_obligation] theorem call_requires_1
    (n : Int)
    (roots : (Vermilion.Seq Int))
    (r : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 r)
    (loop_0_iteration_4 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_5 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → (Vermilion.Seq.index roots j < n))))
    (loop_0_iteration_6 : r < Vermilion.Seq.len roots) :
    r < Vermilion.Seq.len roots := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.roots_in_range.call_requires_1

-- vrml:begin reclaim_plan.roots_in_range.ensures_2 cc59b48a39f4c94e
/--
Generated VC `reclaim_plan.roots_in_range.ensures_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:228:13-228:56`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2`
- Statement hash: `cc59b48a39f4c94e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def ensures_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 228
  startColumn := 13
  endLine := 228
  endColumn := 56
  assertId := "2"
  functionName := "reclaim_plan.roots_in_range"
  kind := "ensures"
  statementHash := "cc59b48a39f4c94e"
}
@[vrml_obligation] theorem ensures_2
    (n : Int)
    (roots : (Vermilion.Seq Int))
    (r : Int)
    (tmp_ : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 r)
    (loop_0_iteration_4 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_5 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → (Vermilion.Seq.index roots j < n))))
    (loop_0_iteration_6 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index roots r)
    (branch_0 : tmp_ ≥ n) :
    False ↔ reclaim_plan.roots_in_range_spec n roots := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.roots_in_range.ensures_2

-- vrml:begin reclaim_plan.roots_in_range.assert_3 ed888e7f4b7ab3ca
/--
Generated VC `reclaim_plan.roots_in_range.assert_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:238:9-238:15`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `3`
- Statement hash: `ed888e7f4b7ab3ca`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 238
  startColumn := 9
  endLine := 238
  endColumn := 15
  assertId := "3"
  functionName := "reclaim_plan.roots_in_range"
  kind := "assert"
  statementHash := "ed888e7f4b7ab3ca"
}
@[vrml_obligation] theorem assert_3
    (n : Int)
    (roots : (Vermilion.Seq Int))
    (r : Int)
    (tmp_ : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 r)
    (loop_0_iteration_4 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_5 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → (Vermilion.Seq.index roots j < n))))
    (loop_0_iteration_6 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index roots r)
    (then_0_assume_10 : (tmp_ ≥ n) → False)
    (then_0_assume_11 : (tmp_ ≥ n) → False) :
    Vermilion.inUnsignedRange 64 (r + 1) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.roots_in_range.assert_3

-- vrml:begin reclaim_plan.roots_in_range.invariant_preserve_0_0 ad56b01917ea2216
/--
Generated VC `reclaim_plan.roots_in_range.invariant_preserve_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:232:19-232:40`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `ad56b01917ea2216`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 232
  startColumn := 19
  endLine := 232
  endColumn := 40
  assertId := "0_0"
  functionName := "reclaim_plan.roots_in_range"
  kind := "invariant_preserve"
  statementHash := "ad56b01917ea2216"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (n : Int)
    (roots : (Vermilion.Seq Int))
    (r : Int)
    (tmp_ : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 r)
    (loop_0_iteration_4 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_5 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → (Vermilion.Seq.index roots j < n))))
    (loop_0_iteration_6 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index roots r)
    (then_0_assume_10 : (tmp_ ≥ n) → False)
    (then_0_assume_11 : (tmp_ ≥ n) → False)
    (assert_3 : Vermilion.inUnsignedRange 64 (r + 1)) :
    (0 ≤ ((r + 1) % 18446744073709551616)) ∧ (((r + 1) % 18446744073709551616) ≤ Vermilion.Seq.len roots) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.roots_in_range.invariant_preserve_0_0

-- vrml:begin reclaim_plan.roots_in_range.invariant_preserve_0_1 31836ce34ccd835f
/--
Generated VC `reclaim_plan.roots_in_range.invariant_preserve_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:232:42-232:123`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `31836ce34ccd835f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index roots j⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 232
  startColumn := 42
  endLine := 232
  endColumn := 123
  assertId := "0_1"
  functionName := "reclaim_plan.roots_in_range"
  kind := "invariant_preserve"
  statementHash := "31836ce34ccd835f"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (n : Int)
    (roots : (Vermilion.Seq Int))
    (r : Int)
    (tmp_ : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 r)
    (loop_0_iteration_4 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_5 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → (Vermilion.Seq.index roots j < n))))
    (loop_0_iteration_6 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index roots r)
    (then_0_assume_10 : (tmp_ ≥ n) → False)
    (then_0_assume_11 : (tmp_ ≥ n) → False)
    (assert_3 : Vermilion.inUnsignedRange 64 (r + 1)) :
    (∀ (j : Int), (((0 ≤ j) ∧ (j < ((r + 1) % 18446744073709551616))) → (Vermilion.Seq.index roots j < n))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.roots_in_range.invariant_preserve_0_1

-- vrml:begin reclaim_plan.roots_in_range.assert_0_decreases b01ff4aa5cbd53c2
/--
Generated VC `reclaim_plan.roots_in_range.assert_0_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:233:19-233:34`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `b01ff4aa5cbd53c2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 233
  startColumn := 19
  endLine := 233
  endColumn := 34
  assertId := "0_decreases"
  functionName := "reclaim_plan.roots_in_range"
  kind := "assert"
  statementHash := "b01ff4aa5cbd53c2"
}
@[vrml_obligation] theorem assert_0_decreases
    (n : Int)
    (roots : (Vermilion.Seq Int))
    (r : Int)
    (tmp_ : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 r)
    (loop_0_iteration_4 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_5 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → (Vermilion.Seq.index roots j < n))))
    (loop_0_iteration_6 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index roots r)
    (then_0_assume_10 : (tmp_ ≥ n) → False)
    (then_0_assume_11 : (tmp_ ≥ n) → False)
    (assert_3 : Vermilion.inUnsignedRange 64 (r + 1)) :
    ((0 ≤ (Vermilion.Seq.len roots - ((r + 1) % 18446744073709551616))) ∧ ((Vermilion.Seq.len roots - ((r + 1) % 18446744073709551616)) < (Vermilion.Seq.len roots - r))) ∨ (((Vermilion.Seq.len roots - ((r + 1) % 18446744073709551616)) = (Vermilion.Seq.len roots - r)) ∧ False) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.roots_in_range.assert_0_decreases

-- vrml:begin reclaim_plan.roots_in_range.ensures_4 8734757f18515281
/--
Generated VC `reclaim_plan.roots_in_range.ensures_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:228:13-228:56`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `4`
- Statement hash: `8734757f18515281`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def ensures_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 228
  startColumn := 13
  endLine := 228
  endColumn := 56
  assertId := "4"
  functionName := "reclaim_plan.roots_in_range"
  kind := "ensures"
  statementHash := "8734757f18515281"
}
@[vrml_obligation] theorem ensures_4
    (n : Int)
    (roots : (Vermilion.Seq Int))
    (r : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 r)
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → (Vermilion.Seq.index roots j < n))))
    (loop_0_exit_3 : (¬ (r < Vermilion.Seq.len roots))) :
    True ↔ reclaim_plan.roots_in_range_spec n roots := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.roots_in_range.ensures_4

end reclaim_plan.roots_in_range

