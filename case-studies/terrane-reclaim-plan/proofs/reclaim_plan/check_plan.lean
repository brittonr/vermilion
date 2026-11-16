import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.check_plan

-- vrml:begin reclaim_plan.check_plan.ensures_3 fe32aaf5fcbcc417
/--
Generated VC `reclaim_plan.check_plan.ensures_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:299:13-299:100`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3`
- Statement hash: `fe32aaf5fcbcc417`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 299
  startColumn := 13
  endLine := 299
  endColumn := 100
  assertId := "3"
  functionName := "reclaim_plan.check_plan"
  kind := "ensures"
  statementHash := "fe32aaf5fcbcc417"
}
@[vrml_obligation] theorem ensures_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (requires_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (requires_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (requires_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (requires_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (requires_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → ((0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod)))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod)))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (branch_2 : tmp__2) :
    False ↔ reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.ensures_3

-- vrml:begin reclaim_plan.check_plan.invariant_entry_0_0 965d12b9a7fd3a7f
/--
Generated VC `reclaim_plan.check_plan.invariant_entry_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:306:19-306:40`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `965d12b9a7fd3a7f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 306
  startColumn := 19
  endLine := 306
  endColumn := 40
  assertId := "0_0"
  functionName := "reclaim_plan.check_plan"
  kind := "invariant_entry"
  statementHash := "965d12b9a7fd3a7f"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (requires_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (requires_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (requires_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (requires_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (requires_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → ((0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod)))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod)))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (then_2_assume_15 : tmp__2 → False)
    (then_2_assume_16 : tmp__2 → False) :
    (0 ≤ 0) ∧ (0 ≤ Vermilion.Seq.len roots) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.invariant_entry_0_0

-- vrml:begin reclaim_plan.check_plan.invariant_entry_0_1 dee6ce6f085e0d41
/--
Generated VC `reclaim_plan.check_plan.invariant_entry_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:306:42-306:79`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `dee6ce6f085e0d41`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 306
  startColumn := 42
  endLine := 306
  endColumn := 79
  assertId := "0_1"
  functionName := "reclaim_plan.check_plan"
  kind := "invariant_entry"
  statementHash := "dee6ce6f085e0d41"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (requires_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (requires_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (requires_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (requires_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (requires_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → ((0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod)))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod)))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (then_2_assume_15 : tmp__2 → False)
    (then_2_assume_16 : tmp__2 → False) :
    reclaim_plan.roots_in_range_spec n roots := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.invariant_entry_0_1

-- vrml:begin reclaim_plan.check_plan.invariant_entry_0_2 79d6d716d44c029e
/--
Generated VC `reclaim_plan.check_plan.invariant_entry_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:306:81-306:101`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_2`
- Statement hash: `79d6d716d44c029e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def invariant_entry_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 306
  startColumn := 81
  endLine := 306
  endColumn := 101
  assertId := "0_2"
  functionName := "reclaim_plan.check_plan"
  kind := "invariant_entry"
  statementHash := "79d6d716d44c029e"
}
@[vrml_obligation] theorem invariant_entry_0_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (requires_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (requires_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (requires_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (requires_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (requires_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → ((0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod)))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod)))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (then_2_assume_15 : tmp__2 → False)
    (then_2_assume_16 : tmp__2 → False) :
    Vermilion.Seq.len retained = n := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.invariant_entry_0_2

-- vrml:begin reclaim_plan.check_plan.invariant_entry_0_3 a7b5f4c415f9ebe7
/--
Generated VC `reclaim_plan.check_plan.invariant_entry_0_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:307:13-307:92`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_3`
- Statement hash: `a7b5f4c415f9ebe7`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index roots j⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def invariant_entry_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 307
  startColumn := 13
  endLine := 307
  endColumn := 92
  assertId := "0_3"
  functionName := "reclaim_plan.check_plan"
  kind := "invariant_entry"
  statementHash := "a7b5f4c415f9ebe7"
}
@[vrml_obligation] theorem invariant_entry_0_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (requires_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (requires_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (requires_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (requires_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (requires_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → ((0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod)))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod)))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (then_2_assume_15 : tmp__2 → False)
    (then_2_assume_16 : tmp__2 → False) :
    (∀ (j : Int), (((0 ≤ j) ∧ (j < 0)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.invariant_entry_0_3

-- vrml:begin reclaim_plan.check_plan.call_requires_5 9f0528bc986433a5
/--
Generated VC `reclaim_plan.check_plan.call_requires_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:310:22-310:30`
- Rust/SST construct: call vec_index
- AssertId: `5`
- Statement hash: `9f0528bc986433a5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def call_requires_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 310
  startColumn := 22
  endLine := 310
  endColumn := 30
  assertId := "5"
  functionName := "reclaim_plan.check_plan"
  kind := "call_requires"
  statementHash := "9f0528bc986433a5"
}
@[vrml_obligation] theorem call_requires_5
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (loop_0_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_0_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_0_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_0_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_iteration_11 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_12 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_iteration_13 : Vermilion.Seq.len retained = n)
    (loop_0_iteration_14 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_iteration_15 : r < Vermilion.Seq.len roots) :
    r < Vermilion.Seq.len roots := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.call_requires_5

-- vrml:begin reclaim_plan.check_plan.call_requires_6 02fdec5b697a36f8
/--
Generated VC `reclaim_plan.check_plan.call_requires_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:310:13-310:31`
- Rust/SST construct: call vec_index
- AssertId: `6`
- Statement hash: `02fdec5b697a36f8`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def call_requires_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 310
  startColumn := 13
  endLine := 310
  endColumn := 31
  assertId := "6"
  functionName := "reclaim_plan.check_plan"
  kind := "call_requires"
  statementHash := "02fdec5b697a36f8"
}
@[vrml_obligation] theorem call_requires_6
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (tmp__3 : Int)
    (loop_0_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_0_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_0_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_0_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_iteration_11 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_12 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_iteration_13 : Vermilion.Seq.len retained = n)
    (loop_0_iteration_14 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_iteration_15 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : (0 ≤ tmp__3) ∧ (tmp__3 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__3 = Vermilion.Seq.index roots r) :
    tmp__3 < Vermilion.Seq.len retained := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.call_requires_6

-- vrml:begin reclaim_plan.check_plan.ensures_7 3a800f40d6fc48d1
/--
Generated VC `reclaim_plan.check_plan.ensures_7`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:299:13-299:100`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `7`
- Statement hash: `3a800f40d6fc48d1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def ensures_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 299
  startColumn := 13
  endLine := 299
  endColumn := 100
  assertId := "7"
  functionName := "reclaim_plan.check_plan"
  kind := "ensures"
  statementHash := "3a800f40d6fc48d1"
}
@[vrml_obligation] theorem ensures_7
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (tmp__3 : Int)
    (tmp__4 : Prop)
    (loop_0_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_0_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_0_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_0_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_iteration_11 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_12 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_iteration_13 : Vermilion.Seq.len retained = n)
    (loop_0_iteration_14 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_iteration_15 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : (0 ≤ tmp__3) ∧ (tmp__3 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__3 = Vermilion.Seq.index roots r)
    (call_vec_index_1_ensures_0 : tmp__4 ↔ Vermilion.Seq.index retained tmp__3)
    (branch_3 : (¬ tmp__4)) :
    False ↔ reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.ensures_7

-- vrml:begin reclaim_plan.check_plan.assert_8 2dbacb390df77ebb
/--
Generated VC `reclaim_plan.check_plan.assert_8`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:313:9-313:15`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `8`
- Statement hash: `2dbacb390df77ebb`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def assert_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 313
  startColumn := 9
  endLine := 313
  endColumn := 15
  assertId := "8"
  functionName := "reclaim_plan.check_plan"
  kind := "assert"
  statementHash := "2dbacb390df77ebb"
}
@[vrml_obligation] theorem assert_8
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (tmp__3 : Int)
    (tmp__4 : Prop)
    (loop_0_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_0_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_0_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_0_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_iteration_11 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_12 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_iteration_13 : Vermilion.Seq.len retained = n)
    (loop_0_iteration_14 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_iteration_15 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : (0 ≤ tmp__3) ∧ (tmp__3 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__3 = Vermilion.Seq.index roots r)
    (call_vec_index_1_ensures_0 : tmp__4 ↔ Vermilion.Seq.index retained tmp__3)
    (then_3_assume_20 : (¬ tmp__4) → False)
    (then_3_assume_21 : (¬ tmp__4) → False) :
    (0 ≤ (r + 1)) ∧ ((r + 1) < Vermilion.usizeMod) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.assert_8

-- vrml:begin reclaim_plan.check_plan.invariant_preserve_0_0 c0b1e2a128ade81a
/--
Generated VC `reclaim_plan.check_plan.invariant_preserve_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:306:19-306:40`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `c0b1e2a128ade81a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 306
  startColumn := 19
  endLine := 306
  endColumn := 40
  assertId := "0_0"
  functionName := "reclaim_plan.check_plan"
  kind := "invariant_preserve"
  statementHash := "c0b1e2a128ade81a"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (tmp__3 : Int)
    (tmp__4 : Prop)
    (loop_0_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_0_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_0_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_0_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_iteration_11 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_12 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_iteration_13 : Vermilion.Seq.len retained = n)
    (loop_0_iteration_14 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_iteration_15 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : (0 ≤ tmp__3) ∧ (tmp__3 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__3 = Vermilion.Seq.index roots r)
    (call_vec_index_1_ensures_0 : tmp__4 ↔ Vermilion.Seq.index retained tmp__3)
    (then_3_assume_20 : (¬ tmp__4) → False)
    (then_3_assume_21 : (¬ tmp__4) → False)
    (assert_8 : (0 ≤ (r + 1)) ∧ ((r + 1) < Vermilion.usizeMod)) :
    (0 ≤ (Vermilion.emod (r + 1) Vermilion.usizeMod)) ∧ ((Vermilion.emod (r + 1) Vermilion.usizeMod) ≤ Vermilion.Seq.len roots) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.invariant_preserve_0_0

-- vrml:begin reclaim_plan.check_plan.invariant_preserve_0_1 0bca38c0961e162e
/--
Generated VC `reclaim_plan.check_plan.invariant_preserve_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:306:42-306:79`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `0bca38c0961e162e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 306
  startColumn := 42
  endLine := 306
  endColumn := 79
  assertId := "0_1"
  functionName := "reclaim_plan.check_plan"
  kind := "invariant_preserve"
  statementHash := "0bca38c0961e162e"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (tmp__3 : Int)
    (tmp__4 : Prop)
    (loop_0_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_0_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_0_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_0_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_iteration_11 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_12 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_iteration_13 : Vermilion.Seq.len retained = n)
    (loop_0_iteration_14 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_iteration_15 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : (0 ≤ tmp__3) ∧ (tmp__3 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__3 = Vermilion.Seq.index roots r)
    (call_vec_index_1_ensures_0 : tmp__4 ↔ Vermilion.Seq.index retained tmp__3)
    (then_3_assume_20 : (¬ tmp__4) → False)
    (then_3_assume_21 : (¬ tmp__4) → False)
    (assert_8 : (0 ≤ (r + 1)) ∧ ((r + 1) < Vermilion.usizeMod)) :
    reclaim_plan.roots_in_range_spec n roots := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.invariant_preserve_0_1

-- vrml:begin reclaim_plan.check_plan.invariant_preserve_0_2 58f867226d4ca119
/--
Generated VC `reclaim_plan.check_plan.invariant_preserve_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:306:81-306:101`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_2`
- Statement hash: `58f867226d4ca119`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_preserve_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 306
  startColumn := 81
  endLine := 306
  endColumn := 101
  assertId := "0_2"
  functionName := "reclaim_plan.check_plan"
  kind := "invariant_preserve"
  statementHash := "58f867226d4ca119"
}
@[vrml_obligation] theorem invariant_preserve_0_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (tmp__3 : Int)
    (tmp__4 : Prop)
    (loop_0_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_0_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_0_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_0_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_iteration_11 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_12 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_iteration_13 : Vermilion.Seq.len retained = n)
    (loop_0_iteration_14 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_iteration_15 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : (0 ≤ tmp__3) ∧ (tmp__3 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__3 = Vermilion.Seq.index roots r)
    (call_vec_index_1_ensures_0 : tmp__4 ↔ Vermilion.Seq.index retained tmp__3)
    (then_3_assume_20 : (¬ tmp__4) → False)
    (then_3_assume_21 : (¬ tmp__4) → False)
    (assert_8 : (0 ≤ (r + 1)) ∧ ((r + 1) < Vermilion.usizeMod)) :
    Vermilion.Seq.len retained = n := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.invariant_preserve_0_2

-- vrml:begin reclaim_plan.check_plan.invariant_preserve_0_3 ae974817ef495e95
/--
Generated VC `reclaim_plan.check_plan.invariant_preserve_0_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:307:13-307:92`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_3`
- Statement hash: `ae974817ef495e95`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index roots j⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_preserve_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 307
  startColumn := 13
  endLine := 307
  endColumn := 92
  assertId := "0_3"
  functionName := "reclaim_plan.check_plan"
  kind := "invariant_preserve"
  statementHash := "ae974817ef495e95"
}
@[vrml_obligation] theorem invariant_preserve_0_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (tmp__3 : Int)
    (tmp__4 : Prop)
    (loop_0_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_0_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_0_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_0_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_iteration_11 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_12 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_iteration_13 : Vermilion.Seq.len retained = n)
    (loop_0_iteration_14 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_iteration_15 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : (0 ≤ tmp__3) ∧ (tmp__3 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__3 = Vermilion.Seq.index roots r)
    (call_vec_index_1_ensures_0 : tmp__4 ↔ Vermilion.Seq.index retained tmp__3)
    (then_3_assume_20 : (¬ tmp__4) → False)
    (then_3_assume_21 : (¬ tmp__4) → False)
    (assert_8 : (0 ≤ (r + 1)) ∧ ((r + 1) < Vermilion.usizeMod)) :
    (∀ (j : Int), (((0 ≤ j) ∧ (j < (Vermilion.emod (r + 1) Vermilion.usizeMod))) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))) := by
  have hr : Vermilion.emod (r + 1) Vermilion.usizeMod = r + 1 := Vermilion.emod_usizeMod_of_lt assert_8.1 assert_8.2
  rw [hr]
  intro j hj
  by_cases hjr : j < r
  · exact loop_0_iteration_14 j ⟨hj.1, hjr⟩
  · have : j = r := by omega
    rw [this, ← call_vec_index_ensures_1]
    exact call_vec_index_1_ensures_0.mp (by by_contra h; exact then_3_assume_20 h)
-- vrml:end reclaim_plan.check_plan.invariant_preserve_0_3

-- vrml:begin reclaim_plan.check_plan.assert_0_decreases b905947ee1b1a62e
/--
Generated VC `reclaim_plan.check_plan.assert_0_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:308:19-308:34`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `b905947ee1b1a62e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 308
  startColumn := 19
  endLine := 308
  endColumn := 34
  assertId := "0_decreases"
  functionName := "reclaim_plan.check_plan"
  kind := "assert"
  statementHash := "b905947ee1b1a62e"
}
@[vrml_obligation] theorem assert_0_decreases
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (tmp__3 : Int)
    (tmp__4 : Prop)
    (loop_0_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_0_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_0_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_0_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_0_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_iteration_11 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_12 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_iteration_13 : Vermilion.Seq.len retained = n)
    (loop_0_iteration_14 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_iteration_15 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : (0 ≤ tmp__3) ∧ (tmp__3 < Vermilion.usizeMod))
    (call_vec_index_ensures_1 : tmp__3 = Vermilion.Seq.index roots r)
    (call_vec_index_1_ensures_0 : tmp__4 ↔ Vermilion.Seq.index retained tmp__3)
    (then_3_assume_20 : (¬ tmp__4) → False)
    (then_3_assume_21 : (¬ tmp__4) → False)
    (assert_8 : (0 ≤ (r + 1)) ∧ ((r + 1) < Vermilion.usizeMod)) :
    ((0 ≤ (Vermilion.Seq.len roots - (Vermilion.emod (r + 1) Vermilion.usizeMod))) ∧ ((Vermilion.Seq.len roots - (Vermilion.emod (r + 1) Vermilion.usizeMod)) < (Vermilion.Seq.len roots - r))) ∨ (((Vermilion.Seq.len roots - (Vermilion.emod (r + 1) Vermilion.usizeMod)) = (Vermilion.Seq.len roots - r)) ∧ False) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.assert_0_decreases

-- vrml:begin reclaim_plan.check_plan.invariant_entry_1_0 0395b4f4843ce5a7
/--
Generated VC `reclaim_plan.check_plan.invariant_entry_1_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:317:19-317:40`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_0`
- Statement hash: `0395b4f4843ce5a7`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_entry_1_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 317
  startColumn := 19
  endLine := 317
  endColumn := 40
  assertId := "1_0"
  functionName := "reclaim_plan.check_plan"
  kind := "invariant_entry"
  statementHash := "0395b4f4843ce5a7"
}
@[vrml_obligation] theorem invariant_entry_1_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (requires_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (requires_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (requires_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (requires_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (requires_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → ((0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod)))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod)))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (then_2_assume_15 : tmp__2 → False)
    (then_2_assume_16 : tmp__2 → False)
    (loop_0_exit_0 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_exit_3 : Vermilion.Seq.len retained = n)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots))) :
    (0 ≤ 0) ∧ (0 ≤ Vermilion.Seq.len edges) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.invariant_entry_1_0

-- vrml:begin reclaim_plan.check_plan.invariant_entry_1_1 91e7dfafb8788306
/--
Generated VC `reclaim_plan.check_plan.invariant_entry_1_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:317:42-317:79`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_1`
- Statement hash: `91e7dfafb8788306`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_entry_1_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 317
  startColumn := 42
  endLine := 317
  endColumn := 79
  assertId := "1_1"
  functionName := "reclaim_plan.check_plan"
  kind := "invariant_entry"
  statementHash := "91e7dfafb8788306"
}
@[vrml_obligation] theorem invariant_entry_1_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (requires_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (requires_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (requires_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (requires_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (requires_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → ((0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod)))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod)))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (then_2_assume_15 : tmp__2 → False)
    (then_2_assume_16 : tmp__2 → False)
    (loop_0_exit_0 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_exit_3 : Vermilion.Seq.len retained = n)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots))) :
    reclaim_plan.edges_in_range_spec n edges := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.invariant_entry_1_1

-- vrml:begin reclaim_plan.check_plan.invariant_entry_1_2 ac8a5bf0120f9b15
/--
Generated VC `reclaim_plan.check_plan.invariant_entry_1_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:317:81-317:101`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_2`
- Statement hash: `ac8a5bf0120f9b15`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_entry_1_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 317
  startColumn := 81
  endLine := 317
  endColumn := 101
  assertId := "1_2"
  functionName := "reclaim_plan.check_plan"
  kind := "invariant_entry"
  statementHash := "ac8a5bf0120f9b15"
}
@[vrml_obligation] theorem invariant_entry_1_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (requires_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (requires_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (requires_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (requires_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (requires_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → ((0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod)))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod)))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (then_2_assume_15 : tmp__2 → False)
    (then_2_assume_16 : tmp__2 → False)
    (loop_0_exit_0 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_exit_3 : Vermilion.Seq.len retained = n)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots))) :
    Vermilion.Seq.len retained = n := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.invariant_entry_1_2

-- vrml:begin reclaim_plan.check_plan.invariant_entry_1_3 83605b43d0f637be
/--
Generated VC `reclaim_plan.check_plan.invariant_entry_1_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:318:13-319:82`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_3`
- Statement hash: `83605b43d0f637be`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_entry_1_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 318
  startColumn := 13
  endLine := 319
  endColumn := 82
  assertId := "1_3"
  functionName := "reclaim_plan.check_plan"
  kind := "invariant_entry"
  statementHash := "83605b43d0f637be"
}
@[vrml_obligation] theorem invariant_entry_1_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (requires_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (requires_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (requires_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (requires_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (requires_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → ((0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod)))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod)))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (then_2_assume_15 : tmp__2 → False)
    (then_2_assume_16 : tmp__2 → False)
    (loop_0_exit_0 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_exit_3 : Vermilion.Seq.len retained = n)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots))) :
    (∀ (j : Int), (((0 ≤ j) ∧ (j < 0)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.invariant_entry_1_3

-- vrml:begin reclaim_plan.check_plan.call_requires_10 b0b1235df1ed4c7e
/--
Generated VC `reclaim_plan.check_plan.call_requires_10`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:322:22-322:30`
- Rust/SST construct: call vec_index
- AssertId: `10`
- Statement hash: `b0b1235df1ed4c7e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def call_requires_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 322
  startColumn := 22
  endLine := 322
  endColumn := 30
  assertId := "10"
  functionName := "reclaim_plan.check_plan"
  kind := "call_requires"
  statementHash := "b0b1235df1ed4c7e"
}
@[vrml_obligation] theorem call_requires_10
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (i : Int)
    (loop_1_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_1_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_iteration_13 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_iteration_14 : Vermilion.Seq.len retained = n)
    (loop_1_iteration_15 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_iteration_16 : i < Vermilion.Seq.len edges) :
    i < Vermilion.Seq.len edges := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.call_requires_10

-- vrml:begin reclaim_plan.check_plan.call_requires_11 8ff9074e6684438d
/--
Generated VC `reclaim_plan.check_plan.call_requires_11`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:323:12-323:23`
- Rust/SST construct: call vec_index
- AssertId: `11`
- Statement hash: `8ff9074e6684438d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def call_requires_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 323
  startColumn := 12
  endLine := 323
  endColumn := 23
  assertId := "11"
  functionName := "reclaim_plan.check_plan"
  kind := "call_requires"
  statementHash := "8ff9074e6684438d"
}
@[vrml_obligation] theorem call_requires_11
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (i : Int)
    (tmp__5 : (vermilion.tuple_2 Int Int))
    (loop_1_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_1_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_iteration_13 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_iteration_14 : Vermilion.Seq.len retained = n)
    (loop_1_iteration_15 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_iteration_16 : i < Vermilion.Seq.len edges)
    (call_vec_index_2_ensures_0 : (0 ≤ vermilion.tuple_2.get_tuple_2__0 tmp__5) ∧ (vermilion.tuple_2.get_tuple_2__0 tmp__5 < Vermilion.usizeMod))
    (call_vec_index_2_ensures_1 : (0 ≤ vermilion.tuple_2.get_tuple_2__1 tmp__5) ∧ (vermilion.tuple_2.get_tuple_2__1 tmp__5 < Vermilion.usizeMod))
    (call_vec_index_2_ensures_2 : tmp__5 = Vermilion.Seq.index edges i) :
    vermilion.tuple_2.get_tuple_2__0 tmp__5 < Vermilion.Seq.len retained := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.call_requires_11

-- vrml:begin reclaim_plan.check_plan.call_requires_12 fb1ec1c897f71a9f
/--
Generated VC `reclaim_plan.check_plan.call_requires_12`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:323:28-323:39`
- Rust/SST construct: call vec_index
- AssertId: `12`
- Statement hash: `fb1ec1c897f71a9f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def call_requires_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 323
  startColumn := 28
  endLine := 323
  endColumn := 39
  assertId := "12"
  functionName := "reclaim_plan.check_plan"
  kind := "call_requires"
  statementHash := "fb1ec1c897f71a9f"
}
@[vrml_obligation] theorem call_requires_12
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (i : Int)
    (tmp__5 : (vermilion.tuple_2 Int Int))
    (tmp__6 : Prop)
    (tmp__8 : Prop)
    (loop_1_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_1_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_iteration_13 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_iteration_14 : Vermilion.Seq.len retained = n)
    (loop_1_iteration_15 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_iteration_16 : i < Vermilion.Seq.len edges)
    (call_vec_index_2_ensures_0 : (0 ≤ vermilion.tuple_2.get_tuple_2__0 tmp__5) ∧ (vermilion.tuple_2.get_tuple_2__0 tmp__5 < Vermilion.usizeMod))
    (call_vec_index_2_ensures_1 : (0 ≤ vermilion.tuple_2.get_tuple_2__1 tmp__5) ∧ (vermilion.tuple_2.get_tuple_2__1 tmp__5 < Vermilion.usizeMod))
    (call_vec_index_2_ensures_2 : tmp__5 = Vermilion.Seq.index edges i)
    (call_vec_index_3_ensures_0 : tmp__6 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 tmp__5))
    (branch_4 : tmp__6) :
    vermilion.tuple_2.get_tuple_2__1 tmp__5 < Vermilion.Seq.len retained := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.call_requires_12

-- vrml:begin reclaim_plan.check_plan.ensures_13 c1ae941a6a381819
/--
Generated VC `reclaim_plan.check_plan.ensures_13`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:299:13-299:100`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `13`
- Statement hash: `c1ae941a6a381819`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def ensures_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 299
  startColumn := 13
  endLine := 299
  endColumn := 100
  assertId := "13"
  functionName := "reclaim_plan.check_plan"
  kind := "ensures"
  statementHash := "c1ae941a6a381819"
}
@[vrml_obligation] theorem ensures_13
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (i : Int)
    (tmp__5 : (vermilion.tuple_2 Int Int))
    (tmp__6 : Prop)
    (tmp__8 : Prop)
    (tmp__7 : Prop)
    (loop_1_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_1_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_iteration_13 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_iteration_14 : Vermilion.Seq.len retained = n)
    (loop_1_iteration_15 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_iteration_16 : i < Vermilion.Seq.len edges)
    (call_vec_index_2_ensures_0 : (0 ≤ vermilion.tuple_2.get_tuple_2__0 tmp__5) ∧ (vermilion.tuple_2.get_tuple_2__0 tmp__5 < Vermilion.usizeMod))
    (call_vec_index_2_ensures_1 : (0 ≤ vermilion.tuple_2.get_tuple_2__1 tmp__5) ∧ (vermilion.tuple_2.get_tuple_2__1 tmp__5 < Vermilion.usizeMod))
    (call_vec_index_2_ensures_2 : tmp__5 = Vermilion.Seq.index edges i)
    (call_vec_index_3_ensures_0 : tmp__6 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 tmp__5))
    (then_4_call_vec_index_4_ensures_0 : tmp__6 → (tmp__7 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 tmp__5)))
    (then_4_assume_23 : tmp__6 → (tmp__8 ↔ (¬ tmp__7)))
    (else_4_assume_22 : (¬ tmp__6) → (tmp__8 ↔ False))
    (branch_5 : tmp__8) :
    False ↔ reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.ensures_13

-- vrml:begin reclaim_plan.check_plan.assert_14 974f7cfd864474f2
/--
Generated VC `reclaim_plan.check_plan.assert_14`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:326:9-326:15`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `14`
- Statement hash: `974f7cfd864474f2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def assert_14_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 326
  startColumn := 9
  endLine := 326
  endColumn := 15
  assertId := "14"
  functionName := "reclaim_plan.check_plan"
  kind := "assert"
  statementHash := "974f7cfd864474f2"
}
@[vrml_obligation] theorem assert_14
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (i : Int)
    (tmp__5 : (vermilion.tuple_2 Int Int))
    (tmp__6 : Prop)
    (tmp__8 : Prop)
    (tmp__7 : Prop)
    (loop_1_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_1_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_iteration_13 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_iteration_14 : Vermilion.Seq.len retained = n)
    (loop_1_iteration_15 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_iteration_16 : i < Vermilion.Seq.len edges)
    (call_vec_index_2_ensures_0 : (0 ≤ vermilion.tuple_2.get_tuple_2__0 tmp__5) ∧ (vermilion.tuple_2.get_tuple_2__0 tmp__5 < Vermilion.usizeMod))
    (call_vec_index_2_ensures_1 : (0 ≤ vermilion.tuple_2.get_tuple_2__1 tmp__5) ∧ (vermilion.tuple_2.get_tuple_2__1 tmp__5 < Vermilion.usizeMod))
    (call_vec_index_2_ensures_2 : tmp__5 = Vermilion.Seq.index edges i)
    (call_vec_index_3_ensures_0 : tmp__6 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 tmp__5))
    (then_4_call_vec_index_4_ensures_0 : tmp__6 → (tmp__7 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 tmp__5)))
    (then_4_assume_23 : tmp__6 → (tmp__8 ↔ (¬ tmp__7)))
    (else_4_assume_22 : (¬ tmp__6) → (tmp__8 ↔ False))
    (then_5_assume_25 : tmp__8 → False)
    (then_5_assume_26 : tmp__8 → False) :
    (0 ≤ (i + 1)) ∧ ((i + 1) < Vermilion.usizeMod) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.assert_14

-- vrml:begin reclaim_plan.check_plan.invariant_preserve_1_0 7f7f18fe81d8c3ad
/--
Generated VC `reclaim_plan.check_plan.invariant_preserve_1_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:317:19-317:40`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_0`
- Statement hash: `7f7f18fe81d8c3ad`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def invariant_preserve_1_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 317
  startColumn := 19
  endLine := 317
  endColumn := 40
  assertId := "1_0"
  functionName := "reclaim_plan.check_plan"
  kind := "invariant_preserve"
  statementHash := "7f7f18fe81d8c3ad"
}
@[vrml_obligation] theorem invariant_preserve_1_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (i : Int)
    (tmp__5 : (vermilion.tuple_2 Int Int))
    (tmp__6 : Prop)
    (tmp__8 : Prop)
    (tmp__7 : Prop)
    (loop_1_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_1_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_iteration_13 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_iteration_14 : Vermilion.Seq.len retained = n)
    (loop_1_iteration_15 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_iteration_16 : i < Vermilion.Seq.len edges)
    (call_vec_index_2_ensures_0 : (0 ≤ vermilion.tuple_2.get_tuple_2__0 tmp__5) ∧ (vermilion.tuple_2.get_tuple_2__0 tmp__5 < Vermilion.usizeMod))
    (call_vec_index_2_ensures_1 : (0 ≤ vermilion.tuple_2.get_tuple_2__1 tmp__5) ∧ (vermilion.tuple_2.get_tuple_2__1 tmp__5 < Vermilion.usizeMod))
    (call_vec_index_2_ensures_2 : tmp__5 = Vermilion.Seq.index edges i)
    (call_vec_index_3_ensures_0 : tmp__6 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 tmp__5))
    (then_4_call_vec_index_4_ensures_0 : tmp__6 → (tmp__7 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 tmp__5)))
    (then_4_assume_23 : tmp__6 → (tmp__8 ↔ (¬ tmp__7)))
    (else_4_assume_22 : (¬ tmp__6) → (tmp__8 ↔ False))
    (then_5_assume_25 : tmp__8 → False)
    (then_5_assume_26 : tmp__8 → False)
    (assert_14 : (0 ≤ (i + 1)) ∧ ((i + 1) < Vermilion.usizeMod)) :
    (0 ≤ (Vermilion.emod (i + 1) Vermilion.usizeMod)) ∧ ((Vermilion.emod (i + 1) Vermilion.usizeMod) ≤ Vermilion.Seq.len edges) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.invariant_preserve_1_0

-- vrml:begin reclaim_plan.check_plan.invariant_preserve_1_1 ef051cb0528d878c
/--
Generated VC `reclaim_plan.check_plan.invariant_preserve_1_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:317:42-317:79`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_1`
- Statement hash: `ef051cb0528d878c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def invariant_preserve_1_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 317
  startColumn := 42
  endLine := 317
  endColumn := 79
  assertId := "1_1"
  functionName := "reclaim_plan.check_plan"
  kind := "invariant_preserve"
  statementHash := "ef051cb0528d878c"
}
@[vrml_obligation] theorem invariant_preserve_1_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (i : Int)
    (tmp__5 : (vermilion.tuple_2 Int Int))
    (tmp__6 : Prop)
    (tmp__8 : Prop)
    (tmp__7 : Prop)
    (loop_1_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_1_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_iteration_13 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_iteration_14 : Vermilion.Seq.len retained = n)
    (loop_1_iteration_15 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_iteration_16 : i < Vermilion.Seq.len edges)
    (call_vec_index_2_ensures_0 : (0 ≤ vermilion.tuple_2.get_tuple_2__0 tmp__5) ∧ (vermilion.tuple_2.get_tuple_2__0 tmp__5 < Vermilion.usizeMod))
    (call_vec_index_2_ensures_1 : (0 ≤ vermilion.tuple_2.get_tuple_2__1 tmp__5) ∧ (vermilion.tuple_2.get_tuple_2__1 tmp__5 < Vermilion.usizeMod))
    (call_vec_index_2_ensures_2 : tmp__5 = Vermilion.Seq.index edges i)
    (call_vec_index_3_ensures_0 : tmp__6 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 tmp__5))
    (then_4_call_vec_index_4_ensures_0 : tmp__6 → (tmp__7 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 tmp__5)))
    (then_4_assume_23 : tmp__6 → (tmp__8 ↔ (¬ tmp__7)))
    (else_4_assume_22 : (¬ tmp__6) → (tmp__8 ↔ False))
    (then_5_assume_25 : tmp__8 → False)
    (then_5_assume_26 : tmp__8 → False)
    (assert_14 : (0 ≤ (i + 1)) ∧ ((i + 1) < Vermilion.usizeMod)) :
    reclaim_plan.edges_in_range_spec n edges := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.invariant_preserve_1_1

-- vrml:begin reclaim_plan.check_plan.invariant_preserve_1_2 c389bdd307ba1f63
/--
Generated VC `reclaim_plan.check_plan.invariant_preserve_1_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:317:81-317:101`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_2`
- Statement hash: `c389bdd307ba1f63`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def invariant_preserve_1_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 317
  startColumn := 81
  endLine := 317
  endColumn := 101
  assertId := "1_2"
  functionName := "reclaim_plan.check_plan"
  kind := "invariant_preserve"
  statementHash := "c389bdd307ba1f63"
}
@[vrml_obligation] theorem invariant_preserve_1_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (i : Int)
    (tmp__5 : (vermilion.tuple_2 Int Int))
    (tmp__6 : Prop)
    (tmp__8 : Prop)
    (tmp__7 : Prop)
    (loop_1_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_1_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_iteration_13 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_iteration_14 : Vermilion.Seq.len retained = n)
    (loop_1_iteration_15 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_iteration_16 : i < Vermilion.Seq.len edges)
    (call_vec_index_2_ensures_0 : (0 ≤ vermilion.tuple_2.get_tuple_2__0 tmp__5) ∧ (vermilion.tuple_2.get_tuple_2__0 tmp__5 < Vermilion.usizeMod))
    (call_vec_index_2_ensures_1 : (0 ≤ vermilion.tuple_2.get_tuple_2__1 tmp__5) ∧ (vermilion.tuple_2.get_tuple_2__1 tmp__5 < Vermilion.usizeMod))
    (call_vec_index_2_ensures_2 : tmp__5 = Vermilion.Seq.index edges i)
    (call_vec_index_3_ensures_0 : tmp__6 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 tmp__5))
    (then_4_call_vec_index_4_ensures_0 : tmp__6 → (tmp__7 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 tmp__5)))
    (then_4_assume_23 : tmp__6 → (tmp__8 ↔ (¬ tmp__7)))
    (else_4_assume_22 : (¬ tmp__6) → (tmp__8 ↔ False))
    (then_5_assume_25 : tmp__8 → False)
    (then_5_assume_26 : tmp__8 → False)
    (assert_14 : (0 ≤ (i + 1)) ∧ ((i + 1) < Vermilion.usizeMod)) :
    Vermilion.Seq.len retained = n := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.invariant_preserve_1_2

-- vrml:begin reclaim_plan.check_plan.invariant_preserve_1_3 0f04f35f47f62b5a
/--
Generated VC `reclaim_plan.check_plan.invariant_preserve_1_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:318:13-319:82`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_3`
- Statement hash: `0f04f35f47f62b5a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def invariant_preserve_1_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 318
  startColumn := 13
  endLine := 319
  endColumn := 82
  assertId := "1_3"
  functionName := "reclaim_plan.check_plan"
  kind := "invariant_preserve"
  statementHash := "0f04f35f47f62b5a"
}
@[vrml_obligation] theorem invariant_preserve_1_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (i : Int)
    (tmp__5 : (vermilion.tuple_2 Int Int))
    (tmp__6 : Prop)
    (tmp__8 : Prop)
    (tmp__7 : Prop)
    (loop_1_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_1_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_iteration_13 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_iteration_14 : Vermilion.Seq.len retained = n)
    (loop_1_iteration_15 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_iteration_16 : i < Vermilion.Seq.len edges)
    (call_vec_index_2_ensures_0 : (0 ≤ vermilion.tuple_2.get_tuple_2__0 tmp__5) ∧ (vermilion.tuple_2.get_tuple_2__0 tmp__5 < Vermilion.usizeMod))
    (call_vec_index_2_ensures_1 : (0 ≤ vermilion.tuple_2.get_tuple_2__1 tmp__5) ∧ (vermilion.tuple_2.get_tuple_2__1 tmp__5 < Vermilion.usizeMod))
    (call_vec_index_2_ensures_2 : tmp__5 = Vermilion.Seq.index edges i)
    (call_vec_index_3_ensures_0 : tmp__6 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 tmp__5))
    (then_4_call_vec_index_4_ensures_0 : tmp__6 → (tmp__7 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 tmp__5)))
    (then_4_assume_23 : tmp__6 → (tmp__8 ↔ (¬ tmp__7)))
    (else_4_assume_22 : (¬ tmp__6) → (tmp__8 ↔ False))
    (then_5_assume_25 : tmp__8 → False)
    (then_5_assume_26 : tmp__8 → False)
    (assert_14 : (0 ≤ (i + 1)) ∧ ((i + 1) < Vermilion.usizeMod)) :
    (∀ (j : Int), (((0 ≤ j) ∧ (j < (Vermilion.emod (i + 1) Vermilion.usizeMod))) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))) := by
  have hr : Vermilion.emod (i + 1) Vermilion.usizeMod = i + 1 := Vermilion.emod_usizeMod_of_lt assert_14.1 assert_14.2
  rw [hr]
  intro j hj
  by_cases hji : j < i
  · exact loop_1_iteration_15 j ⟨hj.1, hji⟩
  · have : j = i := by omega
    rw [this, ← call_vec_index_2_ensures_2]
    intro h0
    have h6 : tmp__6 := call_vec_index_3_ensures_0.mpr h0
    have n8 : ¬ tmp__8 := fun h => then_5_assume_25 h
    have h7 : tmp__7 := by
      by_contra h7; exact n8 ((then_4_assume_23 h6).mpr h7)
    exact (then_4_call_vec_index_4_ensures_0 h6).mp h7
-- vrml:end reclaim_plan.check_plan.invariant_preserve_1_3

-- vrml:begin reclaim_plan.check_plan.assert_1_decreases c2a529b30dd41834
/--
Generated VC `reclaim_plan.check_plan.assert_1_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:320:19-320:34`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `1_decreases`
- Statement hash: `c2a529b30dd41834`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def assert_1_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 320
  startColumn := 19
  endLine := 320
  endColumn := 34
  assertId := "1_decreases"
  functionName := "reclaim_plan.check_plan"
  kind := "assert"
  statementHash := "c2a529b30dd41834"
}
@[vrml_obligation] theorem assert_1_decreases
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (i : Int)
    (tmp__5 : (vermilion.tuple_2 Int Int))
    (tmp__6 : Prop)
    (tmp__8 : Prop)
    (tmp__7 : Prop)
    (loop_1_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_1_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_1_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_1_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_1_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_1_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_1_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_1_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_1_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_1_iteration_11 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_iteration_12 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_iteration_13 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_iteration_14 : Vermilion.Seq.len retained = n)
    (loop_1_iteration_15 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_iteration_16 : i < Vermilion.Seq.len edges)
    (call_vec_index_2_ensures_0 : (0 ≤ vermilion.tuple_2.get_tuple_2__0 tmp__5) ∧ (vermilion.tuple_2.get_tuple_2__0 tmp__5 < Vermilion.usizeMod))
    (call_vec_index_2_ensures_1 : (0 ≤ vermilion.tuple_2.get_tuple_2__1 tmp__5) ∧ (vermilion.tuple_2.get_tuple_2__1 tmp__5 < Vermilion.usizeMod))
    (call_vec_index_2_ensures_2 : tmp__5 = Vermilion.Seq.index edges i)
    (call_vec_index_3_ensures_0 : tmp__6 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 tmp__5))
    (then_4_call_vec_index_4_ensures_0 : tmp__6 → (tmp__7 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 tmp__5)))
    (then_4_assume_23 : tmp__6 → (tmp__8 ↔ (¬ tmp__7)))
    (else_4_assume_22 : (¬ tmp__6) → (tmp__8 ↔ False))
    (then_5_assume_25 : tmp__8 → False)
    (then_5_assume_26 : tmp__8 → False)
    (assert_14 : (0 ≤ (i + 1)) ∧ ((i + 1) < Vermilion.usizeMod)) :
    ((0 ≤ (Vermilion.Seq.len edges - (Vermilion.emod (i + 1) Vermilion.usizeMod))) ∧ ((Vermilion.Seq.len edges - (Vermilion.emod (i + 1) Vermilion.usizeMod)) < (Vermilion.Seq.len edges - i))) ∨ (((Vermilion.Seq.len edges - (Vermilion.emod (i + 1) Vermilion.usizeMod)) = (Vermilion.Seq.len edges - i)) ∧ False) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.assert_1_decreases

-- vrml:begin reclaim_plan.check_plan.invariant_entry_2_0 753645063d591500
/--
Generated VC `reclaim_plan.check_plan.invariant_entry_2_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:330:19-330:30`
- Rust/SST construct: loop invariant on entry
- AssertId: `2_0`
- Statement hash: `753645063d591500`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def invariant_entry_2_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 330
  startColumn := 19
  endLine := 330
  endColumn := 30
  assertId := "2_0"
  functionName := "reclaim_plan.check_plan"
  kind := "invariant_entry"
  statementHash := "753645063d591500"
}
@[vrml_obligation] theorem invariant_entry_2_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (i : Int)
    (requires_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (requires_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (requires_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (requires_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (requires_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → ((0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod)))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod)))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (then_2_assume_15 : tmp__2 → False)
    (then_2_assume_16 : tmp__2 → False)
    (loop_0_exit_0 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_exit_3 : Vermilion.Seq.len retained = n)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (loop_1_exit_0 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_exit_1 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_exit_2 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_exit_3 : Vermilion.Seq.len retained = n)
    (loop_1_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_exit_5 : (¬ (i < Vermilion.Seq.len edges))) :
    (0 ≤ 0) ∧ (0 ≤ n) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.invariant_entry_2_0

-- vrml:begin reclaim_plan.check_plan.invariant_entry_2_1 9e03841816b7445c
/--
Generated VC `reclaim_plan.check_plan.invariant_entry_2_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:330:32-330:53`
- Rust/SST construct: loop invariant on entry
- AssertId: `2_1`
- Statement hash: `9e03841816b7445c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def invariant_entry_2_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 330
  startColumn := 32
  endLine := 330
  endColumn := 53
  assertId := "2_1"
  functionName := "reclaim_plan.check_plan"
  kind := "invariant_entry"
  statementHash := "9e03841816b7445c"
}
@[vrml_obligation] theorem invariant_entry_2_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (i : Int)
    (requires_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (requires_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (requires_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (requires_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (requires_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → ((0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod)))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod)))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (then_2_assume_15 : tmp__2 → False)
    (then_2_assume_16 : tmp__2 → False)
    (loop_0_exit_0 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_exit_3 : Vermilion.Seq.len retained = n)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (loop_1_exit_0 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_exit_1 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_exit_2 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_exit_3 : Vermilion.Seq.len retained = n)
    (loop_1_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_exit_5 : (¬ (i < Vermilion.Seq.len edges))) :
    Vermilion.Seq.len candidate = n := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.invariant_entry_2_1

-- vrml:begin reclaim_plan.check_plan.invariant_entry_2_2 0fe8984299b8e0f5
/--
Generated VC `reclaim_plan.check_plan.invariant_entry_2_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:330:55-330:75`
- Rust/SST construct: loop invariant on entry
- AssertId: `2_2`
- Statement hash: `0fe8984299b8e0f5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def invariant_entry_2_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 330
  startColumn := 55
  endLine := 330
  endColumn := 75
  assertId := "2_2"
  functionName := "reclaim_plan.check_plan"
  kind := "invariant_entry"
  statementHash := "0fe8984299b8e0f5"
}
@[vrml_obligation] theorem invariant_entry_2_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (i : Int)
    (requires_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (requires_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (requires_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (requires_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (requires_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → ((0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod)))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod)))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (then_2_assume_15 : tmp__2 → False)
    (then_2_assume_16 : tmp__2 → False)
    (loop_0_exit_0 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_exit_3 : Vermilion.Seq.len retained = n)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (loop_1_exit_0 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_exit_1 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_exit_2 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_exit_3 : Vermilion.Seq.len retained = n)
    (loop_1_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_exit_5 : (¬ (i < Vermilion.Seq.len edges))) :
    Vermilion.Seq.len retained = n := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.invariant_entry_2_2

-- vrml:begin reclaim_plan.check_plan.invariant_entry_2_3 358d502be2f598e2
/--
Generated VC `reclaim_plan.check_plan.invariant_entry_2_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:330:77-330:100`
- Rust/SST construct: loop invariant on entry
- AssertId: `2_3`
- Statement hash: `358d502be2f598e2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def invariant_entry_2_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 330
  startColumn := 77
  endLine := 330
  endColumn := 100
  assertId := "2_3"
  functionName := "reclaim_plan.check_plan"
  kind := "invariant_entry"
  statementHash := "358d502be2f598e2"
}
@[vrml_obligation] theorem invariant_entry_2_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (i : Int)
    (requires_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (requires_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (requires_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (requires_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (requires_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → ((0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod)))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod)))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (then_2_assume_15 : tmp__2 → False)
    (then_2_assume_16 : tmp__2 → False)
    (loop_0_exit_0 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_exit_3 : Vermilion.Seq.len retained = n)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (loop_1_exit_0 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_exit_1 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_exit_2 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_exit_3 : Vermilion.Seq.len retained = n)
    (loop_1_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_exit_5 : (¬ (i < Vermilion.Seq.len edges))) :
    Vermilion.Seq.len reclaimable = n := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.invariant_entry_2_3

-- vrml:begin reclaim_plan.check_plan.invariant_entry_2_4 18d73b94ec664a96
/--
Generated VC `reclaim_plan.check_plan.invariant_entry_2_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:331:13-331:120`
- Rust/SST construct: loop invariant on entry
- AssertId: `2_4`
- Statement hash: `18d73b94ec664a96`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index candidate k⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def invariant_entry_2_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 331
  startColumn := 13
  endLine := 331
  endColumn := 120
  assertId := "2_4"
  functionName := "reclaim_plan.check_plan"
  kind := "invariant_entry"
  statementHash := "18d73b94ec664a96"
}
@[vrml_obligation] theorem invariant_entry_2_4
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (i : Int)
    (requires_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (requires_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (requires_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (requires_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (requires_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → ((0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod)))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod)))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (then_2_assume_15 : tmp__2 → False)
    (then_2_assume_16 : tmp__2 → False)
    (loop_0_exit_0 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_exit_3 : Vermilion.Seq.len retained = n)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (loop_1_exit_0 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_exit_1 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_exit_2 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_exit_3 : Vermilion.Seq.len retained = n)
    (loop_1_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_exit_5 : (¬ (i < Vermilion.Seq.len edges))) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < 0)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained k))))) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.invariant_entry_2_4

-- vrml:begin reclaim_plan.check_plan.call_requires_15 da5c29b123d7acfc
/--
Generated VC `reclaim_plan.check_plan.call_requires_15`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:334:12-334:24`
- Rust/SST construct: call vec_index
- AssertId: `15`
- Statement hash: `da5c29b123d7acfc`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index candidate k⟩
-/
def call_requires_15_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 334
  startColumn := 12
  endLine := 334
  endColumn := 24
  assertId := "15"
  functionName := "reclaim_plan.check_plan"
  kind := "call_requires"
  statementHash := "da5c29b123d7acfc"
}
@[vrml_obligation] theorem call_requires_15
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (i : Int)
    (v : Int)
    (loop_2_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_2_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_2_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_2_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_2_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_2_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_2_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_2_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_2_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_2_iteration_11 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_2_iteration_12 : (0 ≤ v) ∧ (v < Vermilion.usizeMod))
    (loop_2_iteration_13 : (0 ≤ v) ∧ (v ≤ n))
    (loop_2_iteration_14 : Vermilion.Seq.len candidate = n)
    (loop_2_iteration_15 : Vermilion.Seq.len retained = n)
    (loop_2_iteration_16 : Vermilion.Seq.len reclaimable = n)
    (loop_2_iteration_17 : (∀ (k : Int), (((0 ≤ k) ∧ (k < v)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained k))))))
    (loop_2_iteration_18 : v < n) :
    v < Vermilion.Seq.len candidate := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.call_requires_15

-- vrml:begin reclaim_plan.check_plan.call_requires_16 20646617d9b19a4b
/--
Generated VC `reclaim_plan.check_plan.call_requires_16`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:334:29-334:43`
- Rust/SST construct: call vec_index
- AssertId: `16`
- Statement hash: `20646617d9b19a4b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index candidate k⟩
-/
def call_requires_16_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 334
  startColumn := 29
  endLine := 334
  endColumn := 43
  assertId := "16"
  functionName := "reclaim_plan.check_plan"
  kind := "call_requires"
  statementHash := "20646617d9b19a4b"
}
@[vrml_obligation] theorem call_requires_16
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (i : Int)
    (v : Int)
    (tmp__9 : Prop)
    (loop_2_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_2_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_2_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_2_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_2_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_2_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_2_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_2_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_2_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_2_iteration_11 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_2_iteration_12 : (0 ≤ v) ∧ (v < Vermilion.usizeMod))
    (loop_2_iteration_13 : (0 ≤ v) ∧ (v ≤ n))
    (loop_2_iteration_14 : Vermilion.Seq.len candidate = n)
    (loop_2_iteration_15 : Vermilion.Seq.len retained = n)
    (loop_2_iteration_16 : Vermilion.Seq.len reclaimable = n)
    (loop_2_iteration_17 : (∀ (k : Int), (((0 ≤ k) ∧ (k < v)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained k))))))
    (loop_2_iteration_18 : v < n)
    (call_vec_index_5_ensures_0 : tmp__9 ↔ Vermilion.Seq.index candidate v) :
    v < Vermilion.Seq.len reclaimable := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.call_requires_16

-- vrml:begin reclaim_plan.check_plan.call_requires_17 22bbcfc106ce60e0
/--
Generated VC `reclaim_plan.check_plan.call_requires_17`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:334:48-334:59`
- Rust/SST construct: call vec_index
- AssertId: `17`
- Statement hash: `22bbcfc106ce60e0`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index candidate k⟩
-/
def call_requires_17_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 334
  startColumn := 48
  endLine := 334
  endColumn := 59
  assertId := "17"
  functionName := "reclaim_plan.check_plan"
  kind := "call_requires"
  statementHash := "22bbcfc106ce60e0"
}
@[vrml_obligation] theorem call_requires_17
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (i : Int)
    (v : Int)
    (tmp__9 : Prop)
    (tmp__10 : Prop)
    (tmp__12 : Prop)
    (loop_2_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_2_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_2_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_2_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_2_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_2_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_2_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_2_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_2_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_2_iteration_11 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_2_iteration_12 : (0 ≤ v) ∧ (v < Vermilion.usizeMod))
    (loop_2_iteration_13 : (0 ≤ v) ∧ (v ≤ n))
    (loop_2_iteration_14 : Vermilion.Seq.len candidate = n)
    (loop_2_iteration_15 : Vermilion.Seq.len retained = n)
    (loop_2_iteration_16 : Vermilion.Seq.len reclaimable = n)
    (loop_2_iteration_17 : (∀ (k : Int), (((0 ≤ k) ∧ (k < v)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained k))))))
    (loop_2_iteration_18 : v < n)
    (call_vec_index_5_ensures_0 : tmp__9 ↔ Vermilion.Seq.index candidate v)
    (call_vec_index_6_ensures_0 : tmp__10 ↔ Vermilion.Seq.index reclaimable v)
    (branch_6 : tmp__10) :
    v < Vermilion.Seq.len retained := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.call_requires_17

-- vrml:begin reclaim_plan.check_plan.ensures_18 b7ba70ef8b584052
/--
Generated VC `reclaim_plan.check_plan.ensures_18`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:299:13-299:100`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `18`
- Statement hash: `b7ba70ef8b584052`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index candidate k⟩
-/
def ensures_18_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 299
  startColumn := 13
  endLine := 299
  endColumn := 100
  assertId := "18"
  functionName := "reclaim_plan.check_plan"
  kind := "ensures"
  statementHash := "b7ba70ef8b584052"
}
@[vrml_obligation] theorem ensures_18
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (i : Int)
    (v : Int)
    (tmp__9 : Prop)
    (tmp__10 : Prop)
    (tmp__12 : Prop)
    (tmp__11 : Prop)
    (loop_2_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_2_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_2_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_2_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_2_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_2_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_2_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_2_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_2_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_2_iteration_11 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_2_iteration_12 : (0 ≤ v) ∧ (v < Vermilion.usizeMod))
    (loop_2_iteration_13 : (0 ≤ v) ∧ (v ≤ n))
    (loop_2_iteration_14 : Vermilion.Seq.len candidate = n)
    (loop_2_iteration_15 : Vermilion.Seq.len retained = n)
    (loop_2_iteration_16 : Vermilion.Seq.len reclaimable = n)
    (loop_2_iteration_17 : (∀ (k : Int), (((0 ≤ k) ∧ (k < v)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained k))))))
    (loop_2_iteration_18 : v < n)
    (call_vec_index_5_ensures_0 : tmp__9 ↔ Vermilion.Seq.index candidate v)
    (call_vec_index_6_ensures_0 : tmp__10 ↔ Vermilion.Seq.index reclaimable v)
    (then_6_call_vec_index_7_ensures_0 : tmp__10 → (tmp__11 ↔ Vermilion.Seq.index retained v))
    (then_6_assume_23 : tmp__10 → (tmp__12 ↔ (¬ tmp__11)))
    (else_6_assume_22 : (¬ tmp__10) → (tmp__12 ↔ False))
    (branch_7 : tmp__9 ↔ ¬ tmp__12) :
    False ↔ reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.ensures_18

-- vrml:begin reclaim_plan.check_plan.assert_19 7ccde04224e64404
/--
Generated VC `reclaim_plan.check_plan.assert_19`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:337:9-337:15`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `19`
- Statement hash: `7ccde04224e64404`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index candidate k⟩
-/
def assert_19_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 337
  startColumn := 9
  endLine := 337
  endColumn := 15
  assertId := "19"
  functionName := "reclaim_plan.check_plan"
  kind := "assert"
  statementHash := "7ccde04224e64404"
}
@[vrml_obligation] theorem assert_19
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (i : Int)
    (v : Int)
    (tmp__9 : Prop)
    (tmp__10 : Prop)
    (tmp__12 : Prop)
    (tmp__11 : Prop)
    (loop_2_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_2_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_2_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_2_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_2_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_2_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_2_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_2_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_2_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_2_iteration_11 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_2_iteration_12 : (0 ≤ v) ∧ (v < Vermilion.usizeMod))
    (loop_2_iteration_13 : (0 ≤ v) ∧ (v ≤ n))
    (loop_2_iteration_14 : Vermilion.Seq.len candidate = n)
    (loop_2_iteration_15 : Vermilion.Seq.len retained = n)
    (loop_2_iteration_16 : Vermilion.Seq.len reclaimable = n)
    (loop_2_iteration_17 : (∀ (k : Int), (((0 ≤ k) ∧ (k < v)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained k))))))
    (loop_2_iteration_18 : v < n)
    (call_vec_index_5_ensures_0 : tmp__9 ↔ Vermilion.Seq.index candidate v)
    (call_vec_index_6_ensures_0 : tmp__10 ↔ Vermilion.Seq.index reclaimable v)
    (then_6_call_vec_index_7_ensures_0 : tmp__10 → (tmp__11 ↔ Vermilion.Seq.index retained v))
    (then_6_assume_23 : tmp__10 → (tmp__12 ↔ (¬ tmp__11)))
    (else_6_assume_22 : (¬ tmp__10) → (tmp__12 ↔ False))
    (then_7_assume_25 : (tmp__9 ↔ ¬ tmp__12) → False)
    (then_7_assume_26 : (tmp__9 ↔ ¬ tmp__12) → False) :
    (0 ≤ (v + 1)) ∧ ((v + 1) < Vermilion.usizeMod) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.assert_19

-- vrml:begin reclaim_plan.check_plan.invariant_preserve_2_0 71a36244aa8d2e37
/--
Generated VC `reclaim_plan.check_plan.invariant_preserve_2_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:330:19-330:30`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `2_0`
- Statement hash: `71a36244aa8d2e37`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index candidate k⟩
-/
def invariant_preserve_2_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 330
  startColumn := 19
  endLine := 330
  endColumn := 30
  assertId := "2_0"
  functionName := "reclaim_plan.check_plan"
  kind := "invariant_preserve"
  statementHash := "71a36244aa8d2e37"
}
@[vrml_obligation] theorem invariant_preserve_2_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (i : Int)
    (v : Int)
    (tmp__9 : Prop)
    (tmp__10 : Prop)
    (tmp__12 : Prop)
    (tmp__11 : Prop)
    (loop_2_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_2_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_2_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_2_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_2_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_2_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_2_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_2_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_2_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_2_iteration_11 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_2_iteration_12 : (0 ≤ v) ∧ (v < Vermilion.usizeMod))
    (loop_2_iteration_13 : (0 ≤ v) ∧ (v ≤ n))
    (loop_2_iteration_14 : Vermilion.Seq.len candidate = n)
    (loop_2_iteration_15 : Vermilion.Seq.len retained = n)
    (loop_2_iteration_16 : Vermilion.Seq.len reclaimable = n)
    (loop_2_iteration_17 : (∀ (k : Int), (((0 ≤ k) ∧ (k < v)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained k))))))
    (loop_2_iteration_18 : v < n)
    (call_vec_index_5_ensures_0 : tmp__9 ↔ Vermilion.Seq.index candidate v)
    (call_vec_index_6_ensures_0 : tmp__10 ↔ Vermilion.Seq.index reclaimable v)
    (then_6_call_vec_index_7_ensures_0 : tmp__10 → (tmp__11 ↔ Vermilion.Seq.index retained v))
    (then_6_assume_23 : tmp__10 → (tmp__12 ↔ (¬ tmp__11)))
    (else_6_assume_22 : (¬ tmp__10) → (tmp__12 ↔ False))
    (then_7_assume_25 : (tmp__9 ↔ ¬ tmp__12) → False)
    (then_7_assume_26 : (tmp__9 ↔ ¬ tmp__12) → False)
    (assert_19 : (0 ≤ (v + 1)) ∧ ((v + 1) < Vermilion.usizeMod)) :
    (0 ≤ (Vermilion.emod (v + 1) Vermilion.usizeMod)) ∧ ((Vermilion.emod (v + 1) Vermilion.usizeMod) ≤ n) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.invariant_preserve_2_0

-- vrml:begin reclaim_plan.check_plan.invariant_preserve_2_1 bfec4815301be4b3
/--
Generated VC `reclaim_plan.check_plan.invariant_preserve_2_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:330:32-330:53`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `2_1`
- Statement hash: `bfec4815301be4b3`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index candidate k⟩
-/
def invariant_preserve_2_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 330
  startColumn := 32
  endLine := 330
  endColumn := 53
  assertId := "2_1"
  functionName := "reclaim_plan.check_plan"
  kind := "invariant_preserve"
  statementHash := "bfec4815301be4b3"
}
@[vrml_obligation] theorem invariant_preserve_2_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (i : Int)
    (v : Int)
    (tmp__9 : Prop)
    (tmp__10 : Prop)
    (tmp__12 : Prop)
    (tmp__11 : Prop)
    (loop_2_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_2_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_2_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_2_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_2_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_2_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_2_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_2_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_2_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_2_iteration_11 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_2_iteration_12 : (0 ≤ v) ∧ (v < Vermilion.usizeMod))
    (loop_2_iteration_13 : (0 ≤ v) ∧ (v ≤ n))
    (loop_2_iteration_14 : Vermilion.Seq.len candidate = n)
    (loop_2_iteration_15 : Vermilion.Seq.len retained = n)
    (loop_2_iteration_16 : Vermilion.Seq.len reclaimable = n)
    (loop_2_iteration_17 : (∀ (k : Int), (((0 ≤ k) ∧ (k < v)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained k))))))
    (loop_2_iteration_18 : v < n)
    (call_vec_index_5_ensures_0 : tmp__9 ↔ Vermilion.Seq.index candidate v)
    (call_vec_index_6_ensures_0 : tmp__10 ↔ Vermilion.Seq.index reclaimable v)
    (then_6_call_vec_index_7_ensures_0 : tmp__10 → (tmp__11 ↔ Vermilion.Seq.index retained v))
    (then_6_assume_23 : tmp__10 → (tmp__12 ↔ (¬ tmp__11)))
    (else_6_assume_22 : (¬ tmp__10) → (tmp__12 ↔ False))
    (then_7_assume_25 : (tmp__9 ↔ ¬ tmp__12) → False)
    (then_7_assume_26 : (tmp__9 ↔ ¬ tmp__12) → False)
    (assert_19 : (0 ≤ (v + 1)) ∧ ((v + 1) < Vermilion.usizeMod)) :
    Vermilion.Seq.len candidate = n := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.invariant_preserve_2_1

-- vrml:begin reclaim_plan.check_plan.invariant_preserve_2_2 5625da5db4401428
/--
Generated VC `reclaim_plan.check_plan.invariant_preserve_2_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:330:55-330:75`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `2_2`
- Statement hash: `5625da5db4401428`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index candidate k⟩
-/
def invariant_preserve_2_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 330
  startColumn := 55
  endLine := 330
  endColumn := 75
  assertId := "2_2"
  functionName := "reclaim_plan.check_plan"
  kind := "invariant_preserve"
  statementHash := "5625da5db4401428"
}
@[vrml_obligation] theorem invariant_preserve_2_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (i : Int)
    (v : Int)
    (tmp__9 : Prop)
    (tmp__10 : Prop)
    (tmp__12 : Prop)
    (tmp__11 : Prop)
    (loop_2_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_2_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_2_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_2_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_2_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_2_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_2_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_2_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_2_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_2_iteration_11 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_2_iteration_12 : (0 ≤ v) ∧ (v < Vermilion.usizeMod))
    (loop_2_iteration_13 : (0 ≤ v) ∧ (v ≤ n))
    (loop_2_iteration_14 : Vermilion.Seq.len candidate = n)
    (loop_2_iteration_15 : Vermilion.Seq.len retained = n)
    (loop_2_iteration_16 : Vermilion.Seq.len reclaimable = n)
    (loop_2_iteration_17 : (∀ (k : Int), (((0 ≤ k) ∧ (k < v)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained k))))))
    (loop_2_iteration_18 : v < n)
    (call_vec_index_5_ensures_0 : tmp__9 ↔ Vermilion.Seq.index candidate v)
    (call_vec_index_6_ensures_0 : tmp__10 ↔ Vermilion.Seq.index reclaimable v)
    (then_6_call_vec_index_7_ensures_0 : tmp__10 → (tmp__11 ↔ Vermilion.Seq.index retained v))
    (then_6_assume_23 : tmp__10 → (tmp__12 ↔ (¬ tmp__11)))
    (else_6_assume_22 : (¬ tmp__10) → (tmp__12 ↔ False))
    (then_7_assume_25 : (tmp__9 ↔ ¬ tmp__12) → False)
    (then_7_assume_26 : (tmp__9 ↔ ¬ tmp__12) → False)
    (assert_19 : (0 ≤ (v + 1)) ∧ ((v + 1) < Vermilion.usizeMod)) :
    Vermilion.Seq.len retained = n := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.invariant_preserve_2_2

-- vrml:begin reclaim_plan.check_plan.invariant_preserve_2_3 f0c62d4423c94a69
/--
Generated VC `reclaim_plan.check_plan.invariant_preserve_2_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:330:77-330:100`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `2_3`
- Statement hash: `f0c62d4423c94a69`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index candidate k⟩
-/
def invariant_preserve_2_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 330
  startColumn := 77
  endLine := 330
  endColumn := 100
  assertId := "2_3"
  functionName := "reclaim_plan.check_plan"
  kind := "invariant_preserve"
  statementHash := "f0c62d4423c94a69"
}
@[vrml_obligation] theorem invariant_preserve_2_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (i : Int)
    (v : Int)
    (tmp__9 : Prop)
    (tmp__10 : Prop)
    (tmp__12 : Prop)
    (tmp__11 : Prop)
    (loop_2_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_2_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_2_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_2_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_2_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_2_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_2_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_2_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_2_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_2_iteration_11 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_2_iteration_12 : (0 ≤ v) ∧ (v < Vermilion.usizeMod))
    (loop_2_iteration_13 : (0 ≤ v) ∧ (v ≤ n))
    (loop_2_iteration_14 : Vermilion.Seq.len candidate = n)
    (loop_2_iteration_15 : Vermilion.Seq.len retained = n)
    (loop_2_iteration_16 : Vermilion.Seq.len reclaimable = n)
    (loop_2_iteration_17 : (∀ (k : Int), (((0 ≤ k) ∧ (k < v)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained k))))))
    (loop_2_iteration_18 : v < n)
    (call_vec_index_5_ensures_0 : tmp__9 ↔ Vermilion.Seq.index candidate v)
    (call_vec_index_6_ensures_0 : tmp__10 ↔ Vermilion.Seq.index reclaimable v)
    (then_6_call_vec_index_7_ensures_0 : tmp__10 → (tmp__11 ↔ Vermilion.Seq.index retained v))
    (then_6_assume_23 : tmp__10 → (tmp__12 ↔ (¬ tmp__11)))
    (else_6_assume_22 : (¬ tmp__10) → (tmp__12 ↔ False))
    (then_7_assume_25 : (tmp__9 ↔ ¬ tmp__12) → False)
    (then_7_assume_26 : (tmp__9 ↔ ¬ tmp__12) → False)
    (assert_19 : (0 ≤ (v + 1)) ∧ ((v + 1) < Vermilion.usizeMod)) :
    Vermilion.Seq.len reclaimable = n := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.invariant_preserve_2_3

-- vrml:begin reclaim_plan.check_plan.invariant_preserve_2_4 bff1c94d13631c6e
/--
Generated VC `reclaim_plan.check_plan.invariant_preserve_2_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:331:13-331:120`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `2_4`
- Statement hash: `bff1c94d13631c6e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index candidate k⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index candidate k⟩
-/
def invariant_preserve_2_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 331
  startColumn := 13
  endLine := 331
  endColumn := 120
  assertId := "2_4"
  functionName := "reclaim_plan.check_plan"
  kind := "invariant_preserve"
  statementHash := "bff1c94d13631c6e"
}
@[vrml_obligation] theorem invariant_preserve_2_4
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (i : Int)
    (v : Int)
    (tmp__9 : Prop)
    (tmp__10 : Prop)
    (tmp__12 : Prop)
    (tmp__11 : Prop)
    (loop_2_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_2_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_2_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_2_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_2_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_2_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_2_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_2_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_2_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_2_iteration_11 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_2_iteration_12 : (0 ≤ v) ∧ (v < Vermilion.usizeMod))
    (loop_2_iteration_13 : (0 ≤ v) ∧ (v ≤ n))
    (loop_2_iteration_14 : Vermilion.Seq.len candidate = n)
    (loop_2_iteration_15 : Vermilion.Seq.len retained = n)
    (loop_2_iteration_16 : Vermilion.Seq.len reclaimable = n)
    (loop_2_iteration_17 : (∀ (k : Int), (((0 ≤ k) ∧ (k < v)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained k))))))
    (loop_2_iteration_18 : v < n)
    (call_vec_index_5_ensures_0 : tmp__9 ↔ Vermilion.Seq.index candidate v)
    (call_vec_index_6_ensures_0 : tmp__10 ↔ Vermilion.Seq.index reclaimable v)
    (then_6_call_vec_index_7_ensures_0 : tmp__10 → (tmp__11 ↔ Vermilion.Seq.index retained v))
    (then_6_assume_23 : tmp__10 → (tmp__12 ↔ (¬ tmp__11)))
    (else_6_assume_22 : (¬ tmp__10) → (tmp__12 ↔ False))
    (then_7_assume_25 : (tmp__9 ↔ ¬ tmp__12) → False)
    (then_7_assume_26 : (tmp__9 ↔ ¬ tmp__12) → False)
    (assert_19 : (0 ≤ (v + 1)) ∧ ((v + 1) < Vermilion.usizeMod)) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < (Vermilion.emod (v + 1) Vermilion.usizeMod))) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained k))))) := by
  have hr : Vermilion.emod (v + 1) Vermilion.usizeMod = v + 1 := Vermilion.emod_usizeMod_of_lt assert_19.1 assert_19.2
  rw [hr]
  intro k hk
  by_cases hkv : k < v
  · exact loop_2_iteration_17 k ⟨hk.1, hkv⟩
  · have : k = v := by omega
    rw [this]
    have hiff : tmp__9 ↔ tmp__12 := by
      by_contra h
      apply then_7_assume_25
      constructor
      · intro a b; exact h ⟨fun _ => b, fun _ => a⟩
      · intro nb; by_contra na; exact h ⟨fun a => absurd a na, fun b => absurd b nb⟩
    rw [← call_vec_index_5_ensures_0, hiff]
    by_cases h10 : tmp__10
    · rw [then_6_assume_23 h10, then_6_call_vec_index_7_ensures_0 h10]
      exact ⟨fun h => ⟨call_vec_index_6_ensures_0.mp h10, h⟩, fun h => h.2⟩
    · rw [else_6_assume_22 h10]
      exact ⟨False.elim, fun h => h10 (call_vec_index_6_ensures_0.mpr h.1)⟩
-- vrml:end reclaim_plan.check_plan.invariant_preserve_2_4

-- vrml:begin reclaim_plan.check_plan.assert_2_decreases 8f13f5652688f807
/--
Generated VC `reclaim_plan.check_plan.assert_2_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:332:19-332:24`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `2_decreases`
- Statement hash: `8f13f5652688f807`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index candidate k⟩
-/
def assert_2_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 332
  startColumn := 19
  endLine := 332
  endColumn := 24
  assertId := "2_decreases"
  functionName := "reclaim_plan.check_plan"
  kind := "assert"
  statementHash := "8f13f5652688f807"
}
@[vrml_obligation] theorem assert_2_decreases
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (i : Int)
    (v : Int)
    (tmp__9 : Prop)
    (tmp__10 : Prop)
    (tmp__12 : Prop)
    (tmp__11 : Prop)
    (loop_2_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_2_iteration_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (loop_2_iteration_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (loop_2_iteration_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (loop_2_iteration_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_2_iteration_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_2_iteration_8 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (loop_2_iteration_9 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (loop_2_iteration_10 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_2_iteration_11 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_2_iteration_12 : (0 ≤ v) ∧ (v < Vermilion.usizeMod))
    (loop_2_iteration_13 : (0 ≤ v) ∧ (v ≤ n))
    (loop_2_iteration_14 : Vermilion.Seq.len candidate = n)
    (loop_2_iteration_15 : Vermilion.Seq.len retained = n)
    (loop_2_iteration_16 : Vermilion.Seq.len reclaimable = n)
    (loop_2_iteration_17 : (∀ (k : Int), (((0 ≤ k) ∧ (k < v)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained k))))))
    (loop_2_iteration_18 : v < n)
    (call_vec_index_5_ensures_0 : tmp__9 ↔ Vermilion.Seq.index candidate v)
    (call_vec_index_6_ensures_0 : tmp__10 ↔ Vermilion.Seq.index reclaimable v)
    (then_6_call_vec_index_7_ensures_0 : tmp__10 → (tmp__11 ↔ Vermilion.Seq.index retained v))
    (then_6_assume_23 : tmp__10 → (tmp__12 ↔ (¬ tmp__11)))
    (else_6_assume_22 : (¬ tmp__10) → (tmp__12 ↔ False))
    (then_7_assume_25 : (tmp__9 ↔ ¬ tmp__12) → False)
    (then_7_assume_26 : (tmp__9 ↔ ¬ tmp__12) → False)
    (assert_19 : (0 ≤ (v + 1)) ∧ ((v + 1) < Vermilion.usizeMod)) :
    ((0 ≤ (n - (Vermilion.emod (v + 1) Vermilion.usizeMod))) ∧ ((n - (Vermilion.emod (v + 1) Vermilion.usizeMod)) < (n - v))) ∨ (((n - (Vermilion.emod (v + 1) Vermilion.usizeMod)) = (n - v)) ∧ False) := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.check_plan.assert_2_decreases

-- vrml:begin reclaim_plan.check_plan.ensures_20 cd3f49ee2514e6b5
/--
Generated VC `reclaim_plan.check_plan.ensures_20`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:299:13-299:100`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `20`
- Statement hash: `cd3f49ee2514e6b5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩ ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index candidate k⟩
-/
def ensures_20_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 299
  startColumn := 13
  endLine := 299
  endColumn := 100
  assertId := "20"
  functionName := "reclaim_plan.check_plan"
  kind := "ensures"
  statementHash := "cd3f49ee2514e6b5"
}
@[vrml_obligation] theorem ensures_20
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (r : Int)
    (i : Int)
    (v : Int)
    (requires_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (requires_1 : (0 ≤ Vermilion.Seq.len edges) ∧ (Vermilion.Seq.len edges < Vermilion.usizeMod))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_3 : (0 ≤ Vermilion.Seq.len roots) ∧ (Vermilion.Seq.len roots < Vermilion.usizeMod))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → ((0 ≤ Vermilion.Seq.index roots vrml_i0) ∧ (Vermilion.Seq.index roots vrml_i0 < Vermilion.usizeMod)))))
    (requires_5 : (0 ≤ Vermilion.Seq.len reclaimable) ∧ (Vermilion.Seq.len reclaimable < Vermilion.usizeMod))
    (requires_6 : (0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod))
    (requires_7 : (0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → ((0 ≤ Vermilion.Seq.len retained) ∧ (Vermilion.Seq.len retained < Vermilion.usizeMod)))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → ((0 ≤ Vermilion.Seq.len candidate) ∧ (Vermilion.Seq.len candidate < Vermilion.usizeMod)))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (then_2_assume_15 : tmp__2 → False)
    (then_2_assume_16 : tmp__2 → False)
    (loop_0_exit_0 : (0 ≤ r) ∧ (r < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_exit_3 : Vermilion.Seq.len retained = n)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (loop_1_exit_0 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_1_exit_1 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_exit_2 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_exit_3 : Vermilion.Seq.len retained = n)
    (loop_1_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_exit_5 : (¬ (i < Vermilion.Seq.len edges)))
    (loop_2_exit_0 : (0 ≤ v) ∧ (v < Vermilion.usizeMod))
    (loop_2_exit_1 : (0 ≤ v) ∧ (v ≤ n))
    (loop_2_exit_2 : Vermilion.Seq.len candidate = n)
    (loop_2_exit_3 : Vermilion.Seq.len retained = n)
    (loop_2_exit_4 : Vermilion.Seq.len reclaimable = n)
    (loop_2_exit_5 : (∀ (k : Int), (((0 ≤ k) ∧ (k < v)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained k))))))
    (loop_2_exit_6 : (¬ (v < n))) :
    True ↔ reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate := by
  have n2 : ¬ tmp__2 := fun h => then_2_assume_15 h
  have n1 : ¬ tmp_ := fun h => n2 ((then_1_assume_12 h).mpr trivial)
  have adm : reclaim_plan.admissible_spec n edges roots reclaimable := by
    by_contra h; exact n1 ((then_0_assume_9 h).mpr trivial)
  refine ⟨fun _ => ⟨⟨⟨⟨⟨adm, loop_0_exit_3⟩, loop_2_exit_2⟩, ?_⟩, ?_⟩, ?_⟩, fun _ => trivial⟩
  · intro j hj; exact loop_0_exit_4 j ⟨hj.1, by omega⟩
  · intro j hj; exact loop_1_exit_4 j ⟨hj.1, by omega⟩
  · intro k hk; exact loop_2_exit_5 k ⟨hk.1, by omega⟩
-- vrml:end reclaim_plan.check_plan.ensures_20

end reclaim_plan.check_plan

