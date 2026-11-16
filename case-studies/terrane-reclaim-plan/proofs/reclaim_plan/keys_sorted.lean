import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.keys_sorted

-- vrml:begin reclaim_plan.keys_sorted.ensures_1 465538c9090e7f98
/--
Generated VC `reclaim_plan.keys_sorted.ensures_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1051:13-1051:42`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1`
- Statement hash: `465538c9090e7f98`
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
  statementHash := "465538c9090e7f98"
}
@[vrml_obligation] theorem ensures_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (assume_2 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (branch_0 : Vermilion.Seq.len keys < 2) :
    True ↔ reclaim_plan.keys_sorted_spec keys := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.keys_sorted.ensures_1

-- vrml:begin reclaim_plan.keys_sorted.invariant_entry_0_0 ed6f79c98b7bc1b2
/--
Generated VC `reclaim_plan.keys_sorted.invariant_entry_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1058:19-1058:39`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `ed6f79c98b7bc1b2`
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
  statementHash := "ed6f79c98b7bc1b2"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (assume_2 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_4 : (Vermilion.Seq.len keys < 2) → False)
    (then_0_assume_5 : (Vermilion.Seq.len keys < 2) → False) :
    (1 ≤ 1) ∧ (1 ≤ Vermilion.Seq.len keys) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.keys_sorted.invariant_entry_0_0

-- vrml:begin reclaim_plan.keys_sorted.invariant_entry_0_1 4cc2dae7391a44cf
/--
Generated VC `reclaim_plan.keys_sorted.invariant_entry_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1059:13-1059:119`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `4cc2dae7391a44cf`
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
  statementHash := "4cc2dae7391a44cf"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (assume_2 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_4 : (Vermilion.Seq.len keys < 2) → False)
    (then_0_assume_5 : (Vermilion.Seq.len keys < 2) → False) :
    (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < 1)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.keys_sorted.invariant_entry_0_1

-- vrml:begin reclaim_plan.keys_sorted.assert_3 e29bcc323b717bf5
/--
Generated VC `reclaim_plan.keys_sorted.assert_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1062:26-1062:31`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `3`
- Statement hash: `e29bcc323b717bf5`
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
  statementHash := "e29bcc323b717bf5"
}
@[vrml_obligation] theorem assert_3
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_4 : (1 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_5 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < i)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len keys) :
    (0 ≤ (i - 1)) ∧ ((i - 1) < Vermilion.usizeMod) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.keys_sorted.assert_3

-- vrml:begin reclaim_plan.keys_sorted.call_requires_4 d269d904db09ddcd
/--
Generated VC `reclaim_plan.keys_sorted.call_requires_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1062:21-1062:32`
- Rust/SST construct: call vec_index
- AssertId: `4`
- Statement hash: `d269d904db09ddcd`
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
  statementHash := "d269d904db09ddcd"
}
@[vrml_obligation] theorem call_requires_4
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_4 : (1 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_5 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < i)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len keys)
    (assert_3 : (0 ≤ (i - 1)) ∧ ((i - 1) < Vermilion.usizeMod)) :
    (Vermilion.emod (i - 1) Vermilion.usizeMod) < Vermilion.Seq.len keys := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.keys_sorted.call_requires_4

-- vrml:begin reclaim_plan.keys_sorted.call_requires_5 6e3b9ef5d3c2cf51
/--
Generated VC `reclaim_plan.keys_sorted.call_requires_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1062:35-1062:42`
- Rust/SST construct: call vec_index
- AssertId: `5`
- Statement hash: `6e3b9ef5d3c2cf51`
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
  statementHash := "6e3b9ef5d3c2cf51"
}
@[vrml_obligation] theorem call_requires_5
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (tmp_ : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_4 : (1 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_5 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < i)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len keys)
    (assert_3 : (0 ≤ (i - 1)) ∧ ((i - 1) < Vermilion.usizeMod))
    (call_vec_index_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index keys (Vermilion.emod (i - 1) Vermilion.usizeMod)) :
    i < Vermilion.Seq.len keys := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.keys_sorted.call_requires_5

-- vrml:begin reclaim_plan.keys_sorted.assert_7 e4bb7b73a9efe148
/--
Generated VC `reclaim_plan.keys_sorted.assert_7`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1063:20-1063:65`
- Rust/SST construct: Rust source assertion
- AssertId: `7`
- Statement hash: `e4bb7b73a9efe148`
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
  statementHash := "e4bb7b73a9efe148"
}
@[vrml_obligation] theorem assert_7
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (tmp_ : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_4 : (1 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_5 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < i)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len keys)
    (assert_3 : (0 ≤ (i - 1)) ∧ ((i - 1) < Vermilion.usizeMod))
    (call_vec_index_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index keys (Vermilion.emod (i - 1) Vermilion.usizeMod))
    (call_vec_index_1_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__2) ∧ (Vermilion.Seq.len tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_vec_index_1_ensures_2 : tmp__2 = Vermilion.Seq.index keys i)
    (branch_1 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2)) :
    (¬ reclaim_plan.key_lt_spec (Vermilion.Seq.index keys (i - 1)) (Vermilion.Seq.index keys i)) := by
  have hm : Vermilion.emod (i - 1) Vermilion.usizeMod = i - 1 := Vermilion.emod_usizeMod_of_lt assert_3.1 assert_3.2
  rw [hm] at call_vec_index_ensures_2
  rw [call_vec_index_ensures_2, call_vec_index_1_ensures_2] at branch_1; exact branch_1
-- vrml:end reclaim_plan.keys_sorted.assert_7

-- vrml:begin reclaim_plan.keys_sorted.ensures_8 0340e56c63fb7b2d
/--
Generated VC `reclaim_plan.keys_sorted.ensures_8`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1051:13-1051:42`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `8`
- Statement hash: `0340e56c63fb7b2d`
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
  statementHash := "0340e56c63fb7b2d"
}
@[vrml_obligation] theorem ensures_8
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (tmp_ : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_4 : (1 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_5 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < i)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len keys)
    (assert_3 : (0 ≤ (i - 1)) ∧ ((i - 1) < Vermilion.usizeMod))
    (call_vec_index_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index keys (Vermilion.emod (i - 1) Vermilion.usizeMod))
    (call_vec_index_1_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__2) ∧ (Vermilion.Seq.len tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_vec_index_1_ensures_2 : tmp__2 = Vermilion.Seq.index keys i)
    (branch_1 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2))
    (assert_7 : (¬ reclaim_plan.key_lt_spec (Vermilion.Seq.index keys (i - 1)) (Vermilion.Seq.index keys i))) :
    False ↔ reclaim_plan.keys_sorted_spec keys := by
  constructor
  · exact False.elim
  · intro hs; exact assert_7 (hs (i - 1) i ⟨⟨by omega, by omega⟩, loop_0_iteration_6⟩)
-- vrml:end reclaim_plan.keys_sorted.ensures_8

-- vrml:begin reclaim_plan.keys_sorted.call_requires_9_0 ed0395b4ebd9341a
/--
Generated VC `reclaim_plan.keys_sorted.call_requires_9_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1070:21-1070:82`
- Rust/SST construct: call key_lt_transitive
- AssertId: `9_0`
- Statement hash: `ed0395b4ebd9341a`
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
  statementHash := "ed0395b4ebd9341a"
}
@[vrml_obligation] theorem call_requires_9_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (tmp_ : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (a : Int)
    (b : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_4 : (1 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_5 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < i)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len keys)
    (assert_3 : (0 ≤ (i - 1)) ∧ ((i - 1) < Vermilion.usizeMod))
    (call_vec_index_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index keys (Vermilion.emod (i - 1) Vermilion.usizeMod))
    (call_vec_index_1_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__2) ∧ (Vermilion.Seq.len tmp__2 < Vermilion.usizeMod))
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
  exact loop_0_iteration_5 a (i - 1) ⟨⟨assume_19.1.1, branch_2.2⟩, by omega⟩
-- vrml:end reclaim_plan.keys_sorted.call_requires_9_0

-- vrml:begin reclaim_plan.keys_sorted.call_requires_9_1 8634e7d2e7fa7720
/--
Generated VC `reclaim_plan.keys_sorted.call_requires_9_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1070:21-1070:82`
- Rust/SST construct: call key_lt_transitive
- AssertId: `9_1`
- Statement hash: `8634e7d2e7fa7720`
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
  statementHash := "8634e7d2e7fa7720"
}
@[vrml_obligation] theorem call_requires_9_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (tmp_ : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (a : Int)
    (b : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_4 : (1 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_5 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < i)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len keys)
    (assert_3 : (0 ≤ (i - 1)) ∧ ((i - 1) < Vermilion.usizeMod))
    (call_vec_index_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index keys (Vermilion.emod (i - 1) Vermilion.usizeMod))
    (call_vec_index_1_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__2) ∧ (Vermilion.Seq.len tmp__2 < Vermilion.usizeMod))
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
  have hm : Vermilion.emod (i - 1) Vermilion.usizeMod = i - 1 := Vermilion.emod_usizeMod_of_lt assert_3.1 assert_3.2
  rw [hm] at call_vec_index_ensures_2
  have hk : reclaim_plan.key_lt_spec (Vermilion.Seq.index keys (i - 1)) (Vermilion.Seq.index keys i) := by
    have h : reclaim_plan.key_lt_spec tmp_ tmp__2 := by
      by_contra h; exact then_1_assume_16 h
    rw [call_vec_index_ensures_2, call_vec_index_1_ensures_2] at h; exact h
  exact hk
-- vrml:end reclaim_plan.keys_sorted.call_requires_9_1

-- vrml:begin reclaim_plan.keys_sorted.assert_10 06fb26531d957c74
/--
Generated VC `reclaim_plan.keys_sorted.assert_10`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1068:25-1068:58`
- Rust/SST construct: Rust source assertion
- AssertId: `10`
- Statement hash: `06fb26531d957c74`
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
  statementHash := "06fb26531d957c74"
}
@[vrml_obligation] theorem assert_10
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (tmp_ : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (a : Int)
    (b : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_4 : (1 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_5 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < i)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len keys)
    (assert_3 : (0 ≤ (i - 1)) ∧ ((i - 1) < Vermilion.usizeMod))
    (call_vec_index_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index keys (Vermilion.emod (i - 1) Vermilion.usizeMod))
    (call_vec_index_1_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__2) ∧ (Vermilion.Seq.len tmp__2 < Vermilion.usizeMod))
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
  have hm : Vermilion.emod (i - 1) Vermilion.usizeMod = i - 1 := Vermilion.emod_usizeMod_of_lt assert_3.1 assert_3.2
  rw [hm] at call_vec_index_ensures_2
  have hk : reclaim_plan.key_lt_spec (Vermilion.Seq.index keys (i - 1)) (Vermilion.Seq.index keys i) := by
    have h : reclaim_plan.key_lt_spec tmp_ tmp__2 := by
      by_contra h; exact then_1_assume_16 h
    rw [call_vec_index_ensures_2, call_vec_index_1_ensures_2] at h; exact h
  by_cases hb : b < i
  · exact loop_0_iteration_5 a b ⟨assume_19.1, hb⟩
  · have hbi : b = i := by have := assume_19.2; omega
    by_cases ha : a < i - 1
    · rw [hbi]; exact then_2_call_key_lt_transitive_ensures_0 ⟨hbi, ha⟩
    · have hai : a = i - 1 := by have := assume_19.1.2; omega
      rw [hai, hbi]; exact hk
-- vrml:end reclaim_plan.keys_sorted.assert_10

-- vrml:begin reclaim_plan.keys_sorted.assert_11 5ca2131a5471bce5
/--
Generated VC `reclaim_plan.keys_sorted.assert_11`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1074:13-1074:18`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `11`
- Statement hash: `5ca2131a5471bce5`
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
  statementHash := "5ca2131a5471bce5"
}
@[vrml_obligation] theorem assert_11
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (tmp_ : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_4 : (1 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_5 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < i)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len keys)
    (assert_3 : (0 ≤ (i - 1)) ∧ ((i - 1) < Vermilion.usizeMod))
    (call_vec_index_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index keys (Vermilion.emod (i - 1) Vermilion.usizeMod))
    (call_vec_index_1_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__2) ∧ (Vermilion.Seq.len tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_vec_index_1_ensures_2 : tmp__2 = Vermilion.Seq.index keys i)
    (then_1_assert_7 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → (¬ reclaim_plan.key_lt_spec (Vermilion.Seq.index keys (i - 1)) (Vermilion.Seq.index keys i)))
    (then_1_assume_16 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → False)
    (then_1_assume_17 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → False)
    (assume_17 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < (i + 1))) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b)))) :
    (0 ≤ (i + 1)) ∧ ((i + 1) < Vermilion.usizeMod) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.keys_sorted.assert_11

-- vrml:begin reclaim_plan.keys_sorted.invariant_preserve_0_0 cb8d13171d799214
/--
Generated VC `reclaim_plan.keys_sorted.invariant_preserve_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1058:19-1058:39`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `cb8d13171d799214`
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
  statementHash := "cb8d13171d799214"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (tmp_ : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_4 : (1 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_5 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < i)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len keys)
    (assert_3 : (0 ≤ (i - 1)) ∧ ((i - 1) < Vermilion.usizeMod))
    (call_vec_index_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index keys (Vermilion.emod (i - 1) Vermilion.usizeMod))
    (call_vec_index_1_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__2) ∧ (Vermilion.Seq.len tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_vec_index_1_ensures_2 : tmp__2 = Vermilion.Seq.index keys i)
    (then_1_assert_7 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → (¬ reclaim_plan.key_lt_spec (Vermilion.Seq.index keys (i - 1)) (Vermilion.Seq.index keys i)))
    (then_1_assume_16 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → False)
    (then_1_assume_17 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → False)
    (assume_17 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < (i + 1))) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (assert_11 : (0 ≤ (i + 1)) ∧ ((i + 1) < Vermilion.usizeMod)) :
    (1 ≤ (Vermilion.emod (i + 1) Vermilion.usizeMod)) ∧ ((Vermilion.emod (i + 1) Vermilion.usizeMod) ≤ Vermilion.Seq.len keys) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.keys_sorted.invariant_preserve_0_0

-- vrml:begin reclaim_plan.keys_sorted.invariant_preserve_0_1 3285c23766a6644a
/--
Generated VC `reclaim_plan.keys_sorted.invariant_preserve_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1059:13-1059:119`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `3285c23766a6644a`
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
  statementHash := "3285c23766a6644a"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (tmp_ : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_4 : (1 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_5 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < i)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len keys)
    (assert_3 : (0 ≤ (i - 1)) ∧ ((i - 1) < Vermilion.usizeMod))
    (call_vec_index_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index keys (Vermilion.emod (i - 1) Vermilion.usizeMod))
    (call_vec_index_1_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__2) ∧ (Vermilion.Seq.len tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_vec_index_1_ensures_2 : tmp__2 = Vermilion.Seq.index keys i)
    (then_1_assert_7 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → (¬ reclaim_plan.key_lt_spec (Vermilion.Seq.index keys (i - 1)) (Vermilion.Seq.index keys i)))
    (then_1_assume_16 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → False)
    (then_1_assume_17 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → False)
    (assume_17 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < (i + 1))) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (assert_11 : (0 ≤ (i + 1)) ∧ ((i + 1) < Vermilion.usizeMod)) :
    (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < (Vermilion.emod (i + 1) Vermilion.usizeMod))) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))) := by
  have hr : Vermilion.emod (i + 1) Vermilion.usizeMod = i + 1 := Vermilion.emod_usizeMod_of_lt assert_11.1 assert_11.2
  rw [hr]; exact assume_17
-- vrml:end reclaim_plan.keys_sorted.invariant_preserve_0_1

-- vrml:begin reclaim_plan.keys_sorted.assert_0_decreases 1efb9b5d83fcbc72
/--
Generated VC `reclaim_plan.keys_sorted.assert_0_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1060:19-1060:33`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `1efb9b5d83fcbc72`
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
  statementHash := "1efb9b5d83fcbc72"
}
@[vrml_obligation] theorem assert_0_decreases
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (tmp_ : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_4 : (1 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_5 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < i)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (loop_0_iteration_6 : i < Vermilion.Seq.len keys)
    (assert_3 : (0 ≤ (i - 1)) ∧ ((i - 1) < Vermilion.usizeMod))
    (call_vec_index_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_vec_index_ensures_2 : tmp_ = Vermilion.Seq.index keys (Vermilion.emod (i - 1) Vermilion.usizeMod))
    (call_vec_index_1_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__2) ∧ (Vermilion.Seq.len tmp__2 < Vermilion.usizeMod))
    (call_vec_index_1_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_vec_index_1_ensures_2 : tmp__2 = Vermilion.Seq.index keys i)
    (then_1_assert_7 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → (¬ reclaim_plan.key_lt_spec (Vermilion.Seq.index keys (i - 1)) (Vermilion.Seq.index keys i)))
    (then_1_assume_16 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → False)
    (then_1_assume_17 : (¬ reclaim_plan.key_lt_spec tmp_ tmp__2) → False)
    (assume_17 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < (i + 1))) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (assert_11 : (0 ≤ (i + 1)) ∧ ((i + 1) < Vermilion.usizeMod)) :
    ((0 ≤ (Vermilion.Seq.len keys - (Vermilion.emod (i + 1) Vermilion.usizeMod))) ∧ ((Vermilion.Seq.len keys - (Vermilion.emod (i + 1) Vermilion.usizeMod)) < (Vermilion.Seq.len keys - i))) ∨ (((Vermilion.Seq.len keys - (Vermilion.emod (i + 1) Vermilion.usizeMod)) = (Vermilion.Seq.len keys - i)) ∧ False) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.keys_sorted.assert_0_decreases

-- vrml:begin reclaim_plan.keys_sorted.ensures_12 2bf3e4815f3af517
/--
Generated VC `reclaim_plan.keys_sorted.ensures_12`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1051:13-1051:42`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `12`
- Statement hash: `2bf3e4815f3af517`
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
  statementHash := "2bf3e4815f3af517"
}
@[vrml_obligation] theorem ensures_12
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (((0 ≤ Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0) < Vermilion.usizeMod)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (assume_2 : (0 ≤ Vermilion.Seq.len keys) ∧ (Vermilion.Seq.len keys < Vermilion.usizeMod))
    (then_0_assume_4 : (Vermilion.Seq.len keys < 2) → False)
    (then_0_assume_5 : (Vermilion.Seq.len keys < 2) → False)
    (loop_0_exit_0 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_exit_1 : (1 ≤ i) ∧ (i ≤ Vermilion.Seq.len keys))
    (loop_0_exit_2 : (∀ (a : Int) (b : Int), ((((0 ≤ a) ∧ (a < b)) ∧ (b < i)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys a) (Vermilion.Seq.index keys b))))
    (loop_0_exit_3 : (¬ (i < Vermilion.Seq.len keys))) :
    True ↔ reclaim_plan.keys_sorted_spec keys := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.keys_sorted.ensures_12

end reclaim_plan.keys_sorted

