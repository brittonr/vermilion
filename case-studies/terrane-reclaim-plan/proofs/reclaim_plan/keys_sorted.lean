import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.keys_sorted

-- vrml:begin reclaim_plan.keys_sorted.ensures_1 94062bd12b0c6a24
/--
Generated VC `reclaim_plan.keys_sorted.ensures_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1051:13-1051:42`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1`
- Statement hash: `94062bd12b0c6a24`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩
-/
def ensures_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1051
  startColumn := 13
  endLine := 1051
  endColumn := 42
  assertId := "1"
  functionName := "reclaim_plan.keys_sorted"
  kind := "ensures"
  statementHash := "94062bd12b0c6a24"
}
@[vrml_obligation] theorem ensures_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (assume_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (branch_0 : Vermilion.Seq.len keys < 2) :
    True ↔ reclaim_plan.keys_sorted_spec keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.keys_sorted.ensures_1

-- vrml:begin reclaim_plan.keys_sorted.invariant_entry_0_0 accb2dff9a3001fe
/--
Generated VC `reclaim_plan.keys_sorted.invariant_entry_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1058:19-1058:39`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `accb2dff9a3001fe`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1058
  startColumn := 19
  endLine := 1058
  endColumn := 39
  assertId := "0_0"
  functionName := "reclaim_plan.keys_sorted"
  kind := "invariant_entry"
  statementHash := "accb2dff9a3001fe"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (assume_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_4 : (Vermilion.Seq.len keys < 2) → False)
    (then_0_assume_5 : (Vermilion.Seq.len keys < 2) → False) :
    (1 ≤ 1) ∧ (1 ≤ Vermilion.Seq.len keys) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.keys_sorted.invariant_entry_0_0

-- vrml:begin reclaim_plan.keys_sorted.invariant_entry_0_1 d84a8a710eec1683
/--
Generated VC `reclaim_plan.keys_sorted.invariant_entry_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1059:13-1059:119`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `d84a8a710eec1683`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys a, Vermilion.Seq.index keys b⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1059
  startColumn := 13
  endLine := 1059
  endColumn := 119
  assertId := "0_1"
  functionName := "reclaim_plan.keys_sorted"
  kind := "invariant_entry"
  statementHash := "d84a8a710eec1683"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (assume_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_4 : (Vermilion.Seq.len keys < 2) → False)
    (then_0_assume_5 : (Vermilion.Seq.len keys < 2) → False) :
    (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < 1)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.keys_sorted.invariant_entry_0_1

-- vrml:begin reclaim_plan.keys_sorted.assert_3 255d720300d1ca36
/--
Generated VC `reclaim_plan.keys_sorted.assert_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1062:26-1062:31`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `3`
- Statement hash: `255d720300d1ca36`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index keys a, Vermilion.Seq.index keys b⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1062
  startColumn := 26
  endLine := 1062
  endColumn := 31
  assertId := "3"
  functionName := "reclaim_plan.keys_sorted"
  kind := "assert"
  statementHash := "255d720300d1ca36"
}
@[vrml_obligation] theorem assert_3
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : (1 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_5 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < i)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len keys) :
    Vermilion.inUnsignedRange 64 (i - 1) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.keys_sorted.assert_3

-- vrml:begin reclaim_plan.keys_sorted.call_requires_4 813ea34271f582f6
/--
Generated VC `reclaim_plan.keys_sorted.call_requires_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1062:21-1062:32`
- Rust/SST construct: call vec_index
- AssertId: `4`
- Statement hash: `813ea34271f582f6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index keys a, Vermilion.Seq.index keys b⟩
-/
def call_requires_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1062
  startColumn := 21
  endLine := 1062
  endColumn := 32
  assertId := "4"
  functionName := "reclaim_plan.keys_sorted"
  kind := "call_requires"
  statementHash := "813ea34271f582f6"
}
@[vrml_obligation] theorem call_requires_4
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : (1 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_5 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < i)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len keys)
    (assert_3 : Vermilion.inUnsignedRange 64 (i - 1)) :
    ((i - 1) % 18446744073709551616) < Vermilion.Seq.len keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.keys_sorted.call_requires_4

-- vrml:begin reclaim_plan.keys_sorted.call_requires_5 bd4956d3f8afdc1f
/--
Generated VC `reclaim_plan.keys_sorted.call_requires_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1062:35-1062:42`
- Rust/SST construct: call vec_index
- AssertId: `5`
- Statement hash: `bd4956d3f8afdc1f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index keys a, Vermilion.Seq.index keys b⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩
-/
def call_requires_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1062
  startColumn := 35
  endLine := 1062
  endColumn := 42
  assertId := "5"
  functionName := "reclaim_plan.keys_sorted"
  kind := "call_requires"
  statementHash := "bd4956d3f8afdc1f"
}
@[vrml_obligation] theorem call_requires_5
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (tmp_ : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : (1 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_5 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < i)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len keys)
    (assert_3 : Vermilion.inUnsignedRange 64 (i - 1))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index keys ((i - 1) % 18446744073709551616)) :
    i < Vermilion.Seq.len keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.keys_sorted.call_requires_5

-- vrml:begin reclaim_plan.keys_sorted.assert_7 5c008e33ffce45c4
/--
Generated VC `reclaim_plan.keys_sorted.assert_7`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1063:20-1063:65`
- Rust/SST construct: Rust source assertion
- AssertId: `7`
- Statement hash: `5c008e33ffce45c4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index keys a, Vermilion.Seq.index keys b⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩
-/
def assert_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1063
  startColumn := 20
  endLine := 1063
  endColumn := 65
  assertId := "7"
  functionName := "reclaim_plan.keys_sorted"
  kind := "assert"
  statementHash := "5c008e33ffce45c4"
}
@[vrml_obligation] theorem assert_7
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (tmp_ : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : (1 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_5 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < i)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len keys)
    (assert_3 : Vermilion.inUnsignedRange 64 (i - 1))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index keys ((i - 1) % 18446744073709551616))
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_vec_index_1_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_vec_index_1_ensures_2 : tmp__2 = Vermilion.Seq.index keys i)
    (branch_1 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2)) :
    (¬ reclaim_plan.key_lt_spec (Vermilion.Seq.index keys (i - 1)) (Vermilion.Seq.index keys i)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.keys_sorted.assert_7

-- vrml:begin reclaim_plan.keys_sorted.ensures_8 31ba600023b9e061
/--
Generated VC `reclaim_plan.keys_sorted.ensures_8`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1051:13-1051:42`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `8`
- Statement hash: `31ba600023b9e061`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index keys a, Vermilion.Seq.index keys b⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩
-/
def ensures_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1051
  startColumn := 13
  endLine := 1051
  endColumn := 42
  assertId := "8"
  functionName := "reclaim_plan.keys_sorted"
  kind := "ensures"
  statementHash := "31ba600023b9e061"
}
@[vrml_obligation] theorem ensures_8
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (tmp_ : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : (1 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_5 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < i)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len keys)
    (assert_3 : Vermilion.inUnsignedRange 64 (i - 1))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index keys ((i - 1) % 18446744073709551616))
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_vec_index_1_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_vec_index_1_ensures_2 : tmp__2 = Vermilion.Seq.index keys i)
    (branch_1 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2))
    (assert_7 : (¬ reclaim_plan.key_lt_spec (Vermilion.Seq.index keys (i - 1)) (Vermilion.Seq.index keys i))) :
    False ↔ reclaim_plan.keys_sorted_spec keys := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.keys_sorted.ensures_8

-- vrml:begin reclaim_plan.keys_sorted.call_requires_9_0 9149b2d30313f8ae
/--
Generated VC `reclaim_plan.keys_sorted.call_requires_9_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1070:21-1070:82`
- Rust/SST construct: call key_lt_transitive
- AssertId: `9_0`
- Statement hash: `9149b2d30313f8ae`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index keys a, Vermilion.Seq.index keys b⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩
-/
def call_requires_9_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1070
  startColumn := 21
  endLine := 1070
  endColumn := 82
  assertId := "9_0"
  functionName := "reclaim_plan.keys_sorted"
  kind := "call_requires"
  statementHash := "9149b2d30313f8ae"
}
@[vrml_obligation] theorem call_requires_9_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (tmp_ : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (a : Int)
    (b : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : (1 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_5 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < i)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len keys)
    (assert_3 : Vermilion.inUnsignedRange 64 (i - 1))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index keys ((i - 1) % 18446744073709551616))
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_vec_index_1_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_vec_index_1_ensures_2 : tmp__2 = Vermilion.Seq.index keys i)
    (then_1_assert_7 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → (¬ reclaim_plan.key_lt_spec (Vermilion.Seq.index keys (i - 1)) (Vermilion.Seq.index keys i)))
    (then_1_assume_16 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → False)
    (then_1_assume_17 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → False)
    (assume_17 : True)
    (assume_18 : True)
    (assume_19 : ((0 ≤ a) ∧ (a < b)) ∧ (b < (i + 1)))
    (branch_2 : (b = i) ∧ (a < (i - 1))) :
    reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys (i - 1)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.keys_sorted.call_requires_9_0

-- vrml:begin reclaim_plan.keys_sorted.call_requires_9_1 29bc197254cc2c64
/--
Generated VC `reclaim_plan.keys_sorted.call_requires_9_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1070:21-1070:82`
- Rust/SST construct: call key_lt_transitive
- AssertId: `9_1`
- Statement hash: `29bc197254cc2c64`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index keys a, Vermilion.Seq.index keys b⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩
-/
def call_requires_9_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1070
  startColumn := 21
  endLine := 1070
  endColumn := 82
  assertId := "9_1"
  functionName := "reclaim_plan.keys_sorted"
  kind := "call_requires"
  statementHash := "29bc197254cc2c64"
}
@[vrml_obligation] theorem call_requires_9_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (tmp_ : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (a : Int)
    (b : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : (1 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_5 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < i)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len keys)
    (assert_3 : Vermilion.inUnsignedRange 64 (i - 1))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index keys ((i - 1) % 18446744073709551616))
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_vec_index_1_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_vec_index_1_ensures_2 : tmp__2 = Vermilion.Seq.index keys i)
    (then_1_assert_7 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → (¬ reclaim_plan.key_lt_spec (Vermilion.Seq.index keys (i - 1)) (Vermilion.Seq.index keys i)))
    (then_1_assume_16 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → False)
    (then_1_assume_17 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → False)
    (assume_17 : True)
    (assume_18 : True)
    (assume_19 : ((0 ≤ a) ∧ (a < b)) ∧ (b < (i + 1)))
    (branch_2 : (b = i) ∧ (a < (i - 1))) :
    reclaim_plan.key_lt_spec (Vermilion.Seq.index keys (i - 1)) (Vermilion.Seq.index keys i) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.keys_sorted.call_requires_9_1

-- vrml:begin reclaim_plan.keys_sorted.assert_10 4b12bcbb02c9ed10
/--
Generated VC `reclaim_plan.keys_sorted.assert_10`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1068:25-1068:58`
- Rust/SST construct: Rust source assertion
- AssertId: `10`
- Statement hash: `4b12bcbb02c9ed10`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index keys a, Vermilion.Seq.index keys b⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩
-/
def assert_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1068
  startColumn := 25
  endLine := 1068
  endColumn := 58
  assertId := "10"
  functionName := "reclaim_plan.keys_sorted"
  kind := "assert"
  statementHash := "4b12bcbb02c9ed10"
}
@[vrml_obligation] theorem assert_10
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (tmp_ : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (a : Int)
    (b : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : (1 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_5 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < i)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len keys)
    (assert_3 : Vermilion.inUnsignedRange 64 (i - 1))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index keys ((i - 1) % 18446744073709551616))
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_vec_index_1_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_vec_index_1_ensures_2 : tmp__2 = Vermilion.Seq.index keys i)
    (then_1_assert_7 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → (¬ reclaim_plan.key_lt_spec (Vermilion.Seq.index keys (i - 1)) (Vermilion.Seq.index keys i)))
    (then_1_assume_16 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → False)
    (then_1_assume_17 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → False)
    (assume_17 : True)
    (assume_18 : True)
    (assume_19 : ((0 ≤ a) ∧ (a < b)) ∧ (b < (i + 1)))
    (then_2_call_key_lt_transitive_ensures_0 : ((b = i) ∧ (a < (i - 1))) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys i)) :
    reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.keys_sorted.assert_10

-- vrml:begin reclaim_plan.keys_sorted.assert_11 c56f48b53b2c8b1c
/--
Generated VC `reclaim_plan.keys_sorted.assert_11`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1074:13-1074:18`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `11`
- Statement hash: `c56f48b53b2c8b1c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index keys a, Vermilion.Seq.index keys b⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩ ⟨Vermilion.Seq.index keys a, Vermilion.Seq.index keys b⟩
-/
def assert_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1074
  startColumn := 13
  endLine := 1074
  endColumn := 18
  assertId := "11"
  functionName := "reclaim_plan.keys_sorted"
  kind := "assert"
  statementHash := "c56f48b53b2c8b1c"
}
@[vrml_obligation] theorem assert_11
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (tmp_ : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : (1 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_5 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < i)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len keys)
    (assert_3 : Vermilion.inUnsignedRange 64 (i - 1))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index keys ((i - 1) % 18446744073709551616))
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_vec_index_1_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_vec_index_1_ensures_2 : tmp__2 = Vermilion.Seq.index keys i)
    (then_1_assert_7 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → (¬ reclaim_plan.key_lt_spec (Vermilion.Seq.index keys (i - 1)) (Vermilion.Seq.index keys i)))
    (then_1_assume_16 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → False)
    (then_1_assume_17 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → False)
    (assume_17 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < (i + 1))) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b)))) :
    Vermilion.inUnsignedRange 64 (i + 1) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.keys_sorted.assert_11

-- vrml:begin reclaim_plan.keys_sorted.invariant_preserve_0_0 028357a6a49ff321
/--
Generated VC `reclaim_plan.keys_sorted.invariant_preserve_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1058:19-1058:39`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `028357a6a49ff321`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index keys a, Vermilion.Seq.index keys b⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩ ⟨Vermilion.Seq.index keys a, Vermilion.Seq.index keys b⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1058
  startColumn := 19
  endLine := 1058
  endColumn := 39
  assertId := "0_0"
  functionName := "reclaim_plan.keys_sorted"
  kind := "invariant_preserve"
  statementHash := "028357a6a49ff321"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (tmp_ : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : (1 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_5 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < i)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len keys)
    (assert_3 : Vermilion.inUnsignedRange 64 (i - 1))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index keys ((i - 1) % 18446744073709551616))
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_vec_index_1_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_vec_index_1_ensures_2 : tmp__2 = Vermilion.Seq.index keys i)
    (then_1_assert_7 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → (¬ reclaim_plan.key_lt_spec (Vermilion.Seq.index keys (i - 1)) (Vermilion.Seq.index keys i)))
    (then_1_assume_16 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → False)
    (then_1_assume_17 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → False)
    (assume_17 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < (i + 1))) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (assert_11 : Vermilion.inUnsignedRange 64 (i + 1)) :
    (1 ≤ ((i + 1) % 18446744073709551616)) ∧ (((i + 1) % 18446744073709551616) ≤ Vermilion.Seq.len keys) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.keys_sorted.invariant_preserve_0_0

-- vrml:begin reclaim_plan.keys_sorted.invariant_preserve_0_1 489e15092b84c1e5
/--
Generated VC `reclaim_plan.keys_sorted.invariant_preserve_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1059:13-1059:119`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `489e15092b84c1e5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys a, Vermilion.Seq.index keys b⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index keys a, Vermilion.Seq.index keys b⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩ ⟨Vermilion.Seq.index keys a, Vermilion.Seq.index keys b⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1059
  startColumn := 13
  endLine := 1059
  endColumn := 119
  assertId := "0_1"
  functionName := "reclaim_plan.keys_sorted"
  kind := "invariant_preserve"
  statementHash := "489e15092b84c1e5"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (tmp_ : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : (1 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_5 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < i)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len keys)
    (assert_3 : Vermilion.inUnsignedRange 64 (i - 1))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index keys ((i - 1) % 18446744073709551616))
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_vec_index_1_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_vec_index_1_ensures_2 : tmp__2 = Vermilion.Seq.index keys i)
    (then_1_assert_7 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → (¬ reclaim_plan.key_lt_spec (Vermilion.Seq.index keys (i - 1)) (Vermilion.Seq.index keys i)))
    (then_1_assume_16 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → False)
    (then_1_assume_17 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → False)
    (assume_17 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < (i + 1))) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (assert_11 : Vermilion.inUnsignedRange 64 (i + 1)) :
    (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < ((i + 1) % 18446744073709551616))) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.keys_sorted.invariant_preserve_0_1

-- vrml:begin reclaim_plan.keys_sorted.assert_0_decreases 8c7c7016eafe68d9
/--
Generated VC `reclaim_plan.keys_sorted.assert_0_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1060:19-1060:33`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `8c7c7016eafe68d9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index keys a, Vermilion.Seq.index keys b⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩ ⟨Vermilion.Seq.index keys a, Vermilion.Seq.index keys b⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1060
  startColumn := 19
  endLine := 1060
  endColumn := 33
  assertId := "0_decreases"
  functionName := "reclaim_plan.keys_sorted"
  kind := "assert"
  statementHash := "8c7c7016eafe68d9"
}
@[vrml_obligation] theorem assert_0_decreases
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (tmp_ : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : (1 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_5 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < i)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len keys)
    (assert_3 : Vermilion.inUnsignedRange 64 (i - 1))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index keys ((i - 1) % 18446744073709551616))
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_vec_index_1_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_vec_index_1_ensures_2 : tmp__2 = Vermilion.Seq.index keys i)
    (then_1_assert_7 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → (¬ reclaim_plan.key_lt_spec (Vermilion.Seq.index keys (i - 1)) (Vermilion.Seq.index keys i)))
    (then_1_assume_16 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → False)
    (then_1_assume_17 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → False)
    (assume_17 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < (i + 1))) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (assert_11 : Vermilion.inUnsignedRange 64 (i + 1)) :
    ((0 ≤ (Vermilion.Seq.len keys - ((i + 1) % 18446744073709551616))) ∧ ((Vermilion.Seq.len keys - ((i + 1) % 18446744073709551616)) < (Vermilion.Seq.len keys - i))) ∨ (((Vermilion.Seq.len keys - ((i + 1) % 18446744073709551616)) = (Vermilion.Seq.len keys - i)) ∧ False) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.keys_sorted.assert_0_decreases

-- vrml:begin reclaim_plan.keys_sorted.ensures_12 6510154741ca388f
/--
Generated VC `reclaim_plan.keys_sorted.ensures_12`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1051:13-1051:42`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `12`
- Statement hash: `6510154741ca388f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index keys a, Vermilion.Seq.index keys b⟩
-/
def ensures_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1051
  startColumn := 13
  endLine := 1051
  endColumn := 42
  assertId := "12"
  functionName := "reclaim_plan.keys_sorted"
  kind := "ensures"
  statementHash := "6510154741ca388f"
}
@[vrml_obligation] theorem ensures_12
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (assume_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (then_0_assume_4 : (Vermilion.Seq.len keys < 2) → False)
    (then_0_assume_5 : (Vermilion.Seq.len keys < 2) → False)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 i)
    (loop_0_exit_1 : (1 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_0_exit_2 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < i)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (loop_0_exit_3 : (¬ (i < Vermilion.Seq.len keys))) :
    True ↔ reclaim_plan.keys_sorted_spec keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.keys_sorted.ensures_12

end reclaim_plan.keys_sorted

