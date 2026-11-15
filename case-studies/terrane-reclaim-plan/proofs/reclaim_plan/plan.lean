import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.plan

-- vrml:begin reclaim_plan.plan.ensures_2_0 42a0bd5d199e3520
/--
Generated VC `reclaim_plan.plan.ensures_2_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:449:9-450:69`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2_0`
- Statement hash: `42a0bd5d199e3520`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_2_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 449
  startColumn := 9
  endLine := 450
  endColumn := 69
  assertId := "2_0"
  functionName := "reclaim_plan.plan"
  kind := "ensures"
  statementHash := "42a0bd5d199e3520"
}
@[vrml_obligation] theorem ensures_2_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (branch_0 : status ≠ reclaim_plan.PLANNED)
    (call_empty_plan_ensures_0 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (call_empty_plan_ensures_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (call_empty_plan_ensures_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (call_empty_plan_ensures_3 : reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status)
    (call_empty_plan_ensures_4 : Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0)
    (call_empty_plan_ensures_5 : Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0) :
    (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = reclaim_plan.PLANNED) → (reclaim_plan.plan_valid_spec n edges roots reclaimable (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) ∧ reclaim_plan.retained_sound_spec edges roots (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.ensures_2_0

-- vrml:begin reclaim_plan.plan.ensures_2_1 0646f19be940fcf0
/--
Generated VC `reclaim_plan.plan.ensures_2_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:451:9-451:97`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2_1`
- Statement hash: `0646f19be940fcf0`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_2_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 451
  startColumn := 9
  endLine := 451
  endColumn := 97
  assertId := "2_1"
  functionName := "reclaim_plan.plan"
  kind := "ensures"
  statementHash := "0646f19be940fcf0"
}
@[vrml_obligation] theorem ensures_2_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (branch_0 : status ≠ reclaim_plan.PLANNED)
    (call_empty_plan_ensures_0 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (call_empty_plan_ensures_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (call_empty_plan_ensures_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (call_empty_plan_ensures_3 : reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status)
    (call_empty_plan_ensures_4 : Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0)
    (call_empty_plan_ensures_5 : Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0) :
    (¬ (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = reclaim_plan.PLANNED)) → ((Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0) ∧ (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.ensures_2_1

-- vrml:begin reclaim_plan.plan.ensures_2_2 2ff2dd1c78f4ee50
/--
Generated VC `reclaim_plan.plan.ensures_2_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:452:9-452:94`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2_2`
- Statement hash: `2ff2dd1c78f4ee50`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_2_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 452
  startColumn := 9
  endLine := 452
  endColumn := 94
  assertId := "2_2"
  functionName := "reclaim_plan.plan"
  kind := "ensures"
  statementHash := "2ff2dd1c78f4ee50"
}
@[vrml_obligation] theorem ensures_2_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (branch_0 : status ≠ reclaim_plan.PLANNED)
    (call_empty_plan_ensures_0 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (call_empty_plan_ensures_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (call_empty_plan_ensures_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (call_empty_plan_ensures_3 : reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status)
    (call_empty_plan_ensures_4 : Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0)
    (call_empty_plan_ensures_5 : Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0) :
    (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (¬ (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = reclaim_plan.PLANNED)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.ensures_2_2

-- vrml:begin reclaim_plan.plan.ensures_2_3 6aa8faa82083caaa
/--
Generated VC `reclaim_plan.plan.ensures_2_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:453:9-453:93`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2_3`
- Statement hash: `6aa8faa82083caaa`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_2_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 453
  startColumn := 9
  endLine := 453
  endColumn := 93
  assertId := "2_3"
  functionName := "reclaim_plan.plan"
  kind := "ensures"
  statementHash := "6aa8faa82083caaa"
}
@[vrml_obligation] theorem ensures_2_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (branch_0 : status ≠ reclaim_plan.PLANNED)
    (call_empty_plan_ensures_0 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (call_empty_plan_ensures_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (call_empty_plan_ensures_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (call_empty_plan_ensures_3 : reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status)
    (call_empty_plan_ensures_4 : Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0)
    (call_empty_plan_ensures_5 : Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0) :
    reclaim_plan.admissible_spec n edges roots reclaimable → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = reclaim_plan.PLANNED) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.ensures_2_3

-- vrml:begin reclaim_plan.plan.invariant_entry_0_0 2a1204895553aadc
/--
Generated VC `reclaim_plan.plan.invariant_entry_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:465:19-465:30`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `2a1204895553aadc`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 465
  startColumn := 19
  endLine := 465
  endColumn := 30
  assertId := "0_0"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "2a1204895553aadc"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop)) :
    (0 ≤ 0) ∧ (0 ≤ n) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_0_0

-- vrml:begin reclaim_plan.plan.invariant_entry_0_1 f30699169004d65c
/--
Generated VC `reclaim_plan.plan.invariant_entry_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:465:32-465:52`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `f30699169004d65c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 465
  startColumn := 32
  endLine := 465
  endColumn := 52
  assertId := "0_1"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "f30699169004d65c"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop)) :
    Vermilion.Seq.len tmp__2 = 0 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_0_1

-- vrml:begin reclaim_plan.plan.invariant_entry_0_2 6e79f4165224ee60
/--
Generated VC `reclaim_plan.plan.invariant_entry_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:465:54-465:122`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_2`
- Statement hash: `6e79f4165224ee60`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index tmp__2 j⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def invariant_entry_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 465
  startColumn := 54
  endLine := 465
  endColumn := 122
  assertId := "0_2"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "6e79f4165224ee60"
}
@[vrml_obligation] theorem invariant_entry_0_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop)) :
    (∀ (j : Int), (((0 ≤ j) ∧ (j < 0)) → (¬ Vermilion.Seq.index tmp__2 j))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_0_2

-- vrml:begin reclaim_plan.plan.assert_5 69ede9c33d78a0e3
/--
Generated VC `reclaim_plan.plan.assert_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:469:9-469:15`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `5`
- Statement hash: `69ede9c33d78a0e3`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 469
  startColumn := 9
  endLine := 469
  endColumn := 15
  assertId := "5"
  functionName := "reclaim_plan.plan"
  kind := "assert"
  statementHash := "69ede9c33d78a0e3"
}
@[vrml_obligation] theorem assert_5
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (tmp__post : (Vermilion.Seq Prop))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_0_iteration_13 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_iteration_14 : Vermilion.Seq.len retained = k)
    (loop_0_iteration_15 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_iteration_16 : k < n)
    (assume_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push retained False) :
    Vermilion.inUnsignedRange 64 (k + 1) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.assert_5

-- vrml:begin reclaim_plan.plan.invariant_preserve_0_0 8e6ad1139227458b
/--
Generated VC `reclaim_plan.plan.invariant_preserve_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:465:19-465:30`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `8e6ad1139227458b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 465
  startColumn := 19
  endLine := 465
  endColumn := 30
  assertId := "0_0"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "8e6ad1139227458b"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (tmp__post : (Vermilion.Seq Prop))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_0_iteration_13 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_iteration_14 : Vermilion.Seq.len retained = k)
    (loop_0_iteration_15 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_iteration_16 : k < n)
    (assume_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push retained False)
    (assert_5 : Vermilion.inUnsignedRange 64 (k + 1)) :
    (0 ≤ ((k + 1) % 18446744073709551616)) ∧ (((k + 1) % 18446744073709551616) ≤ n) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_preserve_0_0

-- vrml:begin reclaim_plan.plan.invariant_preserve_0_1 ffdf4f58d5aeeae1
/--
Generated VC `reclaim_plan.plan.invariant_preserve_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:465:32-465:52`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `ffdf4f58d5aeeae1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 465
  startColumn := 32
  endLine := 465
  endColumn := 52
  assertId := "0_1"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "ffdf4f58d5aeeae1"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (tmp__post : (Vermilion.Seq Prop))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_0_iteration_13 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_iteration_14 : Vermilion.Seq.len retained = k)
    (loop_0_iteration_15 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_iteration_16 : k < n)
    (assume_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push retained False)
    (assert_5 : Vermilion.inUnsignedRange 64 (k + 1)) :
    Vermilion.Seq.len tmp__post = ((k + 1) % 18446744073709551616) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_preserve_0_1

-- vrml:begin reclaim_plan.plan.invariant_preserve_0_2 0ca84d7dc32f22f1
/--
Generated VC `reclaim_plan.plan.invariant_preserve_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:465:54-465:122`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_2`
- Statement hash: `0ca84d7dc32f22f1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index tmp__post j⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩
-/
def invariant_preserve_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 465
  startColumn := 54
  endLine := 465
  endColumn := 122
  assertId := "0_2"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "0ca84d7dc32f22f1"
}
@[vrml_obligation] theorem invariant_preserve_0_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (tmp__post : (Vermilion.Seq Prop))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_0_iteration_13 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_iteration_14 : Vermilion.Seq.len retained = k)
    (loop_0_iteration_15 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_iteration_16 : k < n)
    (assume_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push retained False)
    (assert_5 : Vermilion.inUnsignedRange 64 (k + 1)) :
    (∀ (j : Int), (((0 ≤ j) ∧ (j < ((k + 1) % 18446744073709551616))) → (¬ Vermilion.Seq.index tmp__post j))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_preserve_0_2

-- vrml:begin reclaim_plan.plan.assert_0_decreases fc150b4dda6f80ac
/--
Generated VC `reclaim_plan.plan.assert_0_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:466:19-466:24`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `fc150b4dda6f80ac`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 466
  startColumn := 19
  endLine := 466
  endColumn := 24
  assertId := "0_decreases"
  functionName := "reclaim_plan.plan"
  kind := "assert"
  statementHash := "fc150b4dda6f80ac"
}
@[vrml_obligation] theorem assert_0_decreases
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (tmp__post : (Vermilion.Seq Prop))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_0_iteration_13 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_iteration_14 : Vermilion.Seq.len retained = k)
    (loop_0_iteration_15 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_iteration_16 : k < n)
    (assume_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push retained False)
    (assert_5 : Vermilion.inUnsignedRange 64 (k + 1)) :
    ((0 ≤ (n - ((k + 1) % 18446744073709551616))) ∧ ((n - ((k + 1) % 18446744073709551616)) < (n - k))) ∨ (((n - ((k + 1) % 18446744073709551616)) = (n - k)) ∧ False) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.assert_0_decreases

-- vrml:begin reclaim_plan.plan.invariant_entry_1_0 54bd77c7f225d984
/--
Generated VC `reclaim_plan.plan.invariant_entry_1_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:474:19-474:40`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_0`
- Statement hash: `54bd77c7f225d984`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩
-/
def invariant_entry_1_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 474
  startColumn := 19
  endLine := 474
  endColumn := 40
  assertId := "1_0"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "54bd77c7f225d984"
}
@[vrml_obligation] theorem invariant_entry_1_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n))) :
    (0 ≤ 0) ∧ (0 ≤ Vermilion.Seq.len roots) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_1_0

-- vrml:begin reclaim_plan.plan.invariant_entry_1_1 36f7da995c9f1263
/--
Generated VC `reclaim_plan.plan.invariant_entry_1_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:474:42-474:62`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_1`
- Statement hash: `36f7da995c9f1263`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩
-/
def invariant_entry_1_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 474
  startColumn := 42
  endLine := 474
  endColumn := 62
  assertId := "1_1"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "36f7da995c9f1263"
}
@[vrml_obligation] theorem invariant_entry_1_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n))) :
    Vermilion.Seq.len retained = n := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_1_1

-- vrml:begin reclaim_plan.plan.invariant_entry_1_2 8e176a29f23720e8
/--
Generated VC `reclaim_plan.plan.invariant_entry_1_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:474:64-474:97`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_2`
- Statement hash: `8e176a29f23720e8`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩
-/
def invariant_entry_1_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 474
  startColumn := 64
  endLine := 474
  endColumn := 97
  assertId := "1_2"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "8e176a29f23720e8"
}
@[vrml_obligation] theorem invariant_entry_1_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n))) :
    reclaim_plan.roots_in_range_spec n roots := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_1_2

-- vrml:begin reclaim_plan.plan.invariant_entry_1_3 99d574b2e2225658
/--
Generated VC `reclaim_plan.plan.invariant_entry_1_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:474:99-474:111`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_3`
- Statement hash: `99d574b2e2225658`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩
-/
def invariant_entry_1_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 474
  startColumn := 99
  endLine := 474
  endColumn := 111
  assertId := "1_3"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "99d574b2e2225658"
}
@[vrml_obligation] theorem invariant_entry_1_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n))) :
    roots = roots := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_1_3

-- vrml:begin reclaim_plan.plan.invariant_entry_1_4 154fd7363094dc14
/--
Generated VC `reclaim_plan.plan.invariant_entry_1_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:474:113-474:124`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_4`
- Statement hash: `154fd7363094dc14`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩
-/
def invariant_entry_1_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 474
  startColumn := 113
  endLine := 474
  endColumn := 124
  assertId := "1_4"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "154fd7363094dc14"
}
@[vrml_obligation] theorem invariant_entry_1_4
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n))) :
    edges = edges := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_1_4

-- vrml:begin reclaim_plan.plan.invariant_entry_1_5 241af8d67f15c138
/--
Generated VC `reclaim_plan.plan.invariant_entry_1_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:475:13-475:84`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_5`
- Statement hash: `241af8d67f15c138`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index roots j⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩
-/
def invariant_entry_1_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 475
  startColumn := 13
  endLine := 475
  endColumn := 84
  assertId := "1_5"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "241af8d67f15c138"
}
@[vrml_obligation] theorem invariant_entry_1_5
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n))) :
    (∀ (j : Int), (((0 ≤ j) ∧ (j < 0)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_1_5

-- vrml:begin reclaim_plan.plan.invariant_entry_1_6 65fad05d635c74f7
/--
Generated VC `reclaim_plan.plan.invariant_entry_1_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:476:13-476:50`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_6`
- Statement hash: `65fad05d635c74f7`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩
-/
def invariant_entry_1_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 476
  startColumn := 13
  endLine := 476
  endColumn := 50
  assertId := "1_6"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "65fad05d635c74f7"
}
@[vrml_obligation] theorem invariant_entry_1_6
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n))) :
    reclaim_plan.retained_sound_spec edges roots retained := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_1_6

-- vrml:begin reclaim_plan.plan.call_requires_7 606fcd404538de28
/--
Generated VC `reclaim_plan.plan.call_requires_7`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:479:20-479:28`
- Rust/SST construct: call vec_index
- AssertId: `7`
- Statement hash: `606fcd404538de28`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def call_requires_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 479
  startColumn := 20
  endLine := 479
  endColumn := 28
  assertId := "7"
  functionName := "reclaim_plan.plan"
  kind := "call_requires"
  statementHash := "606fcd404538de28"
}
@[vrml_obligation] theorem call_requires_7
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_1_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_15 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_iteration_16 : Vermilion.Seq.len retained_2 = n)
    (loop_1_iteration_17 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_iteration_18 : roots = roots)
    (loop_1_iteration_19 : edges = edges)
    (loop_1_iteration_20 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_iteration_21 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_iteration_22 : r < Vermilion.Seq.len roots) :
    r < Vermilion.Seq.len roots := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.call_requires_7

-- vrml:begin reclaim_plan.plan.assert_8 930f2d19b8bac97a
/--
Generated VC `reclaim_plan.plan.assert_8`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:481:20-481:74`
- Rust/SST construct: Rust source assertion
- AssertId: `8`
- Statement hash: `930f2d19b8bac97a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def assert_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 481
  startColumn := 20
  endLine := 481
  endColumn := 74
  assertId := "8"
  functionName := "reclaim_plan.plan"
  kind := "assert"
  statementHash := "930f2d19b8bac97a"
}
@[vrml_obligation] theorem assert_8
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (tmp__3 : Int)
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_1_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_15 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_iteration_16 : Vermilion.Seq.len retained_2 = n)
    (loop_1_iteration_17 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_iteration_18 : roots = roots)
    (loop_1_iteration_19 : edges = edges)
    (loop_1_iteration_20 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_iteration_21 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_iteration_22 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_ensures_1 : tmp__3 = Vermilion.Seq.index roots r) :
    reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) tmp__3 0 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.assert_8

-- vrml:begin reclaim_plan.plan.assert_9 78f3627b95540b2c
/--
Generated VC `reclaim_plan.plan.assert_9`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:482:20-482:49`
- Rust/SST construct: Rust source assertion
- AssertId: `9`
- Statement hash: `78f3627b95540b2c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def assert_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 482
  startColumn := 20
  endLine := 482
  endColumn := 49
  assertId := "9"
  functionName := "reclaim_plan.plan"
  kind := "assert"
  statementHash := "78f3627b95540b2c"
}
@[vrml_obligation] theorem assert_9
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (tmp__3 : Int)
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_1_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_15 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_iteration_16 : Vermilion.Seq.len retained_2 = n)
    (loop_1_iteration_17 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_iteration_18 : roots = roots)
    (loop_1_iteration_19 : edges = edges)
    (loop_1_iteration_20 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_iteration_21 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_iteration_22 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_ensures_1 : tmp__3 = Vermilion.Seq.index roots r)
    (assert_8 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) tmp__3 0) :
    reclaim_plan.live_spec edges roots tmp__3 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.assert_9

-- vrml:begin reclaim_plan.plan.call_requires_10 cf00f6c59deb0b4d
/--
Generated VC `reclaim_plan.plan.call_requires_10`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:484:9-484:33`
- Rust/SST construct: call set
- AssertId: `10`
- Statement hash: `cf00f6c59deb0b4d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def call_requires_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 484
  startColumn := 9
  endLine := 484
  endColumn := 33
  assertId := "10"
  functionName := "reclaim_plan.plan"
  kind := "call_requires"
  statementHash := "cf00f6c59deb0b4d"
}
@[vrml_obligation] theorem call_requires_10
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (tmp__3 : Int)
    (tmp__post_2 : (Vermilion.Seq Prop))
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_1_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_15 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_iteration_16 : Vermilion.Seq.len retained_2 = n)
    (loop_1_iteration_17 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_iteration_18 : roots = roots)
    (loop_1_iteration_19 : edges = edges)
    (loop_1_iteration_20 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_iteration_21 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_iteration_22 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_ensures_1 : tmp__3 = Vermilion.Seq.index roots r)
    (assert_8 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) tmp__3 0)
    (assert_9 : reclaim_plan.live_spec edges roots tmp__3)
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2)) :
    tmp__3 < Vermilion.Seq.len retained_2 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.call_requires_10

-- vrml:begin reclaim_plan.plan.assert_11 2e5af5964031c978
/--
Generated VC `reclaim_plan.plan.assert_11`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:485:9-485:15`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `11`
- Statement hash: `2e5af5964031c978`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def assert_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 485
  startColumn := 9
  endLine := 485
  endColumn := 15
  assertId := "11"
  functionName := "reclaim_plan.plan"
  kind := "assert"
  statementHash := "2e5af5964031c978"
}
@[vrml_obligation] theorem assert_11
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (tmp__3 : Int)
    (tmp__post_2 : (Vermilion.Seq Prop))
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_1_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_15 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_iteration_16 : Vermilion.Seq.len retained_2 = n)
    (loop_1_iteration_17 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_iteration_18 : roots = roots)
    (loop_1_iteration_19 : edges = edges)
    (loop_1_iteration_20 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_iteration_21 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_iteration_22 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_ensures_1 : tmp__3 = Vermilion.Seq.index roots r)
    (assert_8 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) tmp__3 0)
    (assert_9 : reclaim_plan.live_spec edges roots tmp__3)
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update retained_2 tmp__3 True) :
    Vermilion.inUnsignedRange 64 (r + 1) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.assert_11

-- vrml:begin reclaim_plan.plan.invariant_preserve_1_0 995528d0d7567d17
/--
Generated VC `reclaim_plan.plan.invariant_preserve_1_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:474:19-474:40`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_0`
- Statement hash: `995528d0d7567d17`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_preserve_1_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 474
  startColumn := 19
  endLine := 474
  endColumn := 40
  assertId := "1_0"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "995528d0d7567d17"
}
@[vrml_obligation] theorem invariant_preserve_1_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (tmp__3 : Int)
    (tmp__post_2 : (Vermilion.Seq Prop))
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_1_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_15 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_iteration_16 : Vermilion.Seq.len retained_2 = n)
    (loop_1_iteration_17 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_iteration_18 : roots = roots)
    (loop_1_iteration_19 : edges = edges)
    (loop_1_iteration_20 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_iteration_21 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_iteration_22 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_ensures_1 : tmp__3 = Vermilion.Seq.index roots r)
    (assert_8 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) tmp__3 0)
    (assert_9 : reclaim_plan.live_spec edges roots tmp__3)
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update retained_2 tmp__3 True)
    (assert_11 : Vermilion.inUnsignedRange 64 (r + 1)) :
    (0 ≤ ((r + 1) % 18446744073709551616)) ∧ (((r + 1) % 18446744073709551616) ≤ Vermilion.Seq.len roots) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_preserve_1_0

-- vrml:begin reclaim_plan.plan.invariant_preserve_1_1 de7c2b9b3e057ba6
/--
Generated VC `reclaim_plan.plan.invariant_preserve_1_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:474:42-474:62`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_1`
- Statement hash: `de7c2b9b3e057ba6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_preserve_1_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 474
  startColumn := 42
  endLine := 474
  endColumn := 62
  assertId := "1_1"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "de7c2b9b3e057ba6"
}
@[vrml_obligation] theorem invariant_preserve_1_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (tmp__3 : Int)
    (tmp__post_2 : (Vermilion.Seq Prop))
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_1_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_15 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_iteration_16 : Vermilion.Seq.len retained_2 = n)
    (loop_1_iteration_17 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_iteration_18 : roots = roots)
    (loop_1_iteration_19 : edges = edges)
    (loop_1_iteration_20 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_iteration_21 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_iteration_22 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_ensures_1 : tmp__3 = Vermilion.Seq.index roots r)
    (assert_8 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) tmp__3 0)
    (assert_9 : reclaim_plan.live_spec edges roots tmp__3)
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update retained_2 tmp__3 True)
    (assert_11 : Vermilion.inUnsignedRange 64 (r + 1)) :
    Vermilion.Seq.len tmp__post_2 = n := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_preserve_1_1

-- vrml:begin reclaim_plan.plan.invariant_preserve_1_2 29dc54ef3892aa57
/--
Generated VC `reclaim_plan.plan.invariant_preserve_1_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:474:64-474:97`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_2`
- Statement hash: `29dc54ef3892aa57`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_preserve_1_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 474
  startColumn := 64
  endLine := 474
  endColumn := 97
  assertId := "1_2"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "29dc54ef3892aa57"
}
@[vrml_obligation] theorem invariant_preserve_1_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (tmp__3 : Int)
    (tmp__post_2 : (Vermilion.Seq Prop))
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_1_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_15 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_iteration_16 : Vermilion.Seq.len retained_2 = n)
    (loop_1_iteration_17 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_iteration_18 : roots = roots)
    (loop_1_iteration_19 : edges = edges)
    (loop_1_iteration_20 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_iteration_21 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_iteration_22 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_ensures_1 : tmp__3 = Vermilion.Seq.index roots r)
    (assert_8 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) tmp__3 0)
    (assert_9 : reclaim_plan.live_spec edges roots tmp__3)
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update retained_2 tmp__3 True)
    (assert_11 : Vermilion.inUnsignedRange 64 (r + 1)) :
    reclaim_plan.roots_in_range_spec n roots := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_preserve_1_2

-- vrml:begin reclaim_plan.plan.invariant_preserve_1_3 8f71d2f447b181c9
/--
Generated VC `reclaim_plan.plan.invariant_preserve_1_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:474:99-474:111`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_3`
- Statement hash: `8f71d2f447b181c9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_preserve_1_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 474
  startColumn := 99
  endLine := 474
  endColumn := 111
  assertId := "1_3"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "8f71d2f447b181c9"
}
@[vrml_obligation] theorem invariant_preserve_1_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (tmp__3 : Int)
    (tmp__post_2 : (Vermilion.Seq Prop))
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_1_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_15 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_iteration_16 : Vermilion.Seq.len retained_2 = n)
    (loop_1_iteration_17 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_iteration_18 : roots = roots)
    (loop_1_iteration_19 : edges = edges)
    (loop_1_iteration_20 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_iteration_21 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_iteration_22 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_ensures_1 : tmp__3 = Vermilion.Seq.index roots r)
    (assert_8 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) tmp__3 0)
    (assert_9 : reclaim_plan.live_spec edges roots tmp__3)
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update retained_2 tmp__3 True)
    (assert_11 : Vermilion.inUnsignedRange 64 (r + 1)) :
    roots = roots := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_preserve_1_3

-- vrml:begin reclaim_plan.plan.invariant_preserve_1_4 02a24d3b62a95d4d
/--
Generated VC `reclaim_plan.plan.invariant_preserve_1_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:474:113-474:124`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_4`
- Statement hash: `02a24d3b62a95d4d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_preserve_1_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 474
  startColumn := 113
  endLine := 474
  endColumn := 124
  assertId := "1_4"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "02a24d3b62a95d4d"
}
@[vrml_obligation] theorem invariant_preserve_1_4
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (tmp__3 : Int)
    (tmp__post_2 : (Vermilion.Seq Prop))
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_1_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_15 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_iteration_16 : Vermilion.Seq.len retained_2 = n)
    (loop_1_iteration_17 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_iteration_18 : roots = roots)
    (loop_1_iteration_19 : edges = edges)
    (loop_1_iteration_20 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_iteration_21 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_iteration_22 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_ensures_1 : tmp__3 = Vermilion.Seq.index roots r)
    (assert_8 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) tmp__3 0)
    (assert_9 : reclaim_plan.live_spec edges roots tmp__3)
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update retained_2 tmp__3 True)
    (assert_11 : Vermilion.inUnsignedRange 64 (r + 1)) :
    edges = edges := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_preserve_1_4

-- vrml:begin reclaim_plan.plan.invariant_preserve_1_5 d2994f0345b1be82
/--
Generated VC `reclaim_plan.plan.invariant_preserve_1_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:475:13-475:84`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_5`
- Statement hash: `d2994f0345b1be82`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index roots j⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_preserve_1_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 475
  startColumn := 13
  endLine := 475
  endColumn := 84
  assertId := "1_5"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "d2994f0345b1be82"
}
@[vrml_obligation] theorem invariant_preserve_1_5
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (tmp__3 : Int)
    (tmp__post_2 : (Vermilion.Seq Prop))
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_1_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_15 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_iteration_16 : Vermilion.Seq.len retained_2 = n)
    (loop_1_iteration_17 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_iteration_18 : roots = roots)
    (loop_1_iteration_19 : edges = edges)
    (loop_1_iteration_20 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_iteration_21 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_iteration_22 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_ensures_1 : tmp__3 = Vermilion.Seq.index roots r)
    (assert_8 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) tmp__3 0)
    (assert_9 : reclaim_plan.live_spec edges roots tmp__3)
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update retained_2 tmp__3 True)
    (assert_11 : Vermilion.inUnsignedRange 64 (r + 1)) :
    (∀ (j : Int), (((0 ≤ j) ∧ (j < ((r + 1) % 18446744073709551616))) → Vermilion.Seq.index tmp__post_2 (Vermilion.Seq.index roots j))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.invariant_preserve_1_5

-- vrml:begin reclaim_plan.plan.invariant_preserve_1_6 0c8cdb0780bf4f1a
/--
Generated VC `reclaim_plan.plan.invariant_preserve_1_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:476:13-476:50`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_6`
- Statement hash: `0c8cdb0780bf4f1a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_preserve_1_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 476
  startColumn := 13
  endLine := 476
  endColumn := 50
  assertId := "1_6"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "0c8cdb0780bf4f1a"
}
@[vrml_obligation] theorem invariant_preserve_1_6
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (tmp__3 : Int)
    (tmp__post_2 : (Vermilion.Seq Prop))
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_1_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_15 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_iteration_16 : Vermilion.Seq.len retained_2 = n)
    (loop_1_iteration_17 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_iteration_18 : roots = roots)
    (loop_1_iteration_19 : edges = edges)
    (loop_1_iteration_20 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_iteration_21 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_iteration_22 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_ensures_1 : tmp__3 = Vermilion.Seq.index roots r)
    (assert_8 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) tmp__3 0)
    (assert_9 : reclaim_plan.live_spec edges roots tmp__3)
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update retained_2 tmp__3 True)
    (assert_11 : Vermilion.inUnsignedRange 64 (r + 1)) :
    reclaim_plan.retained_sound_spec edges roots tmp__post_2 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.invariant_preserve_1_6

-- vrml:begin reclaim_plan.plan.assert_1_decreases 6bd5892792dd3421
/--
Generated VC `reclaim_plan.plan.assert_1_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:477:19-477:34`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `1_decreases`
- Statement hash: `6bd5892792dd3421`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def assert_1_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 477
  startColumn := 19
  endLine := 477
  endColumn := 34
  assertId := "1_decreases"
  functionName := "reclaim_plan.plan"
  kind := "assert"
  statementHash := "6bd5892792dd3421"
}
@[vrml_obligation] theorem assert_1_decreases
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (tmp__3 : Int)
    (tmp__post_2 : (Vermilion.Seq Prop))
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_1_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_15 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_iteration_16 : Vermilion.Seq.len retained_2 = n)
    (loop_1_iteration_17 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_iteration_18 : roots = roots)
    (loop_1_iteration_19 : edges = edges)
    (loop_1_iteration_20 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_iteration_21 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_iteration_22 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_ensures_1 : tmp__3 = Vermilion.Seq.index roots r)
    (assert_8 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) tmp__3 0)
    (assert_9 : reclaim_plan.live_spec edges roots tmp__3)
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update retained_2 tmp__3 True)
    (assert_11 : Vermilion.inUnsignedRange 64 (r + 1)) :
    ((0 ≤ (Vermilion.Seq.len roots - ((r + 1) % 18446744073709551616))) ∧ ((Vermilion.Seq.len roots - ((r + 1) % 18446744073709551616)) < (Vermilion.Seq.len roots - r))) ∨ (((Vermilion.Seq.len roots - ((r + 1) % 18446744073709551616)) = (Vermilion.Seq.len roots - r)) ∧ False) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.assert_1_decreases

-- vrml:begin reclaim_plan.plan.invariant_entry_2_0 dcd13c31c5db03ec
/--
Generated VC `reclaim_plan.plan.invariant_entry_2_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:492:13-492:33`
- Rust/SST construct: loop invariant on entry
- AssertId: `2_0`
- Statement hash: `dcd13c31c5db03ec`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_entry_2_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 492
  startColumn := 13
  endLine := 492
  endColumn := 33
  assertId := "2_0"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "dcd13c31c5db03ec"
}
@[vrml_obligation] theorem invariant_entry_2_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_exit_1 : Vermilion.inUnsignedRange 64 r)
    (loop_1_exit_2 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_exit_3 : Vermilion.Seq.len retained_2 = n)
    (loop_1_exit_4 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_exit_5 : roots = roots)
    (loop_1_exit_6 : edges = edges)
    (loop_1_exit_7 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_exit_8 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_exit_9 : (¬ (r < Vermilion.Seq.len roots))) :
    Vermilion.Seq.len retained_2 = n := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_2_0

-- vrml:begin reclaim_plan.plan.invariant_entry_2_1 067b5a1a9b3c6a5e
/--
Generated VC `reclaim_plan.plan.invariant_entry_2_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:492:35-492:47`
- Rust/SST construct: loop invariant on entry
- AssertId: `2_1`
- Statement hash: `067b5a1a9b3c6a5e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_entry_2_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 492
  startColumn := 35
  endLine := 492
  endColumn := 47
  assertId := "2_1"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "067b5a1a9b3c6a5e"
}
@[vrml_obligation] theorem invariant_entry_2_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_exit_1 : Vermilion.inUnsignedRange 64 r)
    (loop_1_exit_2 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_exit_3 : Vermilion.Seq.len retained_2 = n)
    (loop_1_exit_4 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_exit_5 : roots = roots)
    (loop_1_exit_6 : edges = edges)
    (loop_1_exit_7 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_exit_8 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_exit_9 : (¬ (r < Vermilion.Seq.len roots))) :
    roots = roots := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_2_1

-- vrml:begin reclaim_plan.plan.invariant_entry_2_2 68ca68f799ff3d22
/--
Generated VC `reclaim_plan.plan.invariant_entry_2_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:492:49-492:60`
- Rust/SST construct: loop invariant on entry
- AssertId: `2_2`
- Statement hash: `68ca68f799ff3d22`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_entry_2_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 492
  startColumn := 49
  endLine := 492
  endColumn := 60
  assertId := "2_2"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "68ca68f799ff3d22"
}
@[vrml_obligation] theorem invariant_entry_2_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_exit_1 : Vermilion.inUnsignedRange 64 r)
    (loop_1_exit_2 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_exit_3 : Vermilion.Seq.len retained_2 = n)
    (loop_1_exit_4 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_exit_5 : roots = roots)
    (loop_1_exit_6 : edges = edges)
    (loop_1_exit_7 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_exit_8 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_exit_9 : (¬ (r < Vermilion.Seq.len roots))) :
    edges = edges := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_2_2

-- vrml:begin reclaim_plan.plan.invariant_entry_2_3 fba601eba372f4e9
/--
Generated VC `reclaim_plan.plan.invariant_entry_2_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:492:62-492:76`
- Rust/SST construct: loop invariant on entry
- AssertId: `2_3`
- Statement hash: `fba601eba372f4e9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_entry_2_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 492
  startColumn := 62
  endLine := 492
  endColumn := 76
  assertId := "2_3"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "fba601eba372f4e9"
}
@[vrml_obligation] theorem invariant_entry_2_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_exit_1 : Vermilion.inUnsignedRange 64 r)
    (loop_1_exit_2 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_exit_3 : Vermilion.Seq.len retained_2 = n)
    (loop_1_exit_4 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_exit_5 : roots = roots)
    (loop_1_exit_6 : edges = edges)
    (loop_1_exit_7 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_exit_8 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_exit_9 : (¬ (r < Vermilion.Seq.len roots))) :
    n ≤ reclaim_plan.MAX_NODES := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_2_3

-- vrml:begin reclaim_plan.plan.invariant_entry_2_4 67e307270ae182fa
/--
Generated VC `reclaim_plan.plan.invariant_entry_2_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:493:13-493:45`
- Rust/SST construct: loop invariant on entry
- AssertId: `2_4`
- Statement hash: `67e307270ae182fa`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_entry_2_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 493
  startColumn := 13
  endLine := 493
  endColumn := 45
  assertId := "2_4"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "67e307270ae182fa"
}
@[vrml_obligation] theorem invariant_entry_2_4
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_exit_1 : Vermilion.inUnsignedRange 64 r)
    (loop_1_exit_2 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_exit_3 : Vermilion.Seq.len retained_2 = n)
    (loop_1_exit_4 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_exit_5 : roots = roots)
    (loop_1_exit_6 : edges = edges)
    (loop_1_exit_7 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_exit_8 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_exit_9 : (¬ (r < Vermilion.Seq.len roots))) :
    reclaim_plan.edges_in_range_spec n edges := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_2_4

-- vrml:begin reclaim_plan.plan.invariant_entry_2_5 6e7ce3e696def096
/--
Generated VC `reclaim_plan.plan.invariant_entry_2_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:493:47-493:80`
- Rust/SST construct: loop invariant on entry
- AssertId: `2_5`
- Statement hash: `6e7ce3e696def096`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_entry_2_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 493
  startColumn := 47
  endLine := 493
  endColumn := 80
  assertId := "2_5"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "6e7ce3e696def096"
}
@[vrml_obligation] theorem invariant_entry_2_5
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_exit_1 : Vermilion.inUnsignedRange 64 r)
    (loop_1_exit_2 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_exit_3 : Vermilion.Seq.len retained_2 = n)
    (loop_1_exit_4 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_exit_5 : roots = roots)
    (loop_1_exit_6 : edges = edges)
    (loop_1_exit_7 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_exit_8 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_exit_9 : (¬ (r < Vermilion.Seq.len roots))) :
    reclaim_plan.roots_in_range_spec n roots := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_2_5

-- vrml:begin reclaim_plan.plan.invariant_entry_2_6 082f8d82aa244d8c
/--
Generated VC `reclaim_plan.plan.invariant_entry_2_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:494:13-494:47`
- Rust/SST construct: loop invariant on entry
- AssertId: `2_6`
- Statement hash: `082f8d82aa244d8c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_entry_2_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 494
  startColumn := 13
  endLine := 494
  endColumn := 47
  assertId := "2_6"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "082f8d82aa244d8c"
}
@[vrml_obligation] theorem invariant_entry_2_6
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_exit_1 : Vermilion.inUnsignedRange 64 r)
    (loop_1_exit_2 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_exit_3 : Vermilion.Seq.len retained_2 = n)
    (loop_1_exit_4 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_exit_5 : roots = roots)
    (loop_1_exit_6 : edges = edges)
    (loop_1_exit_7 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_exit_8 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_exit_9 : (¬ (r < Vermilion.Seq.len roots))) :
    reclaim_plan.roots_retained_spec roots retained_2 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_2_6

-- vrml:begin reclaim_plan.plan.invariant_entry_2_7 73d635a56adf7064
/--
Generated VC `reclaim_plan.plan.invariant_entry_2_7`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:495:13-495:50`
- Rust/SST construct: loop invariant on entry
- AssertId: `2_7`
- Statement hash: `73d635a56adf7064`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_entry_2_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 495
  startColumn := 13
  endLine := 495
  endColumn := 50
  assertId := "2_7"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "73d635a56adf7064"
}
@[vrml_obligation] theorem invariant_entry_2_7
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_exit_1 : Vermilion.inUnsignedRange 64 r)
    (loop_1_exit_2 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_exit_3 : Vermilion.Seq.len retained_2 = n)
    (loop_1_exit_4 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_exit_5 : roots = roots)
    (loop_1_exit_6 : edges = edges)
    (loop_1_exit_7 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_exit_8 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_exit_9 : (¬ (r < Vermilion.Seq.len roots))) :
    reclaim_plan.retained_sound_spec edges roots retained_2 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_2_7

-- vrml:begin reclaim_plan.plan.invariant_entry_2_8 94b572f1497a6080
/--
Generated VC `reclaim_plan.plan.invariant_entry_2_8`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:496:13-496:51`
- Rust/SST construct: loop invariant on entry
- AssertId: `2_8`
- Statement hash: `94b572f1497a6080`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_entry_2_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 496
  startColumn := 13
  endLine := 496
  endColumn := 51
  assertId := "2_8"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "94b572f1497a6080"
}
@[vrml_obligation] theorem invariant_entry_2_8
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_exit_1 : Vermilion.inUnsignedRange 64 r)
    (loop_1_exit_2 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_exit_3 : Vermilion.Seq.len retained_2 = n)
    (loop_1_exit_4 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_exit_5 : roots = roots)
    (loop_1_exit_6 : edges = edges)
    (loop_1_exit_7 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_exit_8 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_exit_9 : (¬ (r < Vermilion.Seq.len roots))) :
    (¬ True) → reclaim_plan.closed_spec edges retained_2 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_2_8

-- vrml:begin reclaim_plan.plan.invariant_entry_2_9 4513012806e7420c
/--
Generated VC `reclaim_plan.plan.invariant_entry_2_9`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:497:13-497:56`
- Rust/SST construct: loop invariant on entry
- AssertId: `2_9`
- Statement hash: `4513012806e7420c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_entry_2_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 497
  startColumn := 13
  endLine := 497
  endColumn := 56
  assertId := "2_9"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "4513012806e7420c"
}
@[vrml_obligation] theorem invariant_entry_2_9
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_exit_1 : Vermilion.inUnsignedRange 64 r)
    (loop_1_exit_2 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_exit_3 : Vermilion.Seq.len retained_2 = n)
    (loop_1_exit_4 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_exit_5 : roots = roots)
    (loop_1_exit_6 : edges = edges)
    (loop_1_exit_7 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_exit_8 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_exit_9 : (¬ (r < Vermilion.Seq.len roots))) :
    True → (reclaim_plan.count_true retained_2 ≥ 0) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.invariant_entry_2_9

-- vrml:begin reclaim_plan.plan.invariant_entry_2_10 88cd1dd8b1931675
/--
Generated VC `reclaim_plan.plan.invariant_entry_2_10`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:498:13-498:28`
- Rust/SST construct: loop invariant on entry
- AssertId: `2_10`
- Statement hash: `88cd1dd8b1931675`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_entry_2_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 498
  startColumn := 13
  endLine := 498
  endColumn := 28
  assertId := "2_10"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "88cd1dd8b1931675"
}
@[vrml_obligation] theorem invariant_entry_2_10
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_exit_1 : Vermilion.inUnsignedRange 64 r)
    (loop_1_exit_2 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_exit_3 : Vermilion.Seq.len retained_2 = n)
    (loop_1_exit_4 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_exit_5 : roots = roots)
    (loop_1_exit_6 : edges = edges)
    (loop_1_exit_7 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_exit_8 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_exit_9 : (¬ (r < Vermilion.Seq.len roots))) :
    0 ≤ (n + 1) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_2_10

-- vrml:begin reclaim_plan.plan.invariant_entry_3_0 7ee9d4508650ad29
/--
Generated VC `reclaim_plan.plan.invariant_entry_3_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:507:17-507:38`
- Rust/SST construct: loop invariant on entry
- AssertId: `3_0`
- Statement hash: `7ee9d4508650ad29`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def invariant_entry_3_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 507
  startColumn := 17
  endLine := 507
  endColumn := 38
  assertId := "3_0"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "7ee9d4508650ad29"
}
@[vrml_obligation] theorem invariant_entry_3_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_2_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_2_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_iteration_17 : Vermilion.Seq.len retained_3 = n)
    (loop_2_iteration_18 : roots = roots)
    (loop_2_iteration_19 : edges = edges)
    (loop_2_iteration_20 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_iteration_23 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_iteration_25 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_iteration_26 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_iteration_27 : rounds ≤ (n + 1))
    (loop_2_iteration_28 : changed ∧ (rounds ≤ n)) :
    (0 ≤ 0) ∧ (0 ≤ Vermilion.Seq.len edges) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_3_0

-- vrml:begin reclaim_plan.plan.invariant_entry_3_1 8d1ebadfaceba7f5
/--
Generated VC `reclaim_plan.plan.invariant_entry_3_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:507:40-507:60`
- Rust/SST construct: loop invariant on entry
- AssertId: `3_1`
- Statement hash: `8d1ebadfaceba7f5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def invariant_entry_3_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 507
  startColumn := 40
  endLine := 507
  endColumn := 60
  assertId := "3_1"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "8d1ebadfaceba7f5"
}
@[vrml_obligation] theorem invariant_entry_3_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_2_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_2_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_iteration_17 : Vermilion.Seq.len retained_3 = n)
    (loop_2_iteration_18 : roots = roots)
    (loop_2_iteration_19 : edges = edges)
    (loop_2_iteration_20 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_iteration_23 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_iteration_25 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_iteration_26 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_iteration_27 : rounds ≤ (n + 1))
    (loop_2_iteration_28 : changed ∧ (rounds ≤ n)) :
    Vermilion.Seq.len retained_3 = n := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_3_1

-- vrml:begin reclaim_plan.plan.invariant_entry_3_2 0b14bdd1545642cc
/--
Generated VC `reclaim_plan.plan.invariant_entry_3_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:507:62-507:74`
- Rust/SST construct: loop invariant on entry
- AssertId: `3_2`
- Statement hash: `0b14bdd1545642cc`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def invariant_entry_3_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 507
  startColumn := 62
  endLine := 507
  endColumn := 74
  assertId := "3_2"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "0b14bdd1545642cc"
}
@[vrml_obligation] theorem invariant_entry_3_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_2_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_2_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_iteration_17 : Vermilion.Seq.len retained_3 = n)
    (loop_2_iteration_18 : roots = roots)
    (loop_2_iteration_19 : edges = edges)
    (loop_2_iteration_20 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_iteration_23 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_iteration_25 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_iteration_26 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_iteration_27 : rounds ≤ (n + 1))
    (loop_2_iteration_28 : changed ∧ (rounds ≤ n)) :
    roots = roots := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_3_2

-- vrml:begin reclaim_plan.plan.invariant_entry_3_3 1371ab5ae0931ae8
/--
Generated VC `reclaim_plan.plan.invariant_entry_3_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:507:76-507:87`
- Rust/SST construct: loop invariant on entry
- AssertId: `3_3`
- Statement hash: `1371ab5ae0931ae8`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def invariant_entry_3_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 507
  startColumn := 76
  endLine := 507
  endColumn := 87
  assertId := "3_3"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "1371ab5ae0931ae8"
}
@[vrml_obligation] theorem invariant_entry_3_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_2_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_2_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_iteration_17 : Vermilion.Seq.len retained_3 = n)
    (loop_2_iteration_18 : roots = roots)
    (loop_2_iteration_19 : edges = edges)
    (loop_2_iteration_20 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_iteration_23 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_iteration_25 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_iteration_26 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_iteration_27 : rounds ≤ (n + 1))
    (loop_2_iteration_28 : changed ∧ (rounds ≤ n)) :
    edges = edges := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_3_3

-- vrml:begin reclaim_plan.plan.invariant_entry_3_4 2ed972733d934800
/--
Generated VC `reclaim_plan.plan.invariant_entry_3_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:508:17-508:49`
- Rust/SST construct: loop invariant on entry
- AssertId: `3_4`
- Statement hash: `2ed972733d934800`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def invariant_entry_3_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 508
  startColumn := 17
  endLine := 508
  endColumn := 49
  assertId := "3_4"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "2ed972733d934800"
}
@[vrml_obligation] theorem invariant_entry_3_4
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_2_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_2_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_iteration_17 : Vermilion.Seq.len retained_3 = n)
    (loop_2_iteration_18 : roots = roots)
    (loop_2_iteration_19 : edges = edges)
    (loop_2_iteration_20 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_iteration_23 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_iteration_25 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_iteration_26 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_iteration_27 : rounds ≤ (n + 1))
    (loop_2_iteration_28 : changed ∧ (rounds ≤ n)) :
    reclaim_plan.edges_in_range_spec n edges := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_3_4

-- vrml:begin reclaim_plan.plan.invariant_entry_3_5 9feeb566d24350fc
/--
Generated VC `reclaim_plan.plan.invariant_entry_3_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:508:51-508:84`
- Rust/SST construct: loop invariant on entry
- AssertId: `3_5`
- Statement hash: `9feeb566d24350fc`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def invariant_entry_3_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 508
  startColumn := 51
  endLine := 508
  endColumn := 84
  assertId := "3_5"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "9feeb566d24350fc"
}
@[vrml_obligation] theorem invariant_entry_3_5
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_2_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_2_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_iteration_17 : Vermilion.Seq.len retained_3 = n)
    (loop_2_iteration_18 : roots = roots)
    (loop_2_iteration_19 : edges = edges)
    (loop_2_iteration_20 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_iteration_23 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_iteration_25 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_iteration_26 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_iteration_27 : rounds ≤ (n + 1))
    (loop_2_iteration_28 : changed ∧ (rounds ≤ n)) :
    reclaim_plan.roots_in_range_spec n roots := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_3_5

-- vrml:begin reclaim_plan.plan.invariant_entry_3_6 0736018b3bfc47e9
/--
Generated VC `reclaim_plan.plan.invariant_entry_3_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:509:17-509:51`
- Rust/SST construct: loop invariant on entry
- AssertId: `3_6`
- Statement hash: `0736018b3bfc47e9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def invariant_entry_3_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 509
  startColumn := 17
  endLine := 509
  endColumn := 51
  assertId := "3_6"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "0736018b3bfc47e9"
}
@[vrml_obligation] theorem invariant_entry_3_6
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_2_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_2_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_iteration_17 : Vermilion.Seq.len retained_3 = n)
    (loop_2_iteration_18 : roots = roots)
    (loop_2_iteration_19 : edges = edges)
    (loop_2_iteration_20 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_iteration_23 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_iteration_25 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_iteration_26 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_iteration_27 : rounds ≤ (n + 1))
    (loop_2_iteration_28 : changed ∧ (rounds ≤ n)) :
    reclaim_plan.roots_retained_spec roots retained_3 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_3_6

-- vrml:begin reclaim_plan.plan.invariant_entry_3_7 fc2b383a9edf252d
/--
Generated VC `reclaim_plan.plan.invariant_entry_3_7`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:510:17-510:54`
- Rust/SST construct: loop invariant on entry
- AssertId: `3_7`
- Statement hash: `fc2b383a9edf252d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def invariant_entry_3_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 510
  startColumn := 17
  endLine := 510
  endColumn := 54
  assertId := "3_7"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "fc2b383a9edf252d"
}
@[vrml_obligation] theorem invariant_entry_3_7
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_2_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_2_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_iteration_17 : Vermilion.Seq.len retained_3 = n)
    (loop_2_iteration_18 : roots = roots)
    (loop_2_iteration_19 : edges = edges)
    (loop_2_iteration_20 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_iteration_23 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_iteration_25 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_iteration_26 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_iteration_27 : rounds ≤ (n + 1))
    (loop_2_iteration_28 : changed ∧ (rounds ≤ n)) :
    reclaim_plan.retained_sound_spec edges roots retained_3 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_3_7

-- vrml:begin reclaim_plan.plan.invariant_entry_3_8 492f896747efe69f
/--
Generated VC `reclaim_plan.plan.invariant_entry_3_8`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:511:17-511:48`
- Rust/SST construct: loop invariant on entry
- AssertId: `3_8`
- Statement hash: `492f896747efe69f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def invariant_entry_3_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 511
  startColumn := 17
  endLine := 511
  endColumn := 48
  assertId := "3_8"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "492f896747efe69f"
}
@[vrml_obligation] theorem invariant_entry_3_8
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_2_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_2_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_iteration_17 : Vermilion.Seq.len retained_3 = n)
    (loop_2_iteration_18 : roots = roots)
    (loop_2_iteration_19 : edges = edges)
    (loop_2_iteration_20 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_iteration_23 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_iteration_25 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_iteration_26 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_iteration_27 : rounds ≤ (n + 1))
    (loop_2_iteration_28 : changed ∧ (rounds ≤ n)) :
    (¬ False) → (retained_3 = retained_3) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_3_8

-- vrml:begin reclaim_plan.plan.invariant_entry_3_9 7fc02cbbf851e92c
/--
Generated VC `reclaim_plan.plan.invariant_entry_3_9`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:512:17-513:76`
- Rust/SST construct: loop invariant on entry
- AssertId: `3_9`
- Statement hash: `7fc02cbbf851e92c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def invariant_entry_3_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 512
  startColumn := 17
  endLine := 513
  endColumn := 76
  assertId := "3_9"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "7fc02cbbf851e92c"
}
@[vrml_obligation] theorem invariant_entry_3_9
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_2_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_2_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_iteration_17 : Vermilion.Seq.len retained_3 = n)
    (loop_2_iteration_18 : roots = roots)
    (loop_2_iteration_19 : edges = edges)
    (loop_2_iteration_20 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_iteration_23 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_iteration_25 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_iteration_26 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_iteration_27 : rounds ≤ (n + 1))
    (loop_2_iteration_28 : changed ∧ (rounds ≤ n)) :
    (¬ False) → (∀ (j : Int), (((0 ≤ j) ∧ (j < 0)) → (Vermilion.Seq.index retained_3 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_3 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_3_9

-- vrml:begin reclaim_plan.plan.invariant_entry_3_10 31074fcd9fe39698
/--
Generated VC `reclaim_plan.plan.invariant_entry_3_10`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:514:17-514:49`
- Rust/SST construct: loop invariant on entry
- AssertId: `3_10`
- Statement hash: `31074fcd9fe39698`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def invariant_entry_3_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 514
  startColumn := 17
  endLine := 514
  endColumn := 49
  assertId := "3_10"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "31074fcd9fe39698"
}
@[vrml_obligation] theorem invariant_entry_3_10
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_2_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_2_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_iteration_17 : Vermilion.Seq.len retained_3 = n)
    (loop_2_iteration_18 : roots = roots)
    (loop_2_iteration_19 : edges = edges)
    (loop_2_iteration_20 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_iteration_23 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_iteration_25 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_iteration_26 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_iteration_27 : rounds ≤ (n + 1))
    (loop_2_iteration_28 : changed ∧ (rounds ≤ n)) :
    reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_3_10

-- vrml:begin reclaim_plan.plan.invariant_entry_3_11 1a8a1c23cccd7519
/--
Generated VC `reclaim_plan.plan.invariant_entry_3_11`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:515:17-515:53`
- Rust/SST construct: loop invariant on entry
- AssertId: `3_11`
- Statement hash: `1a8a1c23cccd7519`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def invariant_entry_3_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 515
  startColumn := 17
  endLine := 515
  endColumn := 53
  assertId := "3_11"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "1a8a1c23cccd7519"
}
@[vrml_obligation] theorem invariant_entry_3_11
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_2_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_2_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_iteration_17 : Vermilion.Seq.len retained_3 = n)
    (loop_2_iteration_18 : roots = roots)
    (loop_2_iteration_19 : edges = edges)
    (loop_2_iteration_20 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_iteration_23 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_iteration_25 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_iteration_26 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_iteration_27 : rounds ≤ (n + 1))
    (loop_2_iteration_28 : changed ∧ (rounds ≤ n)) :
    reclaim_plan.count_true retained_3 ≥ reclaim_plan.count_true retained_3 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_3_11

-- vrml:begin reclaim_plan.plan.invariant_entry_3_12 095a226aaa2863dc
/--
Generated VC `reclaim_plan.plan.invariant_entry_3_12`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:516:17-516:69`
- Rust/SST construct: loop invariant on entry
- AssertId: `3_12`
- Statement hash: `095a226aaa2863dc`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def invariant_entry_3_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 516
  startColumn := 17
  endLine := 516
  endColumn := 69
  assertId := "3_12"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "095a226aaa2863dc"
}
@[vrml_obligation] theorem invariant_entry_3_12
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_2_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_2_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_iteration_17 : Vermilion.Seq.len retained_3 = n)
    (loop_2_iteration_18 : roots = roots)
    (loop_2_iteration_19 : edges = edges)
    (loop_2_iteration_20 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_iteration_23 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_iteration_25 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_iteration_26 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_iteration_27 : rounds ≤ (n + 1))
    (loop_2_iteration_28 : changed ∧ (rounds ≤ n)) :
    False → (reclaim_plan.count_true retained_3 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_entry_3_12

-- vrml:begin reclaim_plan.plan.call_requires_13 bb9eff31e0352f85
/--
Generated VC `reclaim_plan.plan.call_requires_13`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:519:26-519:34`
- Rust/SST construct: call vec_index
- AssertId: `13`
- Statement hash: `bb9eff31e0352f85`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def call_requires_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 519
  startColumn := 26
  endLine := 519
  endColumn := 34
  assertId := "13"
  functionName := "reclaim_plan.plan"
  kind := "call_requires"
  statementHash := "bb9eff31e0352f85"
}
@[vrml_obligation] theorem call_requires_13
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges) :
    i < Vermilion.Seq.len edges := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.call_requires_13

-- vrml:begin reclaim_plan.plan.call_requires_14 96971d5bcd19553a
/--
Generated VC `reclaim_plan.plan.call_requires_14`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:520:16-520:27`
- Rust/SST construct: call vec_index
- AssertId: `14`
- Statement hash: `96971d5bcd19553a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def call_requires_14_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 520
  startColumn := 16
  endLine := 520
  endColumn := 27
  assertId := "14"
  functionName := "reclaim_plan.plan"
  kind := "call_requires"
  statementHash := "96971d5bcd19553a"
}
@[vrml_obligation] theorem call_requires_14
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i) :
    vermilion.tuple_2.get_tuple_2__0 tmp__4 < Vermilion.Seq.len retained_4 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.call_requires_14

-- vrml:begin reclaim_plan.plan.call_requires_15 e027d1d21b20755c
/--
Generated VC `reclaim_plan.plan.call_requires_15`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:520:32-520:43`
- Rust/SST construct: call vec_index
- AssertId: `15`
- Statement hash: `e027d1d21b20755c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def call_requires_15_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 520
  startColumn := 32
  endLine := 520
  endColumn := 43
  assertId := "15"
  functionName := "reclaim_plan.plan"
  kind := "call_requires"
  statementHash := "e027d1d21b20755c"
}
@[vrml_obligation] theorem call_requires_15
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (branch_1 : tmp__5) :
    vermilion.tuple_2.get_tuple_2__1 tmp__4 < Vermilion.Seq.len retained_4 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.call_requires_15

-- vrml:begin reclaim_plan.plan.assert_16 cc0801ffd1eb5358
/--
Generated VC `reclaim_plan.plan.assert_16`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:522:28-522:49`
- Rust/SST construct: Rust source assertion
- AssertId: `16`
- Statement hash: `cc0801ffd1eb5358`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def assert_16_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 522
  startColumn := 28
  endLine := 522
  endColumn := 49
  assertId := "16"
  functionName := "reclaim_plan.plan"
  kind := "assert"
  statementHash := "cc0801ffd1eb5358"
}
@[vrml_obligation] theorem assert_16
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (tmp__6 : Prop)
    (changed_3 : Prop)
    (retained_5 : (Vermilion.Seq Prop))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_1_call_vec_index_3_ensures_0 : tmp__5 → (tmp__6 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_1_assume_37 : tmp__5 → (tmp__7 ↔ (¬ tmp__6)))
    (else_1_assume_36 : (¬ tmp__5) → (tmp__7 ↔ False))
    (branch_2 : tmp__7) :
    Vermilion.Seq.index edges i = vermilion.tuple_2.tuple_2 (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.assert_16

-- vrml:begin reclaim_plan.plan.assert_17 1b4a616e17f63bb1
/--
Generated VC `reclaim_plan.plan.assert_17`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:523:28-523:64`
- Rust/SST construct: Rust source assertion
- AssertId: `17`
- Statement hash: `1b4a616e17f63bb1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def assert_17_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 523
  startColumn := 28
  endLine := 523
  endColumn := 64
  assertId := "17"
  functionName := "reclaim_plan.plan"
  kind := "assert"
  statementHash := "1b4a616e17f63bb1"
}
@[vrml_obligation] theorem assert_17
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (tmp__6 : Prop)
    (changed_3 : Prop)
    (retained_5 : (Vermilion.Seq Prop))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_1_call_vec_index_3_ensures_0 : tmp__5 → (tmp__6 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_1_assume_37 : tmp__5 → (tmp__7 ↔ (¬ tmp__6)))
    (else_1_assume_36 : (¬ tmp__5) → (tmp__7 ↔ False))
    (branch_2 : tmp__7)
    (assert_16 : Vermilion.Seq.index edges i = vermilion.tuple_2.tuple_2 (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4)) :
    reclaim_plan.has_edge_spec edges (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.assert_17

-- vrml:begin reclaim_plan.plan.assert_18 9427644ed28a0713
/--
Generated VC `reclaim_plan.plan.assert_18`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:524:28-524:54`
- Rust/SST construct: Rust source assertion
- AssertId: `18`
- Statement hash: `9427644ed28a0713`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def assert_18_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 524
  startColumn := 28
  endLine := 524
  endColumn := 54
  assertId := "18"
  functionName := "reclaim_plan.plan"
  kind := "assert"
  statementHash := "9427644ed28a0713"
}
@[vrml_obligation] theorem assert_18
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (tmp__6 : Prop)
    (changed_3 : Prop)
    (retained_5 : (Vermilion.Seq Prop))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_1_call_vec_index_3_ensures_0 : tmp__5 → (tmp__6 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_1_assume_37 : tmp__5 → (tmp__7 ↔ (¬ tmp__6)))
    (else_1_assume_36 : (¬ tmp__5) → (tmp__7 ↔ False))
    (branch_2 : tmp__7)
    (assert_16 : Vermilion.Seq.index edges i = vermilion.tuple_2.tuple_2 (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (assert_17 : reclaim_plan.has_edge_spec edges (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4)) :
    reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__0 tmp__4) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.assert_18

-- vrml:begin reclaim_plan.plan.call_requires_19_0 4a479583dca73986
/--
Generated VC `reclaim_plan.plan.call_requires_19_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:528:21-528:81`
- Rust/SST construct: call reachable_extend
- AssertId: `19_0`
- Statement hash: `4a479583dca73986`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def call_requires_19_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 528
  startColumn := 21
  endLine := 528
  endColumn := 81
  assertId := "19_0"
  functionName := "reclaim_plan.plan"
  kind := "call_requires"
  statementHash := "4a479583dca73986"
}
@[vrml_obligation] theorem call_requires_19_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (tmp__6 : Prop)
    (changed_3 : Prop)
    (retained_5 : (Vermilion.Seq Prop))
    (choose_spec_0 : (∃ (ro : Int), (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) → (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0))))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_1_call_vec_index_3_ensures_0 : tmp__5 → (tmp__6 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_1_assume_37 : tmp__5 → (tmp__7 ↔ (¬ tmp__6)))
    (else_1_assume_36 : (¬ tmp__5) → (tmp__7 ↔ False))
    (branch_2 : tmp__7)
    (assert_16 : Vermilion.Seq.index edges i = vermilion.tuple_2.tuple_2 (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (assert_17 : reclaim_plan.has_edge_spec edges (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (assert_18 : reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__0 tmp__4)) :
    reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.call_requires_19_0

-- vrml:begin reclaim_plan.plan.call_requires_19_1 842b4824840368ae
/--
Generated VC `reclaim_plan.plan.call_requires_19_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:528:21-528:81`
- Rust/SST construct: call reachable_extend
- AssertId: `19_1`
- Statement hash: `842b4824840368ae`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def call_requires_19_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 528
  startColumn := 21
  endLine := 528
  endColumn := 81
  assertId := "19_1"
  functionName := "reclaim_plan.plan"
  kind := "call_requires"
  statementHash := "842b4824840368ae"
}
@[vrml_obligation] theorem call_requires_19_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (tmp__6 : Prop)
    (changed_3 : Prop)
    (retained_5 : (Vermilion.Seq Prop))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_1_call_vec_index_3_ensures_0 : tmp__5 → (tmp__6 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_1_assume_37 : tmp__5 → (tmp__7 ↔ (¬ tmp__6)))
    (else_1_assume_36 : (¬ tmp__5) → (tmp__7 ↔ False))
    (branch_2 : tmp__7)
    (assert_16 : Vermilion.Seq.index edges i = vermilion.tuple_2.tuple_2 (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (assert_17 : reclaim_plan.has_edge_spec edges (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (assert_18 : reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__0 tmp__4)) :
    reclaim_plan.has_edge_spec edges (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.call_requires_19_1

-- vrml:begin reclaim_plan.plan.assert_20 272a907107b0f7d7
/--
Generated VC `reclaim_plan.plan.assert_20`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:529:28-529:80`
- Rust/SST construct: Rust source assertion
- AssertId: `20`
- Statement hash: `272a907107b0f7d7`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩
-/
def assert_20_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 529
  startColumn := 28
  endLine := 529
  endColumn := 80
  assertId := "20"
  functionName := "reclaim_plan.plan"
  kind := "assert"
  statementHash := "272a907107b0f7d7"
}
@[vrml_obligation] theorem assert_20
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (tmp__6 : Prop)
    (changed_3 : Prop)
    (retained_5 : (Vermilion.Seq Prop))
    (choose_spec_0 : (∃ (ro : Int), (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) → (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0))))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_1_call_vec_index_3_ensures_0 : tmp__5 → (tmp__6 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_1_assume_37 : tmp__5 → (tmp__7 ↔ (¬ tmp__6)))
    (else_1_assume_36 : (¬ tmp__5) → (tmp__7 ↔ False))
    (branch_2 : tmp__7)
    (assert_16 : Vermilion.Seq.index edges i = vermilion.tuple_2.tuple_2 (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (assert_17 : reclaim_plan.has_edge_spec edges (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (assert_18 : reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_reachable_extend_ensures_0 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1))) :
    reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.assert_20

-- vrml:begin reclaim_plan.plan.assert_21 dcf2b8fca4a1deea
/--
Generated VC `reclaim_plan.plan.assert_21`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:530:28-530:54`
- Rust/SST construct: Rust source assertion
- AssertId: `21`
- Statement hash: `dcf2b8fca4a1deea`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩
-/
def assert_21_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 530
  startColumn := 28
  endLine := 530
  endColumn := 54
  assertId := "21"
  functionName := "reclaim_plan.plan"
  kind := "assert"
  statementHash := "dcf2b8fca4a1deea"
}
@[vrml_obligation] theorem assert_21
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (tmp__6 : Prop)
    (changed_3 : Prop)
    (retained_5 : (Vermilion.Seq Prop))
    (choose_spec_0 : (∃ (ro : Int), (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) → (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0))))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_1_call_vec_index_3_ensures_0 : tmp__5 → (tmp__6 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_1_assume_37 : tmp__5 → (tmp__7 ↔ (¬ tmp__6)))
    (else_1_assume_36 : (¬ tmp__5) → (tmp__7 ↔ False))
    (branch_2 : tmp__7)
    (assert_16 : Vermilion.Seq.index edges i = vermilion.tuple_2.tuple_2 (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (assert_17 : reclaim_plan.has_edge_spec edges (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (assert_18 : reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_reachable_extend_ensures_0 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (assert_20 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1))) :
    reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__1 tmp__4) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.assert_21

-- vrml:begin reclaim_plan.plan.call_requires_22 856395b418bb6d2d
/--
Generated VC `reclaim_plan.plan.call_requires_22`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:533:17-533:38`
- Rust/SST construct: call set
- AssertId: `22`
- Statement hash: `856395b418bb6d2d`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩
-/
def call_requires_22_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 533
  startColumn := 17
  endLine := 533
  endColumn := 38
  assertId := "22"
  functionName := "reclaim_plan.plan"
  kind := "call_requires"
  statementHash := "856395b418bb6d2d"
}
@[vrml_obligation] theorem call_requires_22
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (tmp__6 : Prop)
    (changed_3 : Prop)
    (retained_5 : (Vermilion.Seq Prop))
    (tmp__post_3 : (Vermilion.Seq Prop))
    (choose_spec_0 : (∃ (ro : Int), (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) → (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0))))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_1_call_vec_index_3_ensures_0 : tmp__5 → (tmp__6 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_1_assume_37 : tmp__5 → (tmp__7 ↔ (¬ tmp__6)))
    (else_1_assume_36 : (¬ tmp__5) → (tmp__7 ↔ False))
    (branch_2 : tmp__7)
    (assert_16 : Vermilion.Seq.index edges i = vermilion.tuple_2.tuple_2 (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (assert_17 : reclaim_plan.has_edge_spec edges (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (assert_18 : reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_reachable_extend_ensures_0 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (assert_20 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (assert_21 : reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (assume_45 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3)) :
    vermilion.tuple_2.get_tuple_2__1 tmp__4 < Vermilion.Seq.len retained_4 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.call_requires_22

-- vrml:begin reclaim_plan.plan.call_requires_23_0 7a9c4195e3e12751
/--
Generated VC `reclaim_plan.plan.call_requires_23_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:535:21-535:53`
- Rust/SST construct: call count_true_set
- AssertId: `23_0`
- Statement hash: `7a9c4195e3e12751`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩
-/
def call_requires_23_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 535
  startColumn := 21
  endLine := 535
  endColumn := 53
  assertId := "23_0"
  functionName := "reclaim_plan.plan"
  kind := "call_requires"
  statementHash := "7a9c4195e3e12751"
}
@[vrml_obligation] theorem call_requires_23_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (tmp__6 : Prop)
    (changed_3 : Prop)
    (retained_5 : (Vermilion.Seq Prop))
    (tmp__post_3 : (Vermilion.Seq Prop))
    (choose_spec_0 : (∃ (ro : Int), (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) → (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0))))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_1_call_vec_index_3_ensures_0 : tmp__5 → (tmp__6 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_1_assume_37 : tmp__5 → (tmp__7 ↔ (¬ tmp__6)))
    (else_1_assume_36 : (¬ tmp__5) → (tmp__7 ↔ False))
    (branch_2 : tmp__7)
    (assert_16 : Vermilion.Seq.index edges i = vermilion.tuple_2.tuple_2 (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (assert_17 : reclaim_plan.has_edge_spec edges (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (assert_18 : reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_reachable_extend_ensures_0 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (assert_20 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (assert_21 : reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (assume_45 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (call_set_1_ensures_0 : tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True) :
    (0 ≤ vermilion.tuple_2.get_tuple_2__1 tmp__4) ∧ (vermilion.tuple_2.get_tuple_2__1 tmp__4 < Vermilion.Seq.len retained_4) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.call_requires_23_0

-- vrml:begin reclaim_plan.plan.call_requires_23_1 51035d9bed0db3a4
/--
Generated VC `reclaim_plan.plan.call_requires_23_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:535:21-535:53`
- Rust/SST construct: call count_true_set
- AssertId: `23_1`
- Statement hash: `51035d9bed0db3a4`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩
-/
def call_requires_23_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 535
  startColumn := 21
  endLine := 535
  endColumn := 53
  assertId := "23_1"
  functionName := "reclaim_plan.plan"
  kind := "call_requires"
  statementHash := "51035d9bed0db3a4"
}
@[vrml_obligation] theorem call_requires_23_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (tmp__6 : Prop)
    (changed_3 : Prop)
    (retained_5 : (Vermilion.Seq Prop))
    (tmp__post_3 : (Vermilion.Seq Prop))
    (choose_spec_0 : (∃ (ro : Int), (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) → (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0))))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_1_call_vec_index_3_ensures_0 : tmp__5 → (tmp__6 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_1_assume_37 : tmp__5 → (tmp__7 ↔ (¬ tmp__6)))
    (else_1_assume_36 : (¬ tmp__5) → (tmp__7 ↔ False))
    (branch_2 : tmp__7)
    (assert_16 : Vermilion.Seq.index edges i = vermilion.tuple_2.tuple_2 (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (assert_17 : reclaim_plan.has_edge_spec edges (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (assert_18 : reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_reachable_extend_ensures_0 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (assert_20 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (assert_21 : reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (assume_45 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (call_set_1_ensures_0 : tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True) :
    (¬ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.call_requires_23_1

-- vrml:begin reclaim_plan.plan.assert_24 2c77e8996d96f235
/--
Generated VC `reclaim_plan.plan.assert_24`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:536:28-536:70`
- Rust/SST construct: Rust source assertion
- AssertId: `24`
- Statement hash: `2c77e8996d96f235`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩
-/
def assert_24_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 536
  startColumn := 28
  endLine := 536
  endColumn := 70
  assertId := "24"
  functionName := "reclaim_plan.plan"
  kind := "assert"
  statementHash := "2c77e8996d96f235"
}
@[vrml_obligation] theorem assert_24
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (tmp__6 : Prop)
    (changed_3 : Prop)
    (retained_5 : (Vermilion.Seq Prop))
    (tmp__post_3 : (Vermilion.Seq Prop))
    (choose_spec_0 : (∃ (ro : Int), (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) → (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0))))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_1_call_vec_index_3_ensures_0 : tmp__5 → (tmp__6 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_1_assume_37 : tmp__5 → (tmp__7 ↔ (¬ tmp__6)))
    (else_1_assume_36 : (¬ tmp__5) → (tmp__7 ↔ False))
    (branch_2 : tmp__7)
    (assert_16 : Vermilion.Seq.index edges i = vermilion.tuple_2.tuple_2 (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (assert_17 : reclaim_plan.has_edge_spec edges (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (assert_18 : reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_reachable_extend_ensures_0 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (assert_20 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (assert_21 : reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (assume_45 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (call_set_1_ensures_0 : tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True)
    (call_count_true_set_ensures_0 : reclaim_plan.count_true (Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True) = Vermilion.natClip (reclaim_plan.count_true retained_4 + 1)) :
    tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.assert_24

-- vrml:begin reclaim_plan.plan.assert_25 8be49be7ff7139d2
/--
Generated VC `reclaim_plan.plan.assert_25`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:538:32-538:52`
- Rust/SST construct: Rust source assertion
- AssertId: `25`
- Statement hash: `8be49be7ff7139d2`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩
-/
def assert_25_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 538
  startColumn := 32
  endLine := 538
  endColumn := 52
  assertId := "25"
  functionName := "reclaim_plan.plan"
  kind := "assert"
  statementHash := "8be49be7ff7139d2"
}
@[vrml_obligation] theorem assert_25
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (tmp__6 : Prop)
    (changed_3 : Prop)
    (retained_5 : (Vermilion.Seq Prop))
    (tmp__post_3 : (Vermilion.Seq Prop))
    (j : Int)
    (choose_spec_0 : (∃ (ro : Int), (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) → (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0))))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_1_call_vec_index_3_ensures_0 : tmp__5 → (tmp__6 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_1_assume_37 : tmp__5 → (tmp__7 ↔ (¬ tmp__6)))
    (else_1_assume_36 : (¬ tmp__5) → (tmp__7 ↔ False))
    (branch_2 : tmp__7)
    (assert_16 : Vermilion.Seq.index edges i = vermilion.tuple_2.tuple_2 (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (assert_17 : reclaim_plan.has_edge_spec edges (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (assert_18 : reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_reachable_extend_ensures_0 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (assert_20 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (assert_21 : reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (assume_45 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (call_set_1_ensures_0 : tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True)
    (call_count_true_set_ensures_0 : reclaim_plan.count_true (Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True) = Vermilion.natClip (reclaim_plan.count_true retained_4 + 1))
    (assert_24 : tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True)
    (assume_49 : True)
    (assume_50 : (0 ≤ j) ∧ (j < Vermilion.Seq.len roots)) :
    Vermilion.Seq.index retained_4 (Vermilion.Seq.index roots j) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.assert_25

-- vrml:begin reclaim_plan.plan.assert_26 6cf1613752d0c526
/--
Generated VC `reclaim_plan.plan.assert_26`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:537:87-537:110`
- Rust/SST construct: Rust source assertion
- AssertId: `26`
- Statement hash: `6cf1613752d0c526`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩
-/
def assert_26_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 537
  startColumn := 87
  endLine := 537
  endColumn := 110
  assertId := "26"
  functionName := "reclaim_plan.plan"
  kind := "assert"
  statementHash := "6cf1613752d0c526"
}
@[vrml_obligation] theorem assert_26
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (tmp__6 : Prop)
    (changed_3 : Prop)
    (retained_5 : (Vermilion.Seq Prop))
    (tmp__post_3 : (Vermilion.Seq Prop))
    (j : Int)
    (choose_spec_0 : (∃ (ro : Int), (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) → (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0))))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_1_call_vec_index_3_ensures_0 : tmp__5 → (tmp__6 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_1_assume_37 : tmp__5 → (tmp__7 ↔ (¬ tmp__6)))
    (else_1_assume_36 : (¬ tmp__5) → (tmp__7 ↔ False))
    (branch_2 : tmp__7)
    (assert_16 : Vermilion.Seq.index edges i = vermilion.tuple_2.tuple_2 (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (assert_17 : reclaim_plan.has_edge_spec edges (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (assert_18 : reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_reachable_extend_ensures_0 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (assert_20 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (assert_21 : reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (assume_45 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (call_set_1_ensures_0 : tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True)
    (call_count_true_set_ensures_0 : reclaim_plan.count_true (Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True) = Vermilion.natClip (reclaim_plan.count_true retained_4 + 1))
    (assert_24 : tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True)
    (assume_49 : True)
    (assume_50 : (0 ≤ j) ∧ (j < Vermilion.Seq.len roots))
    (assert_25 : Vermilion.Seq.index retained_4 (Vermilion.Seq.index roots j)) :
    Vermilion.Seq.index tmp__post_3 (Vermilion.Seq.index roots j) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.assert_26

-- vrml:begin reclaim_plan.plan.assert_27 0b095da2d282089b
/--
Generated VC `reclaim_plan.plan.assert_27`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:543:13-543:19`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `27`
- Statement hash: `0b095da2d282089b`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def assert_27_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 543
  startColumn := 13
  endLine := 543
  endColumn := 19
  assertId := "27"
  functionName := "reclaim_plan.plan"
  kind := "assert"
  statementHash := "0b095da2d282089b"
}
@[vrml_obligation] theorem assert_27
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (tmp__6 : Prop)
    (changed_3 : Prop)
    (retained_5 : (Vermilion.Seq Prop))
    (tmp__post_3 : (Vermilion.Seq Prop))
    (choose_spec_0 : (∃ (ro : Int), (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) → (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0))))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_1_call_vec_index_3_ensures_0 : tmp__5 → (tmp__6 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_1_assume_37 : tmp__5 → (tmp__7 ↔ (¬ tmp__6)))
    (else_1_assume_36 : (¬ tmp__5) → (tmp__7 ↔ False))
    (then_2_assert_16 : tmp__7 → (Vermilion.Seq.index edges i = vermilion.tuple_2.tuple_2 (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_2_assert_17 : tmp__7 → reclaim_plan.has_edge_spec edges (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assert_18 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_2_call_reachable_extend_ensures_0 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_20 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_21 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assume_45 : tmp__7 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (then_2_call_set_1_ensures_0 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_call_count_true_set_ensures_0 : tmp__7 → (reclaim_plan.count_true (Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True) = Vermilion.natClip (reclaim_plan.count_true retained_4 + 1)))
    (then_2_assert_24 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_assume_49 : tmp__7 → (∀ (j : Int), (((0 ≤ j) ∧ (j < Vermilion.Seq.len roots)) → Vermilion.Seq.index tmp__post_3 (Vermilion.Seq.index roots j))))
    (then_2_assume_50 : tmp__7 → (changed_3 ↔ True))
    (then_2_assume_51 : tmp__7 → (retained_5 = tmp__post_3))
    (else_2_assume_39 : (¬ tmp__7) → (changed_3 ↔ changed_2))
    (else_2_assume_40 : (¬ tmp__7) → (retained_5 = retained_4))
    (assume_53 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_5)) :
    Vermilion.inUnsignedRange 64 (i + 1) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.assert_27

-- vrml:begin reclaim_plan.plan.invariant_preserve_3_0 2d78efc469a69974
/--
Generated VC `reclaim_plan.plan.invariant_preserve_3_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:507:17-507:38`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `3_0`
- Statement hash: `2d78efc469a69974`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_preserve_3_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 507
  startColumn := 17
  endLine := 507
  endColumn := 38
  assertId := "3_0"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "2d78efc469a69974"
}
@[vrml_obligation] theorem invariant_preserve_3_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (tmp__6 : Prop)
    (changed_3 : Prop)
    (retained_5 : (Vermilion.Seq Prop))
    (tmp__post_3 : (Vermilion.Seq Prop))
    (choose_spec_0 : (∃ (ro : Int), (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) → (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0))))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_1_call_vec_index_3_ensures_0 : tmp__5 → (tmp__6 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_1_assume_37 : tmp__5 → (tmp__7 ↔ (¬ tmp__6)))
    (else_1_assume_36 : (¬ tmp__5) → (tmp__7 ↔ False))
    (then_2_assert_16 : tmp__7 → (Vermilion.Seq.index edges i = vermilion.tuple_2.tuple_2 (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_2_assert_17 : tmp__7 → reclaim_plan.has_edge_spec edges (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assert_18 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_2_call_reachable_extend_ensures_0 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_20 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_21 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assume_45 : tmp__7 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (then_2_call_set_1_ensures_0 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_call_count_true_set_ensures_0 : tmp__7 → (reclaim_plan.count_true (Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True) = Vermilion.natClip (reclaim_plan.count_true retained_4 + 1)))
    (then_2_assert_24 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_assume_49 : tmp__7 → (∀ (j : Int), (((0 ≤ j) ∧ (j < Vermilion.Seq.len roots)) → Vermilion.Seq.index tmp__post_3 (Vermilion.Seq.index roots j))))
    (then_2_assume_50 : tmp__7 → (changed_3 ↔ True))
    (then_2_assume_51 : tmp__7 → (retained_5 = tmp__post_3))
    (else_2_assume_39 : (¬ tmp__7) → (changed_3 ↔ changed_2))
    (else_2_assume_40 : (¬ tmp__7) → (retained_5 = retained_4))
    (assume_53 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_5))
    (assert_27 : Vermilion.inUnsignedRange 64 (i + 1)) :
    (0 ≤ ((i + 1) % 18446744073709551616)) ∧ (((i + 1) % 18446744073709551616) ≤ Vermilion.Seq.len edges) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.invariant_preserve_3_0

-- vrml:begin reclaim_plan.plan.invariant_preserve_3_1 afd49a950905c7c4
/--
Generated VC `reclaim_plan.plan.invariant_preserve_3_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:507:40-507:60`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `3_1`
- Statement hash: `afd49a950905c7c4`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_preserve_3_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 507
  startColumn := 40
  endLine := 507
  endColumn := 60
  assertId := "3_1"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "afd49a950905c7c4"
}
@[vrml_obligation] theorem invariant_preserve_3_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (tmp__6 : Prop)
    (changed_3 : Prop)
    (retained_5 : (Vermilion.Seq Prop))
    (tmp__post_3 : (Vermilion.Seq Prop))
    (choose_spec_0 : (∃ (ro : Int), (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) → (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0))))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_1_call_vec_index_3_ensures_0 : tmp__5 → (tmp__6 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_1_assume_37 : tmp__5 → (tmp__7 ↔ (¬ tmp__6)))
    (else_1_assume_36 : (¬ tmp__5) → (tmp__7 ↔ False))
    (then_2_assert_16 : tmp__7 → (Vermilion.Seq.index edges i = vermilion.tuple_2.tuple_2 (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_2_assert_17 : tmp__7 → reclaim_plan.has_edge_spec edges (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assert_18 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_2_call_reachable_extend_ensures_0 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_20 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_21 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assume_45 : tmp__7 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (then_2_call_set_1_ensures_0 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_call_count_true_set_ensures_0 : tmp__7 → (reclaim_plan.count_true (Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True) = Vermilion.natClip (reclaim_plan.count_true retained_4 + 1)))
    (then_2_assert_24 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_assume_49 : tmp__7 → (∀ (j : Int), (((0 ≤ j) ∧ (j < Vermilion.Seq.len roots)) → Vermilion.Seq.index tmp__post_3 (Vermilion.Seq.index roots j))))
    (then_2_assume_50 : tmp__7 → (changed_3 ↔ True))
    (then_2_assume_51 : tmp__7 → (retained_5 = tmp__post_3))
    (else_2_assume_39 : (¬ tmp__7) → (changed_3 ↔ changed_2))
    (else_2_assume_40 : (¬ tmp__7) → (retained_5 = retained_4))
    (assume_53 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_5))
    (assert_27 : Vermilion.inUnsignedRange 64 (i + 1)) :
    Vermilion.Seq.len retained_5 = n := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.invariant_preserve_3_1

-- vrml:begin reclaim_plan.plan.invariant_preserve_3_2 a50acce3dc863b95
/--
Generated VC `reclaim_plan.plan.invariant_preserve_3_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:507:62-507:74`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `3_2`
- Statement hash: `a50acce3dc863b95`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_preserve_3_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 507
  startColumn := 62
  endLine := 507
  endColumn := 74
  assertId := "3_2"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "a50acce3dc863b95"
}
@[vrml_obligation] theorem invariant_preserve_3_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (tmp__6 : Prop)
    (changed_3 : Prop)
    (retained_5 : (Vermilion.Seq Prop))
    (tmp__post_3 : (Vermilion.Seq Prop))
    (choose_spec_0 : (∃ (ro : Int), (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) → (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0))))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_1_call_vec_index_3_ensures_0 : tmp__5 → (tmp__6 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_1_assume_37 : tmp__5 → (tmp__7 ↔ (¬ tmp__6)))
    (else_1_assume_36 : (¬ tmp__5) → (tmp__7 ↔ False))
    (then_2_assert_16 : tmp__7 → (Vermilion.Seq.index edges i = vermilion.tuple_2.tuple_2 (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_2_assert_17 : tmp__7 → reclaim_plan.has_edge_spec edges (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assert_18 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_2_call_reachable_extend_ensures_0 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_20 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_21 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assume_45 : tmp__7 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (then_2_call_set_1_ensures_0 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_call_count_true_set_ensures_0 : tmp__7 → (reclaim_plan.count_true (Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True) = Vermilion.natClip (reclaim_plan.count_true retained_4 + 1)))
    (then_2_assert_24 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_assume_49 : tmp__7 → (∀ (j : Int), (((0 ≤ j) ∧ (j < Vermilion.Seq.len roots)) → Vermilion.Seq.index tmp__post_3 (Vermilion.Seq.index roots j))))
    (then_2_assume_50 : tmp__7 → (changed_3 ↔ True))
    (then_2_assume_51 : tmp__7 → (retained_5 = tmp__post_3))
    (else_2_assume_39 : (¬ tmp__7) → (changed_3 ↔ changed_2))
    (else_2_assume_40 : (¬ tmp__7) → (retained_5 = retained_4))
    (assume_53 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_5))
    (assert_27 : Vermilion.inUnsignedRange 64 (i + 1)) :
    roots = roots := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_preserve_3_2

-- vrml:begin reclaim_plan.plan.invariant_preserve_3_3 70748dcf9f562e99
/--
Generated VC `reclaim_plan.plan.invariant_preserve_3_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:507:76-507:87`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `3_3`
- Statement hash: `70748dcf9f562e99`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_preserve_3_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 507
  startColumn := 76
  endLine := 507
  endColumn := 87
  assertId := "3_3"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "70748dcf9f562e99"
}
@[vrml_obligation] theorem invariant_preserve_3_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (tmp__6 : Prop)
    (changed_3 : Prop)
    (retained_5 : (Vermilion.Seq Prop))
    (tmp__post_3 : (Vermilion.Seq Prop))
    (choose_spec_0 : (∃ (ro : Int), (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) → (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0))))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_1_call_vec_index_3_ensures_0 : tmp__5 → (tmp__6 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_1_assume_37 : tmp__5 → (tmp__7 ↔ (¬ tmp__6)))
    (else_1_assume_36 : (¬ tmp__5) → (tmp__7 ↔ False))
    (then_2_assert_16 : tmp__7 → (Vermilion.Seq.index edges i = vermilion.tuple_2.tuple_2 (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_2_assert_17 : tmp__7 → reclaim_plan.has_edge_spec edges (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assert_18 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_2_call_reachable_extend_ensures_0 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_20 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_21 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assume_45 : tmp__7 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (then_2_call_set_1_ensures_0 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_call_count_true_set_ensures_0 : tmp__7 → (reclaim_plan.count_true (Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True) = Vermilion.natClip (reclaim_plan.count_true retained_4 + 1)))
    (then_2_assert_24 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_assume_49 : tmp__7 → (∀ (j : Int), (((0 ≤ j) ∧ (j < Vermilion.Seq.len roots)) → Vermilion.Seq.index tmp__post_3 (Vermilion.Seq.index roots j))))
    (then_2_assume_50 : tmp__7 → (changed_3 ↔ True))
    (then_2_assume_51 : tmp__7 → (retained_5 = tmp__post_3))
    (else_2_assume_39 : (¬ tmp__7) → (changed_3 ↔ changed_2))
    (else_2_assume_40 : (¬ tmp__7) → (retained_5 = retained_4))
    (assume_53 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_5))
    (assert_27 : Vermilion.inUnsignedRange 64 (i + 1)) :
    edges = edges := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_preserve_3_3

-- vrml:begin reclaim_plan.plan.invariant_preserve_3_4 82da3eadf0d1300f
/--
Generated VC `reclaim_plan.plan.invariant_preserve_3_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:508:17-508:49`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `3_4`
- Statement hash: `82da3eadf0d1300f`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_preserve_3_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 508
  startColumn := 17
  endLine := 508
  endColumn := 49
  assertId := "3_4"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "82da3eadf0d1300f"
}
@[vrml_obligation] theorem invariant_preserve_3_4
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (tmp__6 : Prop)
    (changed_3 : Prop)
    (retained_5 : (Vermilion.Seq Prop))
    (tmp__post_3 : (Vermilion.Seq Prop))
    (choose_spec_0 : (∃ (ro : Int), (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) → (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0))))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_1_call_vec_index_3_ensures_0 : tmp__5 → (tmp__6 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_1_assume_37 : tmp__5 → (tmp__7 ↔ (¬ tmp__6)))
    (else_1_assume_36 : (¬ tmp__5) → (tmp__7 ↔ False))
    (then_2_assert_16 : tmp__7 → (Vermilion.Seq.index edges i = vermilion.tuple_2.tuple_2 (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_2_assert_17 : tmp__7 → reclaim_plan.has_edge_spec edges (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assert_18 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_2_call_reachable_extend_ensures_0 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_20 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_21 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assume_45 : tmp__7 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (then_2_call_set_1_ensures_0 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_call_count_true_set_ensures_0 : tmp__7 → (reclaim_plan.count_true (Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True) = Vermilion.natClip (reclaim_plan.count_true retained_4 + 1)))
    (then_2_assert_24 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_assume_49 : tmp__7 → (∀ (j : Int), (((0 ≤ j) ∧ (j < Vermilion.Seq.len roots)) → Vermilion.Seq.index tmp__post_3 (Vermilion.Seq.index roots j))))
    (then_2_assume_50 : tmp__7 → (changed_3 ↔ True))
    (then_2_assume_51 : tmp__7 → (retained_5 = tmp__post_3))
    (else_2_assume_39 : (¬ tmp__7) → (changed_3 ↔ changed_2))
    (else_2_assume_40 : (¬ tmp__7) → (retained_5 = retained_4))
    (assume_53 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_5))
    (assert_27 : Vermilion.inUnsignedRange 64 (i + 1)) :
    reclaim_plan.edges_in_range_spec n edges := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.invariant_preserve_3_4

-- vrml:begin reclaim_plan.plan.invariant_preserve_3_5 bf2a3346c8f3fab3
/--
Generated VC `reclaim_plan.plan.invariant_preserve_3_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:508:51-508:84`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `3_5`
- Statement hash: `bf2a3346c8f3fab3`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_preserve_3_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 508
  startColumn := 51
  endLine := 508
  endColumn := 84
  assertId := "3_5"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "bf2a3346c8f3fab3"
}
@[vrml_obligation] theorem invariant_preserve_3_5
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (tmp__6 : Prop)
    (changed_3 : Prop)
    (retained_5 : (Vermilion.Seq Prop))
    (tmp__post_3 : (Vermilion.Seq Prop))
    (choose_spec_0 : (∃ (ro : Int), (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) → (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0))))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_1_call_vec_index_3_ensures_0 : tmp__5 → (tmp__6 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_1_assume_37 : tmp__5 → (tmp__7 ↔ (¬ tmp__6)))
    (else_1_assume_36 : (¬ tmp__5) → (tmp__7 ↔ False))
    (then_2_assert_16 : tmp__7 → (Vermilion.Seq.index edges i = vermilion.tuple_2.tuple_2 (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_2_assert_17 : tmp__7 → reclaim_plan.has_edge_spec edges (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assert_18 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_2_call_reachable_extend_ensures_0 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_20 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_21 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assume_45 : tmp__7 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (then_2_call_set_1_ensures_0 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_call_count_true_set_ensures_0 : tmp__7 → (reclaim_plan.count_true (Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True) = Vermilion.natClip (reclaim_plan.count_true retained_4 + 1)))
    (then_2_assert_24 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_assume_49 : tmp__7 → (∀ (j : Int), (((0 ≤ j) ∧ (j < Vermilion.Seq.len roots)) → Vermilion.Seq.index tmp__post_3 (Vermilion.Seq.index roots j))))
    (then_2_assume_50 : tmp__7 → (changed_3 ↔ True))
    (then_2_assume_51 : tmp__7 → (retained_5 = tmp__post_3))
    (else_2_assume_39 : (¬ tmp__7) → (changed_3 ↔ changed_2))
    (else_2_assume_40 : (¬ tmp__7) → (retained_5 = retained_4))
    (assume_53 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_5))
    (assert_27 : Vermilion.inUnsignedRange 64 (i + 1)) :
    reclaim_plan.roots_in_range_spec n roots := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.invariant_preserve_3_5

-- vrml:begin reclaim_plan.plan.invariant_preserve_3_6 7a84ff42b104e9d6
/--
Generated VC `reclaim_plan.plan.invariant_preserve_3_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:509:17-509:51`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `3_6`
- Statement hash: `7a84ff42b104e9d6`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_preserve_3_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 509
  startColumn := 17
  endLine := 509
  endColumn := 51
  assertId := "3_6"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "7a84ff42b104e9d6"
}
@[vrml_obligation] theorem invariant_preserve_3_6
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (tmp__6 : Prop)
    (changed_3 : Prop)
    (retained_5 : (Vermilion.Seq Prop))
    (tmp__post_3 : (Vermilion.Seq Prop))
    (choose_spec_0 : (∃ (ro : Int), (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) → (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0))))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_1_call_vec_index_3_ensures_0 : tmp__5 → (tmp__6 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_1_assume_37 : tmp__5 → (tmp__7 ↔ (¬ tmp__6)))
    (else_1_assume_36 : (¬ tmp__5) → (tmp__7 ↔ False))
    (then_2_assert_16 : tmp__7 → (Vermilion.Seq.index edges i = vermilion.tuple_2.tuple_2 (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_2_assert_17 : tmp__7 → reclaim_plan.has_edge_spec edges (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assert_18 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_2_call_reachable_extend_ensures_0 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_20 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_21 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assume_45 : tmp__7 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (then_2_call_set_1_ensures_0 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_call_count_true_set_ensures_0 : tmp__7 → (reclaim_plan.count_true (Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True) = Vermilion.natClip (reclaim_plan.count_true retained_4 + 1)))
    (then_2_assert_24 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_assume_49 : tmp__7 → (∀ (j : Int), (((0 ≤ j) ∧ (j < Vermilion.Seq.len roots)) → Vermilion.Seq.index tmp__post_3 (Vermilion.Seq.index roots j))))
    (then_2_assume_50 : tmp__7 → (changed_3 ↔ True))
    (then_2_assume_51 : tmp__7 → (retained_5 = tmp__post_3))
    (else_2_assume_39 : (¬ tmp__7) → (changed_3 ↔ changed_2))
    (else_2_assume_40 : (¬ tmp__7) → (retained_5 = retained_4))
    (assume_53 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_5))
    (assert_27 : Vermilion.inUnsignedRange 64 (i + 1)) :
    reclaim_plan.roots_retained_spec roots retained_5 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.invariant_preserve_3_6

-- vrml:begin reclaim_plan.plan.invariant_preserve_3_7 daed25116b699ee2
/--
Generated VC `reclaim_plan.plan.invariant_preserve_3_7`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:510:17-510:54`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `3_7`
- Statement hash: `daed25116b699ee2`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_preserve_3_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 510
  startColumn := 17
  endLine := 510
  endColumn := 54
  assertId := "3_7"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "daed25116b699ee2"
}
@[vrml_obligation] theorem invariant_preserve_3_7
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (tmp__6 : Prop)
    (changed_3 : Prop)
    (retained_5 : (Vermilion.Seq Prop))
    (tmp__post_3 : (Vermilion.Seq Prop))
    (choose_spec_0 : (∃ (ro : Int), (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) → (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0))))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_1_call_vec_index_3_ensures_0 : tmp__5 → (tmp__6 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_1_assume_37 : tmp__5 → (tmp__7 ↔ (¬ tmp__6)))
    (else_1_assume_36 : (¬ tmp__5) → (tmp__7 ↔ False))
    (then_2_assert_16 : tmp__7 → (Vermilion.Seq.index edges i = vermilion.tuple_2.tuple_2 (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_2_assert_17 : tmp__7 → reclaim_plan.has_edge_spec edges (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assert_18 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_2_call_reachable_extend_ensures_0 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_20 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_21 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assume_45 : tmp__7 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (then_2_call_set_1_ensures_0 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_call_count_true_set_ensures_0 : tmp__7 → (reclaim_plan.count_true (Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True) = Vermilion.natClip (reclaim_plan.count_true retained_4 + 1)))
    (then_2_assert_24 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_assume_49 : tmp__7 → (∀ (j : Int), (((0 ≤ j) ∧ (j < Vermilion.Seq.len roots)) → Vermilion.Seq.index tmp__post_3 (Vermilion.Seq.index roots j))))
    (then_2_assume_50 : tmp__7 → (changed_3 ↔ True))
    (then_2_assume_51 : tmp__7 → (retained_5 = tmp__post_3))
    (else_2_assume_39 : (¬ tmp__7) → (changed_3 ↔ changed_2))
    (else_2_assume_40 : (¬ tmp__7) → (retained_5 = retained_4))
    (assume_53 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_5))
    (assert_27 : Vermilion.inUnsignedRange 64 (i + 1)) :
    reclaim_plan.retained_sound_spec edges roots retained_5 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.invariant_preserve_3_7

-- vrml:begin reclaim_plan.plan.invariant_preserve_3_8 39ee2cd084de6c0d
/--
Generated VC `reclaim_plan.plan.invariant_preserve_3_8`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:511:17-511:48`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `3_8`
- Statement hash: `39ee2cd084de6c0d`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_preserve_3_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 511
  startColumn := 17
  endLine := 511
  endColumn := 48
  assertId := "3_8"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "39ee2cd084de6c0d"
}
@[vrml_obligation] theorem invariant_preserve_3_8
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (tmp__6 : Prop)
    (changed_3 : Prop)
    (retained_5 : (Vermilion.Seq Prop))
    (tmp__post_3 : (Vermilion.Seq Prop))
    (choose_spec_0 : (∃ (ro : Int), (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) → (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0))))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_1_call_vec_index_3_ensures_0 : tmp__5 → (tmp__6 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_1_assume_37 : tmp__5 → (tmp__7 ↔ (¬ tmp__6)))
    (else_1_assume_36 : (¬ tmp__5) → (tmp__7 ↔ False))
    (then_2_assert_16 : tmp__7 → (Vermilion.Seq.index edges i = vermilion.tuple_2.tuple_2 (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_2_assert_17 : tmp__7 → reclaim_plan.has_edge_spec edges (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assert_18 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_2_call_reachable_extend_ensures_0 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_20 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_21 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assume_45 : tmp__7 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (then_2_call_set_1_ensures_0 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_call_count_true_set_ensures_0 : tmp__7 → (reclaim_plan.count_true (Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True) = Vermilion.natClip (reclaim_plan.count_true retained_4 + 1)))
    (then_2_assert_24 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_assume_49 : tmp__7 → (∀ (j : Int), (((0 ≤ j) ∧ (j < Vermilion.Seq.len roots)) → Vermilion.Seq.index tmp__post_3 (Vermilion.Seq.index roots j))))
    (then_2_assume_50 : tmp__7 → (changed_3 ↔ True))
    (then_2_assume_51 : tmp__7 → (retained_5 = tmp__post_3))
    (else_2_assume_39 : (¬ tmp__7) → (changed_3 ↔ changed_2))
    (else_2_assume_40 : (¬ tmp__7) → (retained_5 = retained_4))
    (assume_53 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_5))
    (assert_27 : Vermilion.inUnsignedRange 64 (i + 1)) :
    (¬ changed_3) → (retained_5 = retained_3) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.invariant_preserve_3_8

-- vrml:begin reclaim_plan.plan.invariant_preserve_3_9 09deabf381fcf1f4
/--
Generated VC `reclaim_plan.plan.invariant_preserve_3_9`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:512:17-513:76`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `3_9`
- Statement hash: `09deabf381fcf1f4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges j⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_preserve_3_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 512
  startColumn := 17
  endLine := 513
  endColumn := 76
  assertId := "3_9"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "09deabf381fcf1f4"
}
@[vrml_obligation] theorem invariant_preserve_3_9
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (tmp__6 : Prop)
    (changed_3 : Prop)
    (retained_5 : (Vermilion.Seq Prop))
    (tmp__post_3 : (Vermilion.Seq Prop))
    (choose_spec_0 : (∃ (ro : Int), (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) → (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0))))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_1_call_vec_index_3_ensures_0 : tmp__5 → (tmp__6 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_1_assume_37 : tmp__5 → (tmp__7 ↔ (¬ tmp__6)))
    (else_1_assume_36 : (¬ tmp__5) → (tmp__7 ↔ False))
    (then_2_assert_16 : tmp__7 → (Vermilion.Seq.index edges i = vermilion.tuple_2.tuple_2 (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_2_assert_17 : tmp__7 → reclaim_plan.has_edge_spec edges (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assert_18 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_2_call_reachable_extend_ensures_0 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_20 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_21 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assume_45 : tmp__7 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (then_2_call_set_1_ensures_0 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_call_count_true_set_ensures_0 : tmp__7 → (reclaim_plan.count_true (Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True) = Vermilion.natClip (reclaim_plan.count_true retained_4 + 1)))
    (then_2_assert_24 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_assume_49 : tmp__7 → (∀ (j : Int), (((0 ≤ j) ∧ (j < Vermilion.Seq.len roots)) → Vermilion.Seq.index tmp__post_3 (Vermilion.Seq.index roots j))))
    (then_2_assume_50 : tmp__7 → (changed_3 ↔ True))
    (then_2_assume_51 : tmp__7 → (retained_5 = tmp__post_3))
    (else_2_assume_39 : (¬ tmp__7) → (changed_3 ↔ changed_2))
    (else_2_assume_40 : (¬ tmp__7) → (retained_5 = retained_4))
    (assume_53 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_5))
    (assert_27 : Vermilion.inUnsignedRange 64 (i + 1)) :
    (¬ changed_3) → (∀ (j : Int), (((0 ≤ j) ∧ (j < ((i + 1) % 18446744073709551616))) → (Vermilion.Seq.index retained_5 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_5 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.invariant_preserve_3_9

-- vrml:begin reclaim_plan.plan.invariant_preserve_3_10 0084d0cb0aeb2f29
/--
Generated VC `reclaim_plan.plan.invariant_preserve_3_10`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:514:17-514:49`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `3_10`
- Statement hash: `0084d0cb0aeb2f29`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_preserve_3_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 514
  startColumn := 17
  endLine := 514
  endColumn := 49
  assertId := "3_10"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "0084d0cb0aeb2f29"
}
@[vrml_obligation] theorem invariant_preserve_3_10
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (tmp__6 : Prop)
    (changed_3 : Prop)
    (retained_5 : (Vermilion.Seq Prop))
    (tmp__post_3 : (Vermilion.Seq Prop))
    (choose_spec_0 : (∃ (ro : Int), (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) → (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0))))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_1_call_vec_index_3_ensures_0 : tmp__5 → (tmp__6 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_1_assume_37 : tmp__5 → (tmp__7 ↔ (¬ tmp__6)))
    (else_1_assume_36 : (¬ tmp__5) → (tmp__7 ↔ False))
    (then_2_assert_16 : tmp__7 → (Vermilion.Seq.index edges i = vermilion.tuple_2.tuple_2 (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_2_assert_17 : tmp__7 → reclaim_plan.has_edge_spec edges (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assert_18 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_2_call_reachable_extend_ensures_0 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_20 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_21 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assume_45 : tmp__7 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (then_2_call_set_1_ensures_0 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_call_count_true_set_ensures_0 : tmp__7 → (reclaim_plan.count_true (Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True) = Vermilion.natClip (reclaim_plan.count_true retained_4 + 1)))
    (then_2_assert_24 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_assume_49 : tmp__7 → (∀ (j : Int), (((0 ≤ j) ∧ (j < Vermilion.Seq.len roots)) → Vermilion.Seq.index tmp__post_3 (Vermilion.Seq.index roots j))))
    (then_2_assume_50 : tmp__7 → (changed_3 ↔ True))
    (then_2_assume_51 : tmp__7 → (retained_5 = tmp__post_3))
    (else_2_assume_39 : (¬ tmp__7) → (changed_3 ↔ changed_2))
    (else_2_assume_40 : (¬ tmp__7) → (retained_5 = retained_4))
    (assume_53 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_5))
    (assert_27 : Vermilion.inUnsignedRange 64 (i + 1)) :
    reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_preserve_3_10

-- vrml:begin reclaim_plan.plan.invariant_preserve_3_11 f23eb09387aeeefa
/--
Generated VC `reclaim_plan.plan.invariant_preserve_3_11`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:515:17-515:53`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `3_11`
- Statement hash: `f23eb09387aeeefa`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_preserve_3_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 515
  startColumn := 17
  endLine := 515
  endColumn := 53
  assertId := "3_11"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "f23eb09387aeeefa"
}
@[vrml_obligation] theorem invariant_preserve_3_11
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (tmp__6 : Prop)
    (changed_3 : Prop)
    (retained_5 : (Vermilion.Seq Prop))
    (tmp__post_3 : (Vermilion.Seq Prop))
    (choose_spec_0 : (∃ (ro : Int), (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) → (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0))))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_1_call_vec_index_3_ensures_0 : tmp__5 → (tmp__6 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_1_assume_37 : tmp__5 → (tmp__7 ↔ (¬ tmp__6)))
    (else_1_assume_36 : (¬ tmp__5) → (tmp__7 ↔ False))
    (then_2_assert_16 : tmp__7 → (Vermilion.Seq.index edges i = vermilion.tuple_2.tuple_2 (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_2_assert_17 : tmp__7 → reclaim_plan.has_edge_spec edges (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assert_18 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_2_call_reachable_extend_ensures_0 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_20 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_21 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assume_45 : tmp__7 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (then_2_call_set_1_ensures_0 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_call_count_true_set_ensures_0 : tmp__7 → (reclaim_plan.count_true (Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True) = Vermilion.natClip (reclaim_plan.count_true retained_4 + 1)))
    (then_2_assert_24 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_assume_49 : tmp__7 → (∀ (j : Int), (((0 ≤ j) ∧ (j < Vermilion.Seq.len roots)) → Vermilion.Seq.index tmp__post_3 (Vermilion.Seq.index roots j))))
    (then_2_assume_50 : tmp__7 → (changed_3 ↔ True))
    (then_2_assume_51 : tmp__7 → (retained_5 = tmp__post_3))
    (else_2_assume_39 : (¬ tmp__7) → (changed_3 ↔ changed_2))
    (else_2_assume_40 : (¬ tmp__7) → (retained_5 = retained_4))
    (assume_53 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_5))
    (assert_27 : Vermilion.inUnsignedRange 64 (i + 1)) :
    reclaim_plan.count_true retained_5 ≥ reclaim_plan.count_true retained_3 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.invariant_preserve_3_11

-- vrml:begin reclaim_plan.plan.invariant_preserve_3_12 50556aab58154242
/--
Generated VC `reclaim_plan.plan.invariant_preserve_3_12`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:516:17-516:69`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `3_12`
- Statement hash: `50556aab58154242`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_preserve_3_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 516
  startColumn := 17
  endLine := 516
  endColumn := 69
  assertId := "3_12"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "50556aab58154242"
}
@[vrml_obligation] theorem invariant_preserve_3_12
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (tmp__6 : Prop)
    (changed_3 : Prop)
    (retained_5 : (Vermilion.Seq Prop))
    (tmp__post_3 : (Vermilion.Seq Prop))
    (choose_spec_0 : (∃ (ro : Int), (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) → (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0))))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_1_call_vec_index_3_ensures_0 : tmp__5 → (tmp__6 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_1_assume_37 : tmp__5 → (tmp__7 ↔ (¬ tmp__6)))
    (else_1_assume_36 : (¬ tmp__5) → (tmp__7 ↔ False))
    (then_2_assert_16 : tmp__7 → (Vermilion.Seq.index edges i = vermilion.tuple_2.tuple_2 (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_2_assert_17 : tmp__7 → reclaim_plan.has_edge_spec edges (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assert_18 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_2_call_reachable_extend_ensures_0 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_20 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_21 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assume_45 : tmp__7 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (then_2_call_set_1_ensures_0 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_call_count_true_set_ensures_0 : tmp__7 → (reclaim_plan.count_true (Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True) = Vermilion.natClip (reclaim_plan.count_true retained_4 + 1)))
    (then_2_assert_24 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_assume_49 : tmp__7 → (∀ (j : Int), (((0 ≤ j) ∧ (j < Vermilion.Seq.len roots)) → Vermilion.Seq.index tmp__post_3 (Vermilion.Seq.index roots j))))
    (then_2_assume_50 : tmp__7 → (changed_3 ↔ True))
    (then_2_assume_51 : tmp__7 → (retained_5 = tmp__post_3))
    (else_2_assume_39 : (¬ tmp__7) → (changed_3 ↔ changed_2))
    (else_2_assume_40 : (¬ tmp__7) → (retained_5 = retained_4))
    (assume_53 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_5))
    (assert_27 : Vermilion.inUnsignedRange 64 (i + 1)) :
    changed_3 → (reclaim_plan.count_true retained_5 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.invariant_preserve_3_12

-- vrml:begin reclaim_plan.plan.assert_3_decreases 477562c8f17d52cb
/--
Generated VC `reclaim_plan.plan.assert_3_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:517:23-517:38`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `3_decreases`
- Statement hash: `477562c8f17d52cb`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots ro⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def assert_3_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 517
  startColumn := 23
  endLine := 517
  endColumn := 38
  assertId := "3_decreases"
  functionName := "reclaim_plan.plan"
  kind := "assert"
  statementHash := "477562c8f17d52cb"
}
@[vrml_obligation] theorem assert_3_decreases
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (tmp__4 : (vermilion.tuple_2 Int Int))
    (tmp__5 : Prop)
    (tmp__7 : Prop)
    (tmp__6 : Prop)
    (changed_3 : Prop)
    (retained_5 : (Vermilion.Seq Prop))
    (tmp__post_3 : (Vermilion.Seq Prop))
    (choose_spec_0 : (∃ (ro : Int), (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) → (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))) (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0))))
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_3_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_3_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_3_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_3_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_3_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_3_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_3_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_3_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_3_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_3_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_3_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_3_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_3_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_3_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_iteration_16 : Vermilion.inUnsignedRange 64 i)
    (loop_3_iteration_17 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_iteration_18 : Vermilion.Seq.len retained_4 = n)
    (loop_3_iteration_19 : roots = roots)
    (loop_3_iteration_20 : edges = edges)
    (loop_3_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_iteration_23 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_iteration_25 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_iteration_26 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_iteration_27 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_iteration_28 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_iteration_29 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_iteration_30 : i < Vermilion.Seq.len edges)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (call_vec_index_1_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (call_vec_index_1_ensures_2 : tmp__4 = Vermilion.Seq.index edges i)
    (call_vec_index_2_ensures_0 : tmp__5 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_1_call_vec_index_3_ensures_0 : tmp__5 → (tmp__6 ↔ Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_1_assume_37 : tmp__5 → (tmp__7 ↔ (¬ tmp__6)))
    (else_1_assume_36 : (¬ tmp__5) → (tmp__7 ↔ False))
    (then_2_assert_16 : tmp__7 → (Vermilion.Seq.index edges i = vermilion.tuple_2.tuple_2 (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4)))
    (then_2_assert_17 : tmp__7 → reclaim_plan.has_edge_spec edges (vermilion.tuple_2.get_tuple_2__0 tmp__4) (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assert_18 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__0 tmp__4))
    (then_2_call_reachable_extend_ensures_0 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_20 : tmp__7 → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__1 tmp__4) (Vermilion.natClip (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (ro : Int) => (((0 ≤ ro) ∧ (ro < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots ro) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel)))))) (vermilion.tuple_2.get_tuple_2__0 tmp__4) fuel_vrml_0)) + 1)))
    (then_2_assert_21 : tmp__7 → reclaim_plan.live_spec edges roots (vermilion.tuple_2.get_tuple_2__1 tmp__4))
    (then_2_assume_45 : tmp__7 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (then_2_call_set_1_ensures_0 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_call_count_true_set_ensures_0 : tmp__7 → (reclaim_plan.count_true (Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True) = Vermilion.natClip (reclaim_plan.count_true retained_4 + 1)))
    (then_2_assert_24 : tmp__7 → (tmp__post_3 = Vermilion.Seq.update retained_4 (vermilion.tuple_2.get_tuple_2__1 tmp__4) True))
    (then_2_assume_49 : tmp__7 → (∀ (j : Int), (((0 ≤ j) ∧ (j < Vermilion.Seq.len roots)) → Vermilion.Seq.index tmp__post_3 (Vermilion.Seq.index roots j))))
    (then_2_assume_50 : tmp__7 → (changed_3 ↔ True))
    (then_2_assume_51 : tmp__7 → (retained_5 = tmp__post_3))
    (else_2_assume_39 : (¬ tmp__7) → (changed_3 ↔ changed_2))
    (else_2_assume_40 : (¬ tmp__7) → (retained_5 = retained_4))
    (assume_53 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_5))
    (assert_27 : Vermilion.inUnsignedRange 64 (i + 1)) :
    ((0 ≤ (Vermilion.Seq.len edges - ((i + 1) % 18446744073709551616))) ∧ ((Vermilion.Seq.len edges - ((i + 1) % 18446744073709551616)) < (Vermilion.Seq.len edges - i))) ∨ (((Vermilion.Seq.len edges - ((i + 1) % 18446744073709551616)) = (Vermilion.Seq.len edges - i)) ∧ False) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.assert_3_decreases

-- vrml:begin reclaim_plan.plan.assert_28 7bcba53539350e5f
/--
Generated VC `reclaim_plan.plan.assert_28`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:545:9-545:20`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `28`
- Statement hash: `7bcba53539350e5f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def assert_28_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 545
  startColumn := 9
  endLine := 545
  endColumn := 20
  assertId := "28"
  functionName := "reclaim_plan.plan"
  kind := "assert"
  statementHash := "7bcba53539350e5f"
}
@[vrml_obligation] theorem assert_28
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_2_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_2_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_iteration_17 : Vermilion.Seq.len retained_3 = n)
    (loop_2_iteration_18 : roots = roots)
    (loop_2_iteration_19 : edges = edges)
    (loop_2_iteration_20 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_iteration_23 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_iteration_25 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_iteration_26 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_iteration_27 : rounds ≤ (n + 1))
    (loop_2_iteration_28 : changed ∧ (rounds ≤ n))
    (loop_3_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_exit_1 : Vermilion.inUnsignedRange 64 i)
    (loop_3_exit_2 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_exit_3 : Vermilion.Seq.len retained_4 = n)
    (loop_3_exit_4 : roots = roots)
    (loop_3_exit_5 : edges = edges)
    (loop_3_exit_6 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_exit_7 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_exit_8 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_exit_9 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_exit_10 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_exit_11 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_exit_12 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_exit_13 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_exit_14 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_exit_15 : (¬ (i < Vermilion.Seq.len edges))) :
    Vermilion.inUnsignedRange 64 (rounds + 1) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.assert_28

-- vrml:begin reclaim_plan.plan.invariant_preserve_2_0 950dea6494f1f006
/--
Generated VC `reclaim_plan.plan.invariant_preserve_2_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:492:13-492:33`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `2_0`
- Statement hash: `950dea6494f1f006`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def invariant_preserve_2_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 492
  startColumn := 13
  endLine := 492
  endColumn := 33
  assertId := "2_0"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "950dea6494f1f006"
}
@[vrml_obligation] theorem invariant_preserve_2_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_2_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_2_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_iteration_17 : Vermilion.Seq.len retained_3 = n)
    (loop_2_iteration_18 : roots = roots)
    (loop_2_iteration_19 : edges = edges)
    (loop_2_iteration_20 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_iteration_23 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_iteration_25 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_iteration_26 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_iteration_27 : rounds ≤ (n + 1))
    (loop_2_iteration_28 : changed ∧ (rounds ≤ n))
    (loop_3_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_exit_1 : Vermilion.inUnsignedRange 64 i)
    (loop_3_exit_2 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_exit_3 : Vermilion.Seq.len retained_4 = n)
    (loop_3_exit_4 : roots = roots)
    (loop_3_exit_5 : edges = edges)
    (loop_3_exit_6 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_exit_7 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_exit_8 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_exit_9 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_exit_10 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_exit_11 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_exit_12 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_exit_13 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_exit_14 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_exit_15 : (¬ (i < Vermilion.Seq.len edges)))
    (assert_28 : Vermilion.inUnsignedRange 64 (rounds + 1)) :
    Vermilion.Seq.len retained_4 = n := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_preserve_2_0

-- vrml:begin reclaim_plan.plan.invariant_preserve_2_1 224371cb1f49aade
/--
Generated VC `reclaim_plan.plan.invariant_preserve_2_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:492:35-492:47`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `2_1`
- Statement hash: `224371cb1f49aade`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def invariant_preserve_2_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 492
  startColumn := 35
  endLine := 492
  endColumn := 47
  assertId := "2_1"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "224371cb1f49aade"
}
@[vrml_obligation] theorem invariant_preserve_2_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_2_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_2_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_iteration_17 : Vermilion.Seq.len retained_3 = n)
    (loop_2_iteration_18 : roots = roots)
    (loop_2_iteration_19 : edges = edges)
    (loop_2_iteration_20 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_iteration_23 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_iteration_25 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_iteration_26 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_iteration_27 : rounds ≤ (n + 1))
    (loop_2_iteration_28 : changed ∧ (rounds ≤ n))
    (loop_3_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_exit_1 : Vermilion.inUnsignedRange 64 i)
    (loop_3_exit_2 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_exit_3 : Vermilion.Seq.len retained_4 = n)
    (loop_3_exit_4 : roots = roots)
    (loop_3_exit_5 : edges = edges)
    (loop_3_exit_6 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_exit_7 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_exit_8 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_exit_9 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_exit_10 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_exit_11 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_exit_12 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_exit_13 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_exit_14 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_exit_15 : (¬ (i < Vermilion.Seq.len edges)))
    (assert_28 : Vermilion.inUnsignedRange 64 (rounds + 1)) :
    roots = roots := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_preserve_2_1

-- vrml:begin reclaim_plan.plan.invariant_preserve_2_2 849280a81e0c7da2
/--
Generated VC `reclaim_plan.plan.invariant_preserve_2_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:492:49-492:60`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `2_2`
- Statement hash: `849280a81e0c7da2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def invariant_preserve_2_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 492
  startColumn := 49
  endLine := 492
  endColumn := 60
  assertId := "2_2"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "849280a81e0c7da2"
}
@[vrml_obligation] theorem invariant_preserve_2_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_2_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_2_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_iteration_17 : Vermilion.Seq.len retained_3 = n)
    (loop_2_iteration_18 : roots = roots)
    (loop_2_iteration_19 : edges = edges)
    (loop_2_iteration_20 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_iteration_23 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_iteration_25 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_iteration_26 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_iteration_27 : rounds ≤ (n + 1))
    (loop_2_iteration_28 : changed ∧ (rounds ≤ n))
    (loop_3_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_exit_1 : Vermilion.inUnsignedRange 64 i)
    (loop_3_exit_2 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_exit_3 : Vermilion.Seq.len retained_4 = n)
    (loop_3_exit_4 : roots = roots)
    (loop_3_exit_5 : edges = edges)
    (loop_3_exit_6 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_exit_7 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_exit_8 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_exit_9 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_exit_10 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_exit_11 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_exit_12 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_exit_13 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_exit_14 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_exit_15 : (¬ (i < Vermilion.Seq.len edges)))
    (assert_28 : Vermilion.inUnsignedRange 64 (rounds + 1)) :
    edges = edges := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_preserve_2_2

-- vrml:begin reclaim_plan.plan.invariant_preserve_2_3 b756b14bd5f2e969
/--
Generated VC `reclaim_plan.plan.invariant_preserve_2_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:492:62-492:76`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `2_3`
- Statement hash: `b756b14bd5f2e969`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def invariant_preserve_2_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 492
  startColumn := 62
  endLine := 492
  endColumn := 76
  assertId := "2_3"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "b756b14bd5f2e969"
}
@[vrml_obligation] theorem invariant_preserve_2_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_2_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_2_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_iteration_17 : Vermilion.Seq.len retained_3 = n)
    (loop_2_iteration_18 : roots = roots)
    (loop_2_iteration_19 : edges = edges)
    (loop_2_iteration_20 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_iteration_23 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_iteration_25 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_iteration_26 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_iteration_27 : rounds ≤ (n + 1))
    (loop_2_iteration_28 : changed ∧ (rounds ≤ n))
    (loop_3_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_exit_1 : Vermilion.inUnsignedRange 64 i)
    (loop_3_exit_2 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_exit_3 : Vermilion.Seq.len retained_4 = n)
    (loop_3_exit_4 : roots = roots)
    (loop_3_exit_5 : edges = edges)
    (loop_3_exit_6 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_exit_7 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_exit_8 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_exit_9 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_exit_10 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_exit_11 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_exit_12 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_exit_13 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_exit_14 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_exit_15 : (¬ (i < Vermilion.Seq.len edges)))
    (assert_28 : Vermilion.inUnsignedRange 64 (rounds + 1)) :
    n ≤ reclaim_plan.MAX_NODES := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_preserve_2_3

-- vrml:begin reclaim_plan.plan.invariant_preserve_2_4 95e475c7b9c9a87a
/--
Generated VC `reclaim_plan.plan.invariant_preserve_2_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:493:13-493:45`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `2_4`
- Statement hash: `95e475c7b9c9a87a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def invariant_preserve_2_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 493
  startColumn := 13
  endLine := 493
  endColumn := 45
  assertId := "2_4"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "95e475c7b9c9a87a"
}
@[vrml_obligation] theorem invariant_preserve_2_4
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_2_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_2_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_iteration_17 : Vermilion.Seq.len retained_3 = n)
    (loop_2_iteration_18 : roots = roots)
    (loop_2_iteration_19 : edges = edges)
    (loop_2_iteration_20 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_iteration_23 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_iteration_25 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_iteration_26 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_iteration_27 : rounds ≤ (n + 1))
    (loop_2_iteration_28 : changed ∧ (rounds ≤ n))
    (loop_3_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_exit_1 : Vermilion.inUnsignedRange 64 i)
    (loop_3_exit_2 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_exit_3 : Vermilion.Seq.len retained_4 = n)
    (loop_3_exit_4 : roots = roots)
    (loop_3_exit_5 : edges = edges)
    (loop_3_exit_6 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_exit_7 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_exit_8 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_exit_9 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_exit_10 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_exit_11 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_exit_12 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_exit_13 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_exit_14 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_exit_15 : (¬ (i < Vermilion.Seq.len edges)))
    (assert_28 : Vermilion.inUnsignedRange 64 (rounds + 1)) :
    reclaim_plan.edges_in_range_spec n edges := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_preserve_2_4

-- vrml:begin reclaim_plan.plan.invariant_preserve_2_5 9c7e528745c71616
/--
Generated VC `reclaim_plan.plan.invariant_preserve_2_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:493:47-493:80`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `2_5`
- Statement hash: `9c7e528745c71616`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def invariant_preserve_2_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 493
  startColumn := 47
  endLine := 493
  endColumn := 80
  assertId := "2_5"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "9c7e528745c71616"
}
@[vrml_obligation] theorem invariant_preserve_2_5
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_2_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_2_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_iteration_17 : Vermilion.Seq.len retained_3 = n)
    (loop_2_iteration_18 : roots = roots)
    (loop_2_iteration_19 : edges = edges)
    (loop_2_iteration_20 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_iteration_23 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_iteration_25 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_iteration_26 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_iteration_27 : rounds ≤ (n + 1))
    (loop_2_iteration_28 : changed ∧ (rounds ≤ n))
    (loop_3_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_exit_1 : Vermilion.inUnsignedRange 64 i)
    (loop_3_exit_2 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_exit_3 : Vermilion.Seq.len retained_4 = n)
    (loop_3_exit_4 : roots = roots)
    (loop_3_exit_5 : edges = edges)
    (loop_3_exit_6 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_exit_7 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_exit_8 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_exit_9 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_exit_10 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_exit_11 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_exit_12 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_exit_13 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_exit_14 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_exit_15 : (¬ (i < Vermilion.Seq.len edges)))
    (assert_28 : Vermilion.inUnsignedRange 64 (rounds + 1)) :
    reclaim_plan.roots_in_range_spec n roots := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_preserve_2_5

-- vrml:begin reclaim_plan.plan.invariant_preserve_2_6 ea29b657486812a6
/--
Generated VC `reclaim_plan.plan.invariant_preserve_2_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:494:13-494:47`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `2_6`
- Statement hash: `ea29b657486812a6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def invariant_preserve_2_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 494
  startColumn := 13
  endLine := 494
  endColumn := 47
  assertId := "2_6"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "ea29b657486812a6"
}
@[vrml_obligation] theorem invariant_preserve_2_6
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_2_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_2_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_iteration_17 : Vermilion.Seq.len retained_3 = n)
    (loop_2_iteration_18 : roots = roots)
    (loop_2_iteration_19 : edges = edges)
    (loop_2_iteration_20 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_iteration_23 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_iteration_25 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_iteration_26 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_iteration_27 : rounds ≤ (n + 1))
    (loop_2_iteration_28 : changed ∧ (rounds ≤ n))
    (loop_3_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_exit_1 : Vermilion.inUnsignedRange 64 i)
    (loop_3_exit_2 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_exit_3 : Vermilion.Seq.len retained_4 = n)
    (loop_3_exit_4 : roots = roots)
    (loop_3_exit_5 : edges = edges)
    (loop_3_exit_6 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_exit_7 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_exit_8 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_exit_9 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_exit_10 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_exit_11 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_exit_12 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_exit_13 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_exit_14 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_exit_15 : (¬ (i < Vermilion.Seq.len edges)))
    (assert_28 : Vermilion.inUnsignedRange 64 (rounds + 1)) :
    reclaim_plan.roots_retained_spec roots retained_4 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_preserve_2_6

-- vrml:begin reclaim_plan.plan.invariant_preserve_2_7 48e716d3558a117e
/--
Generated VC `reclaim_plan.plan.invariant_preserve_2_7`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:495:13-495:50`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `2_7`
- Statement hash: `48e716d3558a117e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def invariant_preserve_2_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 495
  startColumn := 13
  endLine := 495
  endColumn := 50
  assertId := "2_7"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "48e716d3558a117e"
}
@[vrml_obligation] theorem invariant_preserve_2_7
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_2_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_2_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_iteration_17 : Vermilion.Seq.len retained_3 = n)
    (loop_2_iteration_18 : roots = roots)
    (loop_2_iteration_19 : edges = edges)
    (loop_2_iteration_20 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_iteration_23 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_iteration_25 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_iteration_26 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_iteration_27 : rounds ≤ (n + 1))
    (loop_2_iteration_28 : changed ∧ (rounds ≤ n))
    (loop_3_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_exit_1 : Vermilion.inUnsignedRange 64 i)
    (loop_3_exit_2 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_exit_3 : Vermilion.Seq.len retained_4 = n)
    (loop_3_exit_4 : roots = roots)
    (loop_3_exit_5 : edges = edges)
    (loop_3_exit_6 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_exit_7 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_exit_8 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_exit_9 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_exit_10 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_exit_11 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_exit_12 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_exit_13 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_exit_14 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_exit_15 : (¬ (i < Vermilion.Seq.len edges)))
    (assert_28 : Vermilion.inUnsignedRange 64 (rounds + 1)) :
    reclaim_plan.retained_sound_spec edges roots retained_4 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_preserve_2_7

-- vrml:begin reclaim_plan.plan.invariant_preserve_2_8 63e294edfc588417
/--
Generated VC `reclaim_plan.plan.invariant_preserve_2_8`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:496:13-496:51`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `2_8`
- Statement hash: `63e294edfc588417`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def invariant_preserve_2_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 496
  startColumn := 13
  endLine := 496
  endColumn := 51
  assertId := "2_8"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "63e294edfc588417"
}
@[vrml_obligation] theorem invariant_preserve_2_8
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_2_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_2_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_iteration_17 : Vermilion.Seq.len retained_3 = n)
    (loop_2_iteration_18 : roots = roots)
    (loop_2_iteration_19 : edges = edges)
    (loop_2_iteration_20 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_iteration_23 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_iteration_25 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_iteration_26 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_iteration_27 : rounds ≤ (n + 1))
    (loop_2_iteration_28 : changed ∧ (rounds ≤ n))
    (loop_3_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_exit_1 : Vermilion.inUnsignedRange 64 i)
    (loop_3_exit_2 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_exit_3 : Vermilion.Seq.len retained_4 = n)
    (loop_3_exit_4 : roots = roots)
    (loop_3_exit_5 : edges = edges)
    (loop_3_exit_6 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_exit_7 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_exit_8 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_exit_9 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_exit_10 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_exit_11 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_exit_12 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_exit_13 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_exit_14 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_exit_15 : (¬ (i < Vermilion.Seq.len edges)))
    (assert_28 : Vermilion.inUnsignedRange 64 (rounds + 1)) :
    (¬ changed_2) → reclaim_plan.closed_spec edges retained_4 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_preserve_2_8

-- vrml:begin reclaim_plan.plan.invariant_preserve_2_9 9fff9af98cf2c861
/--
Generated VC `reclaim_plan.plan.invariant_preserve_2_9`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:497:13-497:56`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `2_9`
- Statement hash: `9fff9af98cf2c861`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def invariant_preserve_2_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 497
  startColumn := 13
  endLine := 497
  endColumn := 56
  assertId := "2_9"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "9fff9af98cf2c861"
}
@[vrml_obligation] theorem invariant_preserve_2_9
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_2_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_2_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_iteration_17 : Vermilion.Seq.len retained_3 = n)
    (loop_2_iteration_18 : roots = roots)
    (loop_2_iteration_19 : edges = edges)
    (loop_2_iteration_20 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_iteration_23 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_iteration_25 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_iteration_26 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_iteration_27 : rounds ≤ (n + 1))
    (loop_2_iteration_28 : changed ∧ (rounds ≤ n))
    (loop_3_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_exit_1 : Vermilion.inUnsignedRange 64 i)
    (loop_3_exit_2 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_exit_3 : Vermilion.Seq.len retained_4 = n)
    (loop_3_exit_4 : roots = roots)
    (loop_3_exit_5 : edges = edges)
    (loop_3_exit_6 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_exit_7 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_exit_8 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_exit_9 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_exit_10 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_exit_11 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_exit_12 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_exit_13 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_exit_14 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_exit_15 : (¬ (i < Vermilion.Seq.len edges)))
    (assert_28 : Vermilion.inUnsignedRange 64 (rounds + 1)) :
    changed_2 → (reclaim_plan.count_true retained_4 ≥ ((rounds + 1) % 18446744073709551616)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_preserve_2_9

-- vrml:begin reclaim_plan.plan.invariant_preserve_2_10 18165e0598bfe90f
/--
Generated VC `reclaim_plan.plan.invariant_preserve_2_10`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:498:13-498:28`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `2_10`
- Statement hash: `18165e0598bfe90f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def invariant_preserve_2_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 498
  startColumn := 13
  endLine := 498
  endColumn := 28
  assertId := "2_10"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "18165e0598bfe90f"
}
@[vrml_obligation] theorem invariant_preserve_2_10
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_2_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_2_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_iteration_17 : Vermilion.Seq.len retained_3 = n)
    (loop_2_iteration_18 : roots = roots)
    (loop_2_iteration_19 : edges = edges)
    (loop_2_iteration_20 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_iteration_23 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_iteration_25 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_iteration_26 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_iteration_27 : rounds ≤ (n + 1))
    (loop_2_iteration_28 : changed ∧ (rounds ≤ n))
    (loop_3_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_exit_1 : Vermilion.inUnsignedRange 64 i)
    (loop_3_exit_2 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_exit_3 : Vermilion.Seq.len retained_4 = n)
    (loop_3_exit_4 : roots = roots)
    (loop_3_exit_5 : edges = edges)
    (loop_3_exit_6 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_exit_7 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_exit_8 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_exit_9 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_exit_10 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_exit_11 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_exit_12 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_exit_13 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_exit_14 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_exit_15 : (¬ (i < Vermilion.Seq.len edges)))
    (assert_28 : Vermilion.inUnsignedRange 64 (rounds + 1)) :
    ((rounds + 1) % 18446744073709551616) ≤ (n + 1) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_preserve_2_10

-- vrml:begin reclaim_plan.plan.assert_2_decreases 0d3d33133d458e42
/--
Generated VC `reclaim_plan.plan.assert_2_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:499:19-499:33`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `2_decreases`
- Statement hash: `0d3d33133d458e42`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges j⟩
-/
def assert_2_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 499
  startColumn := 19
  endLine := 499
  endColumn := 33
  assertId := "2_decreases"
  functionName := "reclaim_plan.plan"
  kind := "assert"
  statementHash := "0d3d33133d458e42"
}
@[vrml_obligation] theorem assert_2_decreases
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (retained_4 : (Vermilion.Seq Prop))
    (changed_2 : Prop)
    (i : Int)
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_2_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_2_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_iteration_17 : Vermilion.Seq.len retained_3 = n)
    (loop_2_iteration_18 : roots = roots)
    (loop_2_iteration_19 : edges = edges)
    (loop_2_iteration_20 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_iteration_21 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_iteration_22 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_iteration_23 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_iteration_24 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_iteration_25 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_iteration_26 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_iteration_27 : rounds ≤ (n + 1))
    (loop_2_iteration_28 : changed ∧ (rounds ≤ n))
    (loop_3_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_4))
    (loop_3_exit_1 : Vermilion.inUnsignedRange 64 i)
    (loop_3_exit_2 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_3_exit_3 : Vermilion.Seq.len retained_4 = n)
    (loop_3_exit_4 : roots = roots)
    (loop_3_exit_5 : edges = edges)
    (loop_3_exit_6 : reclaim_plan.edges_in_range_spec n edges)
    (loop_3_exit_7 : reclaim_plan.roots_in_range_spec n roots)
    (loop_3_exit_8 : reclaim_plan.roots_retained_spec roots retained_4)
    (loop_3_exit_9 : reclaim_plan.retained_sound_spec edges roots retained_4)
    (loop_3_exit_10 : (¬ changed_2) → (retained_4 = retained_3))
    (loop_3_exit_11 : (¬ changed_2) → (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained_4 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_3_exit_12 : reclaim_plan.count_true retained_3 = reclaim_plan.count_true retained_3)
    (loop_3_exit_13 : reclaim_plan.count_true retained_4 ≥ reclaim_plan.count_true retained_3)
    (loop_3_exit_14 : changed_2 → (reclaim_plan.count_true retained_4 ≥ Vermilion.natClip (reclaim_plan.count_true retained_3 + 1)))
    (loop_3_exit_15 : (¬ (i < Vermilion.Seq.len edges)))
    (assert_28 : Vermilion.inUnsignedRange 64 (rounds + 1)) :
    ((0 ≤ ((n + 1) - ((rounds + 1) % 18446744073709551616))) ∧ (((n + 1) - ((rounds + 1) % 18446744073709551616)) < ((n + 1) - rounds))) ∨ ((((n + 1) - ((rounds + 1) % 18446744073709551616)) = ((n + 1) - rounds)) ∧ False) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.assert_2_decreases

-- vrml:begin reclaim_plan.plan.assert_30 e75e1157045b3ab8
/--
Generated VC `reclaim_plan.plan.assert_30`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:549:16-549:24`
- Rust/SST construct: Rust source assertion
- AssertId: `30`
- Statement hash: `e75e1157045b3ab8`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def assert_30_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 549
  startColumn := 16
  endLine := 549
  endColumn := 24
  assertId := "30"
  functionName := "reclaim_plan.plan"
  kind := "assert"
  statementHash := "e75e1157045b3ab8"
}
@[vrml_obligation] theorem assert_30
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_exit_1 : Vermilion.inUnsignedRange 64 r)
    (loop_1_exit_2 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_exit_3 : Vermilion.Seq.len retained_2 = n)
    (loop_1_exit_4 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_exit_5 : roots = roots)
    (loop_1_exit_6 : edges = edges)
    (loop_1_exit_7 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_exit_8 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_exit_9 : (¬ (r < Vermilion.Seq.len roots)))
    (loop_2_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_exit_1 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_exit_2 : Vermilion.Seq.len retained_3 = n)
    (loop_2_exit_3 : roots = roots)
    (loop_2_exit_4 : edges = edges)
    (loop_2_exit_5 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_exit_6 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_exit_7 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_exit_8 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_exit_9 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_exit_10 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_exit_11 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_exit_12 : rounds ≤ (n + 1))
    (loop_2_exit_13 : (¬ (changed ∧ (rounds ≤ n))))
    (call_count_true_bounded_ensures_0 : reclaim_plan.count_true retained_3 ≤ Vermilion.Seq.len retained_3) :
    (¬ changed) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.assert_30

-- vrml:begin reclaim_plan.plan.ensures_32_0 fb2771412fca59c7
/--
Generated VC `reclaim_plan.plan.ensures_32_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:449:9-450:69`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `32_0`
- Statement hash: `fb2771412fca59c7`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def ensures_32_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 449
  startColumn := 9
  endLine := 450
  endColumn := 69
  assertId := "32_0"
  functionName := "reclaim_plan.plan"
  kind := "ensures"
  statementHash := "fb2771412fca59c7"
}
@[vrml_obligation] theorem ensures_32_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (tmp__8 : reclaim_plan.ReclaimPlan)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_exit_1 : Vermilion.inUnsignedRange 64 r)
    (loop_1_exit_2 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_exit_3 : Vermilion.Seq.len retained_2 = n)
    (loop_1_exit_4 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_exit_5 : roots = roots)
    (loop_1_exit_6 : edges = edges)
    (loop_1_exit_7 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_exit_8 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_exit_9 : (¬ (r < Vermilion.Seq.len roots)))
    (loop_2_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_exit_1 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_exit_2 : Vermilion.Seq.len retained_3 = n)
    (loop_2_exit_3 : roots = roots)
    (loop_2_exit_4 : edges = edges)
    (loop_2_exit_5 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_exit_6 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_exit_7 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_exit_8 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_exit_9 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_exit_10 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_exit_11 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_exit_12 : rounds ≤ (n + 1))
    (loop_2_exit_13 : (¬ (changed ∧ (rounds ≤ n))))
    (call_count_true_bounded_ensures_0 : reclaim_plan.count_true retained_3 ≤ Vermilion.Seq.len retained_3)
    (assert_30 : (¬ changed))
    (branch_3 : changed)
    (call_empty_plan_1_ensures_0 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8))
    (call_empty_plan_1_ensures_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8)))
    (call_empty_plan_1_ensures_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8)))
    (call_empty_plan_1_ensures_3 : reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8 = reclaim_plan.ROUND_LIMIT)
    (call_empty_plan_1_ensures_4 : Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8) = 0)
    (call_empty_plan_1_ensures_5 : Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8) = 0) :
    (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8 = reclaim_plan.PLANNED) → (reclaim_plan.plan_valid_spec n edges roots reclaimable (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8) (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8) ∧ reclaim_plan.retained_sound_spec edges roots (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.ensures_32_0

-- vrml:begin reclaim_plan.plan.ensures_32_1 ae63c45ac975c4c4
/--
Generated VC `reclaim_plan.plan.ensures_32_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:451:9-451:97`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `32_1`
- Statement hash: `ae63c45ac975c4c4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def ensures_32_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 451
  startColumn := 9
  endLine := 451
  endColumn := 97
  assertId := "32_1"
  functionName := "reclaim_plan.plan"
  kind := "ensures"
  statementHash := "ae63c45ac975c4c4"
}
@[vrml_obligation] theorem ensures_32_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (tmp__8 : reclaim_plan.ReclaimPlan)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_exit_1 : Vermilion.inUnsignedRange 64 r)
    (loop_1_exit_2 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_exit_3 : Vermilion.Seq.len retained_2 = n)
    (loop_1_exit_4 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_exit_5 : roots = roots)
    (loop_1_exit_6 : edges = edges)
    (loop_1_exit_7 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_exit_8 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_exit_9 : (¬ (r < Vermilion.Seq.len roots)))
    (loop_2_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_exit_1 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_exit_2 : Vermilion.Seq.len retained_3 = n)
    (loop_2_exit_3 : roots = roots)
    (loop_2_exit_4 : edges = edges)
    (loop_2_exit_5 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_exit_6 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_exit_7 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_exit_8 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_exit_9 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_exit_10 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_exit_11 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_exit_12 : rounds ≤ (n + 1))
    (loop_2_exit_13 : (¬ (changed ∧ (rounds ≤ n))))
    (call_count_true_bounded_ensures_0 : reclaim_plan.count_true retained_3 ≤ Vermilion.Seq.len retained_3)
    (assert_30 : (¬ changed))
    (branch_3 : changed)
    (call_empty_plan_1_ensures_0 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8))
    (call_empty_plan_1_ensures_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8)))
    (call_empty_plan_1_ensures_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8)))
    (call_empty_plan_1_ensures_3 : reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8 = reclaim_plan.ROUND_LIMIT)
    (call_empty_plan_1_ensures_4 : Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8) = 0)
    (call_empty_plan_1_ensures_5 : Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8) = 0) :
    (¬ (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8 = reclaim_plan.PLANNED)) → ((Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8) = 0) ∧ (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8) = 0)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.ensures_32_1

-- vrml:begin reclaim_plan.plan.ensures_32_2 23870b80beb1a3b8
/--
Generated VC `reclaim_plan.plan.ensures_32_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:452:9-452:94`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `32_2`
- Statement hash: `23870b80beb1a3b8`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def ensures_32_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 452
  startColumn := 9
  endLine := 452
  endColumn := 94
  assertId := "32_2"
  functionName := "reclaim_plan.plan"
  kind := "ensures"
  statementHash := "23870b80beb1a3b8"
}
@[vrml_obligation] theorem ensures_32_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (tmp__8 : reclaim_plan.ReclaimPlan)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_exit_1 : Vermilion.inUnsignedRange 64 r)
    (loop_1_exit_2 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_exit_3 : Vermilion.Seq.len retained_2 = n)
    (loop_1_exit_4 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_exit_5 : roots = roots)
    (loop_1_exit_6 : edges = edges)
    (loop_1_exit_7 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_exit_8 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_exit_9 : (¬ (r < Vermilion.Seq.len roots)))
    (loop_2_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_exit_1 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_exit_2 : Vermilion.Seq.len retained_3 = n)
    (loop_2_exit_3 : roots = roots)
    (loop_2_exit_4 : edges = edges)
    (loop_2_exit_5 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_exit_6 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_exit_7 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_exit_8 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_exit_9 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_exit_10 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_exit_11 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_exit_12 : rounds ≤ (n + 1))
    (loop_2_exit_13 : (¬ (changed ∧ (rounds ≤ n))))
    (call_count_true_bounded_ensures_0 : reclaim_plan.count_true retained_3 ≤ Vermilion.Seq.len retained_3)
    (assert_30 : (¬ changed))
    (branch_3 : changed)
    (call_empty_plan_1_ensures_0 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8))
    (call_empty_plan_1_ensures_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8)))
    (call_empty_plan_1_ensures_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8)))
    (call_empty_plan_1_ensures_3 : reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8 = reclaim_plan.ROUND_LIMIT)
    (call_empty_plan_1_ensures_4 : Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8) = 0)
    (call_empty_plan_1_ensures_5 : Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8) = 0) :
    (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (¬ (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8 = reclaim_plan.PLANNED)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.ensures_32_2

-- vrml:begin reclaim_plan.plan.ensures_32_3 f478f14f1087e01c
/--
Generated VC `reclaim_plan.plan.ensures_32_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:453:9-453:93`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `32_3`
- Statement hash: `f478f14f1087e01c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def ensures_32_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 453
  startColumn := 9
  endLine := 453
  endColumn := 93
  assertId := "32_3"
  functionName := "reclaim_plan.plan"
  kind := "ensures"
  statementHash := "f478f14f1087e01c"
}
@[vrml_obligation] theorem ensures_32_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (tmp__8 : reclaim_plan.ReclaimPlan)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_exit_1 : Vermilion.inUnsignedRange 64 r)
    (loop_1_exit_2 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_exit_3 : Vermilion.Seq.len retained_2 = n)
    (loop_1_exit_4 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_exit_5 : roots = roots)
    (loop_1_exit_6 : edges = edges)
    (loop_1_exit_7 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_exit_8 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_exit_9 : (¬ (r < Vermilion.Seq.len roots)))
    (loop_2_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_exit_1 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_exit_2 : Vermilion.Seq.len retained_3 = n)
    (loop_2_exit_3 : roots = roots)
    (loop_2_exit_4 : edges = edges)
    (loop_2_exit_5 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_exit_6 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_exit_7 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_exit_8 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_exit_9 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_exit_10 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_exit_11 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_exit_12 : rounds ≤ (n + 1))
    (loop_2_exit_13 : (¬ (changed ∧ (rounds ≤ n))))
    (call_count_true_bounded_ensures_0 : reclaim_plan.count_true retained_3 ≤ Vermilion.Seq.len retained_3)
    (assert_30 : (¬ changed))
    (branch_3 : changed)
    (call_empty_plan_1_ensures_0 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8))
    (call_empty_plan_1_ensures_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8)))
    (call_empty_plan_1_ensures_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8)))
    (call_empty_plan_1_ensures_3 : reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8 = reclaim_plan.ROUND_LIMIT)
    (call_empty_plan_1_ensures_4 : Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8) = 0)
    (call_empty_plan_1_ensures_5 : Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8) = 0) :
    reclaim_plan.admissible_spec n edges roots reclaimable → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8 = reclaim_plan.PLANNED) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.ensures_32_3

-- vrml:begin reclaim_plan.plan.invariant_entry_4_0 3c1bd5922587bcf9
/--
Generated VC `reclaim_plan.plan.invariant_entry_4_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:558:19-558:30`
- Rust/SST construct: loop invariant on entry
- AssertId: `4_0`
- Statement hash: `3c1bd5922587bcf9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_entry_4_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 558
  startColumn := 19
  endLine := 558
  endColumn := 30
  assertId := "4_0"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "3c1bd5922587bcf9"
}
@[vrml_obligation] theorem invariant_entry_4_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (tmp__8 : reclaim_plan.ReclaimPlan)
    (tmp__9 : (Vermilion.Seq Prop))
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_exit_1 : Vermilion.inUnsignedRange 64 r)
    (loop_1_exit_2 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_exit_3 : Vermilion.Seq.len retained_2 = n)
    (loop_1_exit_4 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_exit_5 : roots = roots)
    (loop_1_exit_6 : edges = edges)
    (loop_1_exit_7 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_exit_8 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_exit_9 : (¬ (r < Vermilion.Seq.len roots)))
    (loop_2_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_exit_1 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_exit_2 : Vermilion.Seq.len retained_3 = n)
    (loop_2_exit_3 : roots = roots)
    (loop_2_exit_4 : edges = edges)
    (loop_2_exit_5 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_exit_6 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_exit_7 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_exit_8 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_exit_9 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_exit_10 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_exit_11 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_exit_12 : rounds ≤ (n + 1))
    (loop_2_exit_13 : (¬ (changed ∧ (rounds ≤ n))))
    (call_count_true_bounded_ensures_0 : reclaim_plan.count_true retained_3 ≤ Vermilion.Seq.len retained_3)
    (assert_30 : (¬ changed))
    (then_3_call_empty_plan_1_ensures_0 : changed → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8))
    (then_3_call_empty_plan_1_ensures_1 : changed → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8)))
    (then_3_call_empty_plan_1_ensures_2 : changed → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8)))
    (then_3_call_empty_plan_1_ensures_3 : changed → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8 = reclaim_plan.ROUND_LIMIT))
    (then_3_call_empty_plan_1_ensures_4 : changed → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8) = 0))
    (then_3_call_empty_plan_1_ensures_5 : changed → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8) = 0))
    (then_3_assume_63 : changed → False)
    (then_3_assume_64 : changed → False)
    (call_new_1_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__9))
    (call_new_1_ensures_1 : tmp__9 = (Vermilion.Seq.empty : Vermilion.Seq Prop)) :
    (0 ≤ 0) ∧ (0 ≤ n) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.invariant_entry_4_0

-- vrml:begin reclaim_plan.plan.invariant_entry_4_1 ca56bf814bd0fdbe
/--
Generated VC `reclaim_plan.plan.invariant_entry_4_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:558:32-558:53`
- Rust/SST construct: loop invariant on entry
- AssertId: `4_1`
- Statement hash: `ca56bf814bd0fdbe`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_entry_4_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 558
  startColumn := 32
  endLine := 558
  endColumn := 53
  assertId := "4_1"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "ca56bf814bd0fdbe"
}
@[vrml_obligation] theorem invariant_entry_4_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (tmp__8 : reclaim_plan.ReclaimPlan)
    (tmp__9 : (Vermilion.Seq Prop))
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_exit_1 : Vermilion.inUnsignedRange 64 r)
    (loop_1_exit_2 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_exit_3 : Vermilion.Seq.len retained_2 = n)
    (loop_1_exit_4 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_exit_5 : roots = roots)
    (loop_1_exit_6 : edges = edges)
    (loop_1_exit_7 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_exit_8 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_exit_9 : (¬ (r < Vermilion.Seq.len roots)))
    (loop_2_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_exit_1 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_exit_2 : Vermilion.Seq.len retained_3 = n)
    (loop_2_exit_3 : roots = roots)
    (loop_2_exit_4 : edges = edges)
    (loop_2_exit_5 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_exit_6 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_exit_7 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_exit_8 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_exit_9 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_exit_10 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_exit_11 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_exit_12 : rounds ≤ (n + 1))
    (loop_2_exit_13 : (¬ (changed ∧ (rounds ≤ n))))
    (call_count_true_bounded_ensures_0 : reclaim_plan.count_true retained_3 ≤ Vermilion.Seq.len retained_3)
    (assert_30 : (¬ changed))
    (then_3_call_empty_plan_1_ensures_0 : changed → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8))
    (then_3_call_empty_plan_1_ensures_1 : changed → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8)))
    (then_3_call_empty_plan_1_ensures_2 : changed → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8)))
    (then_3_call_empty_plan_1_ensures_3 : changed → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8 = reclaim_plan.ROUND_LIMIT))
    (then_3_call_empty_plan_1_ensures_4 : changed → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8) = 0))
    (then_3_call_empty_plan_1_ensures_5 : changed → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8) = 0))
    (then_3_assume_63 : changed → False)
    (then_3_assume_64 : changed → False)
    (call_new_1_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__9))
    (call_new_1_ensures_1 : tmp__9 = (Vermilion.Seq.empty : Vermilion.Seq Prop)) :
    Vermilion.Seq.len tmp__9 = 0 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.invariant_entry_4_1

-- vrml:begin reclaim_plan.plan.invariant_entry_4_2 f860694c8dc04f74
/--
Generated VC `reclaim_plan.plan.invariant_entry_4_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:558:55-558:75`
- Rust/SST construct: loop invariant on entry
- AssertId: `4_2`
- Statement hash: `f860694c8dc04f74`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_entry_4_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 558
  startColumn := 55
  endLine := 558
  endColumn := 75
  assertId := "4_2"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "f860694c8dc04f74"
}
@[vrml_obligation] theorem invariant_entry_4_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (tmp__8 : reclaim_plan.ReclaimPlan)
    (tmp__9 : (Vermilion.Seq Prop))
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_exit_1 : Vermilion.inUnsignedRange 64 r)
    (loop_1_exit_2 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_exit_3 : Vermilion.Seq.len retained_2 = n)
    (loop_1_exit_4 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_exit_5 : roots = roots)
    (loop_1_exit_6 : edges = edges)
    (loop_1_exit_7 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_exit_8 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_exit_9 : (¬ (r < Vermilion.Seq.len roots)))
    (loop_2_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_exit_1 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_exit_2 : Vermilion.Seq.len retained_3 = n)
    (loop_2_exit_3 : roots = roots)
    (loop_2_exit_4 : edges = edges)
    (loop_2_exit_5 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_exit_6 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_exit_7 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_exit_8 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_exit_9 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_exit_10 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_exit_11 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_exit_12 : rounds ≤ (n + 1))
    (loop_2_exit_13 : (¬ (changed ∧ (rounds ≤ n))))
    (call_count_true_bounded_ensures_0 : reclaim_plan.count_true retained_3 ≤ Vermilion.Seq.len retained_3)
    (assert_30 : (¬ changed))
    (then_3_call_empty_plan_1_ensures_0 : changed → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8))
    (then_3_call_empty_plan_1_ensures_1 : changed → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8)))
    (then_3_call_empty_plan_1_ensures_2 : changed → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8)))
    (then_3_call_empty_plan_1_ensures_3 : changed → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8 = reclaim_plan.ROUND_LIMIT))
    (then_3_call_empty_plan_1_ensures_4 : changed → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8) = 0))
    (then_3_call_empty_plan_1_ensures_5 : changed → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8) = 0))
    (then_3_assume_63 : changed → False)
    (then_3_assume_64 : changed → False)
    (call_new_1_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__9))
    (call_new_1_ensures_1 : tmp__9 = (Vermilion.Seq.empty : Vermilion.Seq Prop)) :
    Vermilion.Seq.len retained_3 = n := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.invariant_entry_4_2

-- vrml:begin reclaim_plan.plan.invariant_entry_4_3 89b321151482322f
/--
Generated VC `reclaim_plan.plan.invariant_entry_4_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:558:77-558:100`
- Rust/SST construct: loop invariant on entry
- AssertId: `4_3`
- Statement hash: `89b321151482322f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_entry_4_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 558
  startColumn := 77
  endLine := 558
  endColumn := 100
  assertId := "4_3"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "89b321151482322f"
}
@[vrml_obligation] theorem invariant_entry_4_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (tmp__8 : reclaim_plan.ReclaimPlan)
    (tmp__9 : (Vermilion.Seq Prop))
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_exit_1 : Vermilion.inUnsignedRange 64 r)
    (loop_1_exit_2 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_exit_3 : Vermilion.Seq.len retained_2 = n)
    (loop_1_exit_4 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_exit_5 : roots = roots)
    (loop_1_exit_6 : edges = edges)
    (loop_1_exit_7 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_exit_8 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_exit_9 : (¬ (r < Vermilion.Seq.len roots)))
    (loop_2_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_exit_1 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_exit_2 : Vermilion.Seq.len retained_3 = n)
    (loop_2_exit_3 : roots = roots)
    (loop_2_exit_4 : edges = edges)
    (loop_2_exit_5 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_exit_6 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_exit_7 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_exit_8 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_exit_9 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_exit_10 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_exit_11 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_exit_12 : rounds ≤ (n + 1))
    (loop_2_exit_13 : (¬ (changed ∧ (rounds ≤ n))))
    (call_count_true_bounded_ensures_0 : reclaim_plan.count_true retained_3 ≤ Vermilion.Seq.len retained_3)
    (assert_30 : (¬ changed))
    (then_3_call_empty_plan_1_ensures_0 : changed → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8))
    (then_3_call_empty_plan_1_ensures_1 : changed → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8)))
    (then_3_call_empty_plan_1_ensures_2 : changed → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8)))
    (then_3_call_empty_plan_1_ensures_3 : changed → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8 = reclaim_plan.ROUND_LIMIT))
    (then_3_call_empty_plan_1_ensures_4 : changed → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8) = 0))
    (then_3_call_empty_plan_1_ensures_5 : changed → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8) = 0))
    (then_3_assume_63 : changed → False)
    (then_3_assume_64 : changed → False)
    (call_new_1_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__9))
    (call_new_1_ensures_1 : tmp__9 = (Vermilion.Seq.empty : Vermilion.Seq Prop)) :
    Vermilion.Seq.len reclaimable = n := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.invariant_entry_4_3

-- vrml:begin reclaim_plan.plan.invariant_entry_4_4 7e05eacec33b3b2e
/--
Generated VC `reclaim_plan.plan.invariant_entry_4_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:559:13-559:120`
- Rust/SST construct: loop invariant on entry
- AssertId: `4_4`
- Statement hash: `7e05eacec33b3b2e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index tmp__9 k⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩ ⟨Vermilion.Seq.index roots j⟩
-/
def invariant_entry_4_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 559
  startColumn := 13
  endLine := 559
  endColumn := 120
  assertId := "4_4"
  functionName := "reclaim_plan.plan"
  kind := "invariant_entry"
  statementHash := "7e05eacec33b3b2e"
}
@[vrml_obligation] theorem invariant_entry_4_4
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (tmp__8 : reclaim_plan.ReclaimPlan)
    (tmp__9 : (Vermilion.Seq Prop))
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_exit_1 : Vermilion.inUnsignedRange 64 r)
    (loop_1_exit_2 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_exit_3 : Vermilion.Seq.len retained_2 = n)
    (loop_1_exit_4 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_exit_5 : roots = roots)
    (loop_1_exit_6 : edges = edges)
    (loop_1_exit_7 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_exit_8 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_exit_9 : (¬ (r < Vermilion.Seq.len roots)))
    (loop_2_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_exit_1 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_exit_2 : Vermilion.Seq.len retained_3 = n)
    (loop_2_exit_3 : roots = roots)
    (loop_2_exit_4 : edges = edges)
    (loop_2_exit_5 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_exit_6 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_exit_7 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_exit_8 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_exit_9 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_exit_10 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_exit_11 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_exit_12 : rounds ≤ (n + 1))
    (loop_2_exit_13 : (¬ (changed ∧ (rounds ≤ n))))
    (call_count_true_bounded_ensures_0 : reclaim_plan.count_true retained_3 ≤ Vermilion.Seq.len retained_3)
    (assert_30 : (¬ changed))
    (then_3_call_empty_plan_1_ensures_0 : changed → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8))
    (then_3_call_empty_plan_1_ensures_1 : changed → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8)))
    (then_3_call_empty_plan_1_ensures_2 : changed → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8)))
    (then_3_call_empty_plan_1_ensures_3 : changed → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8 = reclaim_plan.ROUND_LIMIT))
    (then_3_call_empty_plan_1_ensures_4 : changed → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8) = 0))
    (then_3_call_empty_plan_1_ensures_5 : changed → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8) = 0))
    (then_3_assume_63 : changed → False)
    (then_3_assume_64 : changed → False)
    (call_new_1_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__9))
    (call_new_1_ensures_1 : tmp__9 = (Vermilion.Seq.empty : Vermilion.Seq Prop)) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < 0)) → (Vermilion.Seq.index tmp__9 k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained_3 k))))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.invariant_entry_4_4

-- vrml:begin reclaim_plan.plan.call_requires_34 8bd7989cdb9dd3ea
/--
Generated VC `reclaim_plan.plan.call_requires_34`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:562:24-562:38`
- Rust/SST construct: call vec_index
- AssertId: `34`
- Statement hash: `8bd7989cdb9dd3ea`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index candidate k⟩
-/
def call_requires_34_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 562
  startColumn := 24
  endLine := 562
  endColumn := 38
  assertId := "34"
  functionName := "reclaim_plan.plan"
  kind := "call_requires"
  statementHash := "8bd7989cdb9dd3ea"
}
@[vrml_obligation] theorem call_requires_34
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (tmp__8 : reclaim_plan.ReclaimPlan)
    (tmp__9 : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (v : Int)
    (loop_4_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_4_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_4_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_4_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_4_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_4_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_4_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_4_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_4_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_4_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_4_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_4_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_4_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_4_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_4_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_4_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_4_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_4_iteration_17 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8))
    (loop_4_iteration_18 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8)))
    (loop_4_iteration_19 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8)))
    (loop_4_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__9))
    (loop_4_iteration_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_4_iteration_22 : Vermilion.inUnsignedRange 64 v)
    (loop_4_iteration_23 : (0 ≤ v) ∧ (v ≤ n))
    (loop_4_iteration_24 : Vermilion.Seq.len candidate = v)
    (loop_4_iteration_25 : Vermilion.Seq.len retained_3 = n)
    (loop_4_iteration_26 : Vermilion.Seq.len reclaimable = n)
    (loop_4_iteration_27 : (∀ (k : Int), (((0 ≤ k) ∧ (k < v)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained_3 k))))))
    (loop_4_iteration_28 : v < n) :
    v < Vermilion.Seq.len reclaimable := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.call_requires_34

-- vrml:begin reclaim_plan.plan.call_requires_35 00ce436e004f5995
/--
Generated VC `reclaim_plan.plan.call_requires_35`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:562:43-562:54`
- Rust/SST construct: call vec_index
- AssertId: `35`
- Statement hash: `00ce436e004f5995`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index candidate k⟩
-/
def call_requires_35_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 562
  startColumn := 43
  endLine := 562
  endColumn := 54
  assertId := "35"
  functionName := "reclaim_plan.plan"
  kind := "call_requires"
  statementHash := "00ce436e004f5995"
}
@[vrml_obligation] theorem call_requires_35
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (tmp__8 : reclaim_plan.ReclaimPlan)
    (tmp__9 : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (v : Int)
    (tmp__10 : Prop)
    (tmp__12 : Prop)
    (loop_4_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_4_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_4_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_4_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_4_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_4_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_4_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_4_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_4_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_4_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_4_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_4_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_4_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_4_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_4_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_4_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_4_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_4_iteration_17 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8))
    (loop_4_iteration_18 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8)))
    (loop_4_iteration_19 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8)))
    (loop_4_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__9))
    (loop_4_iteration_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_4_iteration_22 : Vermilion.inUnsignedRange 64 v)
    (loop_4_iteration_23 : (0 ≤ v) ∧ (v ≤ n))
    (loop_4_iteration_24 : Vermilion.Seq.len candidate = v)
    (loop_4_iteration_25 : Vermilion.Seq.len retained_3 = n)
    (loop_4_iteration_26 : Vermilion.Seq.len reclaimable = n)
    (loop_4_iteration_27 : (∀ (k : Int), (((0 ≤ k) ∧ (k < v)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained_3 k))))))
    (loop_4_iteration_28 : v < n)
    (call_vec_index_4_ensures_0 : tmp__10 ↔ Vermilion.Seq.index reclaimable v)
    (branch_4 : tmp__10) :
    v < Vermilion.Seq.len retained_3 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.call_requires_35

-- vrml:begin reclaim_plan.plan.assert_37 1b2c32a91dc3affa
/--
Generated VC `reclaim_plan.plan.assert_37`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:563:9-563:15`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `37`
- Statement hash: `1b2c32a91dc3affa`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index candidate k⟩
-/
def assert_37_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 563
  startColumn := 9
  endLine := 563
  endColumn := 15
  assertId := "37"
  functionName := "reclaim_plan.plan"
  kind := "assert"
  statementHash := "1b2c32a91dc3affa"
}
@[vrml_obligation] theorem assert_37
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (tmp__8 : reclaim_plan.ReclaimPlan)
    (tmp__9 : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (v : Int)
    (tmp__10 : Prop)
    (tmp__12 : Prop)
    (tmp__11 : Prop)
    (tmp__post_4 : (Vermilion.Seq Prop))
    (loop_4_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_4_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_4_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_4_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_4_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_4_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_4_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_4_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_4_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_4_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_4_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_4_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_4_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_4_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_4_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_4_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_4_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_4_iteration_17 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8))
    (loop_4_iteration_18 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8)))
    (loop_4_iteration_19 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8)))
    (loop_4_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__9))
    (loop_4_iteration_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_4_iteration_22 : Vermilion.inUnsignedRange 64 v)
    (loop_4_iteration_23 : (0 ≤ v) ∧ (v ≤ n))
    (loop_4_iteration_24 : Vermilion.Seq.len candidate = v)
    (loop_4_iteration_25 : Vermilion.Seq.len retained_3 = n)
    (loop_4_iteration_26 : Vermilion.Seq.len reclaimable = n)
    (loop_4_iteration_27 : (∀ (k : Int), (((0 ≤ k) ∧ (k < v)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained_3 k))))))
    (loop_4_iteration_28 : v < n)
    (call_vec_index_4_ensures_0 : tmp__10 ↔ Vermilion.Seq.index reclaimable v)
    (then_4_call_vec_index_5_ensures_0 : tmp__10 → (tmp__11 ↔ Vermilion.Seq.index retained_3 v))
    (then_4_assume_32 : tmp__10 → (tmp__12 ↔ (¬ tmp__11)))
    (else_4_assume_31 : (¬ tmp__10) → (tmp__12 ↔ False))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_4))
    (call_push_1_ensures_0 : tmp__post_4 = Vermilion.Seq.push candidate tmp__12) :
    Vermilion.inUnsignedRange 64 (v + 1) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.assert_37

-- vrml:begin reclaim_plan.plan.invariant_preserve_4_0 6f2b89955a92f36f
/--
Generated VC `reclaim_plan.plan.invariant_preserve_4_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:558:19-558:30`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `4_0`
- Statement hash: `6f2b89955a92f36f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index candidate k⟩
-/
def invariant_preserve_4_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 558
  startColumn := 19
  endLine := 558
  endColumn := 30
  assertId := "4_0"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "6f2b89955a92f36f"
}
@[vrml_obligation] theorem invariant_preserve_4_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (tmp__8 : reclaim_plan.ReclaimPlan)
    (tmp__9 : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (v : Int)
    (tmp__10 : Prop)
    (tmp__12 : Prop)
    (tmp__11 : Prop)
    (tmp__post_4 : (Vermilion.Seq Prop))
    (loop_4_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_4_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_4_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_4_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_4_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_4_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_4_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_4_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_4_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_4_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_4_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_4_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_4_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_4_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_4_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_4_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_4_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_4_iteration_17 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8))
    (loop_4_iteration_18 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8)))
    (loop_4_iteration_19 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8)))
    (loop_4_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__9))
    (loop_4_iteration_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_4_iteration_22 : Vermilion.inUnsignedRange 64 v)
    (loop_4_iteration_23 : (0 ≤ v) ∧ (v ≤ n))
    (loop_4_iteration_24 : Vermilion.Seq.len candidate = v)
    (loop_4_iteration_25 : Vermilion.Seq.len retained_3 = n)
    (loop_4_iteration_26 : Vermilion.Seq.len reclaimable = n)
    (loop_4_iteration_27 : (∀ (k : Int), (((0 ≤ k) ∧ (k < v)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained_3 k))))))
    (loop_4_iteration_28 : v < n)
    (call_vec_index_4_ensures_0 : tmp__10 ↔ Vermilion.Seq.index reclaimable v)
    (then_4_call_vec_index_5_ensures_0 : tmp__10 → (tmp__11 ↔ Vermilion.Seq.index retained_3 v))
    (then_4_assume_32 : tmp__10 → (tmp__12 ↔ (¬ tmp__11)))
    (else_4_assume_31 : (¬ tmp__10) → (tmp__12 ↔ False))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_4))
    (call_push_1_ensures_0 : tmp__post_4 = Vermilion.Seq.push candidate tmp__12)
    (assert_37 : Vermilion.inUnsignedRange 64 (v + 1)) :
    (0 ≤ ((v + 1) % 18446744073709551616)) ∧ (((v + 1) % 18446744073709551616) ≤ n) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_preserve_4_0

-- vrml:begin reclaim_plan.plan.invariant_preserve_4_1 8089c2b6cee6ee07
/--
Generated VC `reclaim_plan.plan.invariant_preserve_4_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:558:32-558:53`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `4_1`
- Statement hash: `8089c2b6cee6ee07`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index candidate k⟩
-/
def invariant_preserve_4_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 558
  startColumn := 32
  endLine := 558
  endColumn := 53
  assertId := "4_1"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "8089c2b6cee6ee07"
}
@[vrml_obligation] theorem invariant_preserve_4_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (tmp__8 : reclaim_plan.ReclaimPlan)
    (tmp__9 : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (v : Int)
    (tmp__10 : Prop)
    (tmp__12 : Prop)
    (tmp__11 : Prop)
    (tmp__post_4 : (Vermilion.Seq Prop))
    (loop_4_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_4_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_4_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_4_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_4_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_4_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_4_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_4_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_4_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_4_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_4_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_4_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_4_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_4_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_4_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_4_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_4_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_4_iteration_17 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8))
    (loop_4_iteration_18 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8)))
    (loop_4_iteration_19 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8)))
    (loop_4_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__9))
    (loop_4_iteration_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_4_iteration_22 : Vermilion.inUnsignedRange 64 v)
    (loop_4_iteration_23 : (0 ≤ v) ∧ (v ≤ n))
    (loop_4_iteration_24 : Vermilion.Seq.len candidate = v)
    (loop_4_iteration_25 : Vermilion.Seq.len retained_3 = n)
    (loop_4_iteration_26 : Vermilion.Seq.len reclaimable = n)
    (loop_4_iteration_27 : (∀ (k : Int), (((0 ≤ k) ∧ (k < v)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained_3 k))))))
    (loop_4_iteration_28 : v < n)
    (call_vec_index_4_ensures_0 : tmp__10 ↔ Vermilion.Seq.index reclaimable v)
    (then_4_call_vec_index_5_ensures_0 : tmp__10 → (tmp__11 ↔ Vermilion.Seq.index retained_3 v))
    (then_4_assume_32 : tmp__10 → (tmp__12 ↔ (¬ tmp__11)))
    (else_4_assume_31 : (¬ tmp__10) → (tmp__12 ↔ False))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_4))
    (call_push_1_ensures_0 : tmp__post_4 = Vermilion.Seq.push candidate tmp__12)
    (assert_37 : Vermilion.inUnsignedRange 64 (v + 1)) :
    Vermilion.Seq.len tmp__post_4 = ((v + 1) % 18446744073709551616) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_preserve_4_1

-- vrml:begin reclaim_plan.plan.invariant_preserve_4_2 86c18bb0aead5b0c
/--
Generated VC `reclaim_plan.plan.invariant_preserve_4_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:558:55-558:75`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `4_2`
- Statement hash: `86c18bb0aead5b0c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index candidate k⟩
-/
def invariant_preserve_4_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 558
  startColumn := 55
  endLine := 558
  endColumn := 75
  assertId := "4_2"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "86c18bb0aead5b0c"
}
@[vrml_obligation] theorem invariant_preserve_4_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (tmp__8 : reclaim_plan.ReclaimPlan)
    (tmp__9 : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (v : Int)
    (tmp__10 : Prop)
    (tmp__12 : Prop)
    (tmp__11 : Prop)
    (tmp__post_4 : (Vermilion.Seq Prop))
    (loop_4_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_4_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_4_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_4_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_4_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_4_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_4_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_4_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_4_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_4_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_4_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_4_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_4_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_4_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_4_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_4_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_4_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_4_iteration_17 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8))
    (loop_4_iteration_18 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8)))
    (loop_4_iteration_19 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8)))
    (loop_4_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__9))
    (loop_4_iteration_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_4_iteration_22 : Vermilion.inUnsignedRange 64 v)
    (loop_4_iteration_23 : (0 ≤ v) ∧ (v ≤ n))
    (loop_4_iteration_24 : Vermilion.Seq.len candidate = v)
    (loop_4_iteration_25 : Vermilion.Seq.len retained_3 = n)
    (loop_4_iteration_26 : Vermilion.Seq.len reclaimable = n)
    (loop_4_iteration_27 : (∀ (k : Int), (((0 ≤ k) ∧ (k < v)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained_3 k))))))
    (loop_4_iteration_28 : v < n)
    (call_vec_index_4_ensures_0 : tmp__10 ↔ Vermilion.Seq.index reclaimable v)
    (then_4_call_vec_index_5_ensures_0 : tmp__10 → (tmp__11 ↔ Vermilion.Seq.index retained_3 v))
    (then_4_assume_32 : tmp__10 → (tmp__12 ↔ (¬ tmp__11)))
    (else_4_assume_31 : (¬ tmp__10) → (tmp__12 ↔ False))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_4))
    (call_push_1_ensures_0 : tmp__post_4 = Vermilion.Seq.push candidate tmp__12)
    (assert_37 : Vermilion.inUnsignedRange 64 (v + 1)) :
    Vermilion.Seq.len retained_3 = n := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_preserve_4_2

-- vrml:begin reclaim_plan.plan.invariant_preserve_4_3 1260b9d6948d7147
/--
Generated VC `reclaim_plan.plan.invariant_preserve_4_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:558:77-558:100`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `4_3`
- Statement hash: `1260b9d6948d7147`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index candidate k⟩
-/
def invariant_preserve_4_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 558
  startColumn := 77
  endLine := 558
  endColumn := 100
  assertId := "4_3"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "1260b9d6948d7147"
}
@[vrml_obligation] theorem invariant_preserve_4_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (tmp__8 : reclaim_plan.ReclaimPlan)
    (tmp__9 : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (v : Int)
    (tmp__10 : Prop)
    (tmp__12 : Prop)
    (tmp__11 : Prop)
    (tmp__post_4 : (Vermilion.Seq Prop))
    (loop_4_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_4_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_4_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_4_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_4_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_4_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_4_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_4_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_4_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_4_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_4_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_4_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_4_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_4_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_4_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_4_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_4_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_4_iteration_17 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8))
    (loop_4_iteration_18 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8)))
    (loop_4_iteration_19 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8)))
    (loop_4_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__9))
    (loop_4_iteration_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_4_iteration_22 : Vermilion.inUnsignedRange 64 v)
    (loop_4_iteration_23 : (0 ≤ v) ∧ (v ≤ n))
    (loop_4_iteration_24 : Vermilion.Seq.len candidate = v)
    (loop_4_iteration_25 : Vermilion.Seq.len retained_3 = n)
    (loop_4_iteration_26 : Vermilion.Seq.len reclaimable = n)
    (loop_4_iteration_27 : (∀ (k : Int), (((0 ≤ k) ∧ (k < v)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained_3 k))))))
    (loop_4_iteration_28 : v < n)
    (call_vec_index_4_ensures_0 : tmp__10 ↔ Vermilion.Seq.index reclaimable v)
    (then_4_call_vec_index_5_ensures_0 : tmp__10 → (tmp__11 ↔ Vermilion.Seq.index retained_3 v))
    (then_4_assume_32 : tmp__10 → (tmp__12 ↔ (¬ tmp__11)))
    (else_4_assume_31 : (¬ tmp__10) → (tmp__12 ↔ False))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_4))
    (call_push_1_ensures_0 : tmp__post_4 = Vermilion.Seq.push candidate tmp__12)
    (assert_37 : Vermilion.inUnsignedRange 64 (v + 1)) :
    Vermilion.Seq.len reclaimable = n := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.invariant_preserve_4_3

-- vrml:begin reclaim_plan.plan.invariant_preserve_4_4 75d16c66924427d5
/--
Generated VC `reclaim_plan.plan.invariant_preserve_4_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:559:13-559:120`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `4_4`
- Statement hash: `75d16c66924427d5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index tmp__post_4 k⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index candidate k⟩
-/
def invariant_preserve_4_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 559
  startColumn := 13
  endLine := 559
  endColumn := 120
  assertId := "4_4"
  functionName := "reclaim_plan.plan"
  kind := "invariant_preserve"
  statementHash := "75d16c66924427d5"
}
@[vrml_obligation] theorem invariant_preserve_4_4
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (tmp__8 : reclaim_plan.ReclaimPlan)
    (tmp__9 : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (v : Int)
    (tmp__10 : Prop)
    (tmp__12 : Prop)
    (tmp__11 : Prop)
    (tmp__post_4 : (Vermilion.Seq Prop))
    (loop_4_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_4_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_4_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_4_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_4_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_4_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_4_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_4_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_4_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_4_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_4_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_4_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_4_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_4_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_4_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_4_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_4_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_4_iteration_17 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8))
    (loop_4_iteration_18 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8)))
    (loop_4_iteration_19 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8)))
    (loop_4_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__9))
    (loop_4_iteration_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_4_iteration_22 : Vermilion.inUnsignedRange 64 v)
    (loop_4_iteration_23 : (0 ≤ v) ∧ (v ≤ n))
    (loop_4_iteration_24 : Vermilion.Seq.len candidate = v)
    (loop_4_iteration_25 : Vermilion.Seq.len retained_3 = n)
    (loop_4_iteration_26 : Vermilion.Seq.len reclaimable = n)
    (loop_4_iteration_27 : (∀ (k : Int), (((0 ≤ k) ∧ (k < v)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained_3 k))))))
    (loop_4_iteration_28 : v < n)
    (call_vec_index_4_ensures_0 : tmp__10 ↔ Vermilion.Seq.index reclaimable v)
    (then_4_call_vec_index_5_ensures_0 : tmp__10 → (tmp__11 ↔ Vermilion.Seq.index retained_3 v))
    (then_4_assume_32 : tmp__10 → (tmp__12 ↔ (¬ tmp__11)))
    (else_4_assume_31 : (¬ tmp__10) → (tmp__12 ↔ False))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_4))
    (call_push_1_ensures_0 : tmp__post_4 = Vermilion.Seq.push candidate tmp__12)
    (assert_37 : Vermilion.inUnsignedRange 64 (v + 1)) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < ((v + 1) % 18446744073709551616))) → (Vermilion.Seq.index tmp__post_4 k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained_3 k))))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.invariant_preserve_4_4

-- vrml:begin reclaim_plan.plan.assert_4_decreases 33f5af9457c34661
/--
Generated VC `reclaim_plan.plan.assert_4_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:560:19-560:24`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `4_decreases`
- Statement hash: `33f5af9457c34661`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index candidate k⟩
-/
def assert_4_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 560
  startColumn := 19
  endLine := 560
  endColumn := 24
  assertId := "4_decreases"
  functionName := "reclaim_plan.plan"
  kind := "assert"
  statementHash := "33f5af9457c34661"
}
@[vrml_obligation] theorem assert_4_decreases
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (tmp__8 : reclaim_plan.ReclaimPlan)
    (tmp__9 : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (v : Int)
    (tmp__10 : Prop)
    (tmp__12 : Prop)
    (tmp__11 : Prop)
    (tmp__post_4 : (Vermilion.Seq Prop))
    (loop_4_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_4_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_4_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_4_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_4_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_4_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_4_iteration_6 : Vermilion.inUnsignedRange 8 status)
    (loop_4_iteration_7 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (loop_4_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (loop_4_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (loop_4_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (loop_4_iteration_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_4_iteration_12 : Vermilion.inUnsignedRange 64 k)
    (loop_4_iteration_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_4_iteration_14 : Vermilion.inUnsignedRange 64 r)
    (loop_4_iteration_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_4_iteration_16 : Vermilion.inUnsignedRange 64 rounds)
    (loop_4_iteration_17 : Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8))
    (loop_4_iteration_18 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8)))
    (loop_4_iteration_19 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8)))
    (loop_4_iteration_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__9))
    (loop_4_iteration_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_4_iteration_22 : Vermilion.inUnsignedRange 64 v)
    (loop_4_iteration_23 : (0 ≤ v) ∧ (v ≤ n))
    (loop_4_iteration_24 : Vermilion.Seq.len candidate = v)
    (loop_4_iteration_25 : Vermilion.Seq.len retained_3 = n)
    (loop_4_iteration_26 : Vermilion.Seq.len reclaimable = n)
    (loop_4_iteration_27 : (∀ (k : Int), (((0 ≤ k) ∧ (k < v)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained_3 k))))))
    (loop_4_iteration_28 : v < n)
    (call_vec_index_4_ensures_0 : tmp__10 ↔ Vermilion.Seq.index reclaimable v)
    (then_4_call_vec_index_5_ensures_0 : tmp__10 → (tmp__11 ↔ Vermilion.Seq.index retained_3 v))
    (then_4_assume_32 : tmp__10 → (tmp__12 ↔ (¬ tmp__11)))
    (else_4_assume_31 : (¬ tmp__10) → (tmp__12 ↔ False))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_4))
    (call_push_1_ensures_0 : tmp__post_4 = Vermilion.Seq.push candidate tmp__12)
    (assert_37 : Vermilion.inUnsignedRange 64 (v + 1)) :
    ((0 ≤ (n - ((v + 1) % 18446744073709551616))) ∧ ((n - ((v + 1) % 18446744073709551616)) < (n - v))) ∨ (((n - ((v + 1) % 18446744073709551616)) = (n - v)) ∧ False) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.plan.assert_4_decreases

-- vrml:begin reclaim_plan.plan.ensures_38_0 358f135236f7a731
/--
Generated VC `reclaim_plan.plan.ensures_38_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:449:9-450:69`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `38_0`
- Statement hash: `358f135236f7a731`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩ ⟨Vermilion.Seq.index roots j⟩ ⟨Vermilion.Seq.index candidate k⟩
-/
def ensures_38_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 449
  startColumn := 9
  endLine := 450
  endColumn := 69
  assertId := "38_0"
  functionName := "reclaim_plan.plan"
  kind := "ensures"
  statementHash := "358f135236f7a731"
}
@[vrml_obligation] theorem ensures_38_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (tmp__8 : reclaim_plan.ReclaimPlan)
    (tmp__9 : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (v : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_exit_1 : Vermilion.inUnsignedRange 64 r)
    (loop_1_exit_2 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_exit_3 : Vermilion.Seq.len retained_2 = n)
    (loop_1_exit_4 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_exit_5 : roots = roots)
    (loop_1_exit_6 : edges = edges)
    (loop_1_exit_7 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_exit_8 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_exit_9 : (¬ (r < Vermilion.Seq.len roots)))
    (loop_2_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_exit_1 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_exit_2 : Vermilion.Seq.len retained_3 = n)
    (loop_2_exit_3 : roots = roots)
    (loop_2_exit_4 : edges = edges)
    (loop_2_exit_5 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_exit_6 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_exit_7 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_exit_8 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_exit_9 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_exit_10 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_exit_11 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_exit_12 : rounds ≤ (n + 1))
    (loop_2_exit_13 : (¬ (changed ∧ (rounds ≤ n))))
    (call_count_true_bounded_ensures_0 : reclaim_plan.count_true retained_3 ≤ Vermilion.Seq.len retained_3)
    (assert_30 : (¬ changed))
    (then_3_call_empty_plan_1_ensures_0 : changed → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8))
    (then_3_call_empty_plan_1_ensures_1 : changed → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8)))
    (then_3_call_empty_plan_1_ensures_2 : changed → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8)))
    (then_3_call_empty_plan_1_ensures_3 : changed → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8 = reclaim_plan.ROUND_LIMIT))
    (then_3_call_empty_plan_1_ensures_4 : changed → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8) = 0))
    (then_3_call_empty_plan_1_ensures_5 : changed → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8) = 0))
    (then_3_assume_63 : changed → False)
    (then_3_assume_64 : changed → False)
    (call_new_1_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__9))
    (call_new_1_ensures_1 : tmp__9 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_4_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_4_exit_1 : Vermilion.inUnsignedRange 64 v)
    (loop_4_exit_2 : (0 ≤ v) ∧ (v ≤ n))
    (loop_4_exit_3 : Vermilion.Seq.len candidate = v)
    (loop_4_exit_4 : Vermilion.Seq.len retained_3 = n)
    (loop_4_exit_5 : Vermilion.Seq.len reclaimable = n)
    (loop_4_exit_6 : (∀ (k : Int), (((0 ≤ k) ∧ (k < v)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained_3 k))))))
    (loop_4_exit_7 : (¬ (v < n))) :
    (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status (reclaim_plan.ReclaimPlan.ReclaimPlan reclaim_plan.PLANNED retained_3 candidate) = reclaim_plan.PLANNED) → (reclaim_plan.plan_valid_spec n edges roots reclaimable (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained (reclaim_plan.ReclaimPlan.ReclaimPlan reclaim_plan.PLANNED retained_3 candidate)) (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate (reclaim_plan.ReclaimPlan.ReclaimPlan reclaim_plan.PLANNED retained_3 candidate)) ∧ reclaim_plan.retained_sound_spec edges roots (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained (reclaim_plan.ReclaimPlan.ReclaimPlan reclaim_plan.PLANNED retained_3 candidate))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.ensures_38_0

-- vrml:begin reclaim_plan.plan.ensures_38_1 511090f6fb278faf
/--
Generated VC `reclaim_plan.plan.ensures_38_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:451:9-451:97`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `38_1`
- Statement hash: `511090f6fb278faf`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩ ⟨Vermilion.Seq.index roots j⟩ ⟨Vermilion.Seq.index candidate k⟩
-/
def ensures_38_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 451
  startColumn := 9
  endLine := 451
  endColumn := 97
  assertId := "38_1"
  functionName := "reclaim_plan.plan"
  kind := "ensures"
  statementHash := "511090f6fb278faf"
}
@[vrml_obligation] theorem ensures_38_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (tmp__8 : reclaim_plan.ReclaimPlan)
    (tmp__9 : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (v : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_exit_1 : Vermilion.inUnsignedRange 64 r)
    (loop_1_exit_2 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_exit_3 : Vermilion.Seq.len retained_2 = n)
    (loop_1_exit_4 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_exit_5 : roots = roots)
    (loop_1_exit_6 : edges = edges)
    (loop_1_exit_7 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_exit_8 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_exit_9 : (¬ (r < Vermilion.Seq.len roots)))
    (loop_2_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_exit_1 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_exit_2 : Vermilion.Seq.len retained_3 = n)
    (loop_2_exit_3 : roots = roots)
    (loop_2_exit_4 : edges = edges)
    (loop_2_exit_5 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_exit_6 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_exit_7 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_exit_8 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_exit_9 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_exit_10 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_exit_11 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_exit_12 : rounds ≤ (n + 1))
    (loop_2_exit_13 : (¬ (changed ∧ (rounds ≤ n))))
    (call_count_true_bounded_ensures_0 : reclaim_plan.count_true retained_3 ≤ Vermilion.Seq.len retained_3)
    (assert_30 : (¬ changed))
    (then_3_call_empty_plan_1_ensures_0 : changed → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8))
    (then_3_call_empty_plan_1_ensures_1 : changed → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8)))
    (then_3_call_empty_plan_1_ensures_2 : changed → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8)))
    (then_3_call_empty_plan_1_ensures_3 : changed → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8 = reclaim_plan.ROUND_LIMIT))
    (then_3_call_empty_plan_1_ensures_4 : changed → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8) = 0))
    (then_3_call_empty_plan_1_ensures_5 : changed → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8) = 0))
    (then_3_assume_63 : changed → False)
    (then_3_assume_64 : changed → False)
    (call_new_1_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__9))
    (call_new_1_ensures_1 : tmp__9 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_4_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_4_exit_1 : Vermilion.inUnsignedRange 64 v)
    (loop_4_exit_2 : (0 ≤ v) ∧ (v ≤ n))
    (loop_4_exit_3 : Vermilion.Seq.len candidate = v)
    (loop_4_exit_4 : Vermilion.Seq.len retained_3 = n)
    (loop_4_exit_5 : Vermilion.Seq.len reclaimable = n)
    (loop_4_exit_6 : (∀ (k : Int), (((0 ≤ k) ∧ (k < v)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained_3 k))))))
    (loop_4_exit_7 : (¬ (v < n))) :
    (¬ (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status (reclaim_plan.ReclaimPlan.ReclaimPlan reclaim_plan.PLANNED retained_3 candidate) = reclaim_plan.PLANNED)) → ((Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained (reclaim_plan.ReclaimPlan.ReclaimPlan reclaim_plan.PLANNED retained_3 candidate)) = 0) ∧ (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate (reclaim_plan.ReclaimPlan.ReclaimPlan reclaim_plan.PLANNED retained_3 candidate)) = 0)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.ensures_38_1

-- vrml:begin reclaim_plan.plan.ensures_38_2 19d240679cdef1ad
/--
Generated VC `reclaim_plan.plan.ensures_38_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:452:9-452:94`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `38_2`
- Statement hash: `19d240679cdef1ad`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩ ⟨Vermilion.Seq.index roots j⟩ ⟨Vermilion.Seq.index candidate k⟩
-/
def ensures_38_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 452
  startColumn := 9
  endLine := 452
  endColumn := 94
  assertId := "38_2"
  functionName := "reclaim_plan.plan"
  kind := "ensures"
  statementHash := "19d240679cdef1ad"
}
@[vrml_obligation] theorem ensures_38_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (tmp__8 : reclaim_plan.ReclaimPlan)
    (tmp__9 : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (v : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_exit_1 : Vermilion.inUnsignedRange 64 r)
    (loop_1_exit_2 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_exit_3 : Vermilion.Seq.len retained_2 = n)
    (loop_1_exit_4 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_exit_5 : roots = roots)
    (loop_1_exit_6 : edges = edges)
    (loop_1_exit_7 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_exit_8 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_exit_9 : (¬ (r < Vermilion.Seq.len roots)))
    (loop_2_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_exit_1 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_exit_2 : Vermilion.Seq.len retained_3 = n)
    (loop_2_exit_3 : roots = roots)
    (loop_2_exit_4 : edges = edges)
    (loop_2_exit_5 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_exit_6 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_exit_7 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_exit_8 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_exit_9 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_exit_10 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_exit_11 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_exit_12 : rounds ≤ (n + 1))
    (loop_2_exit_13 : (¬ (changed ∧ (rounds ≤ n))))
    (call_count_true_bounded_ensures_0 : reclaim_plan.count_true retained_3 ≤ Vermilion.Seq.len retained_3)
    (assert_30 : (¬ changed))
    (then_3_call_empty_plan_1_ensures_0 : changed → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8))
    (then_3_call_empty_plan_1_ensures_1 : changed → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8)))
    (then_3_call_empty_plan_1_ensures_2 : changed → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8)))
    (then_3_call_empty_plan_1_ensures_3 : changed → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8 = reclaim_plan.ROUND_LIMIT))
    (then_3_call_empty_plan_1_ensures_4 : changed → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8) = 0))
    (then_3_call_empty_plan_1_ensures_5 : changed → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8) = 0))
    (then_3_assume_63 : changed → False)
    (then_3_assume_64 : changed → False)
    (call_new_1_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__9))
    (call_new_1_ensures_1 : tmp__9 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_4_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_4_exit_1 : Vermilion.inUnsignedRange 64 v)
    (loop_4_exit_2 : (0 ≤ v) ∧ (v ≤ n))
    (loop_4_exit_3 : Vermilion.Seq.len candidate = v)
    (loop_4_exit_4 : Vermilion.Seq.len retained_3 = n)
    (loop_4_exit_5 : Vermilion.Seq.len reclaimable = n)
    (loop_4_exit_6 : (∀ (k : Int), (((0 ≤ k) ∧ (k < v)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained_3 k))))))
    (loop_4_exit_7 : (¬ (v < n))) :
    (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (¬ (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status (reclaim_plan.ReclaimPlan.ReclaimPlan reclaim_plan.PLANNED retained_3 candidate) = reclaim_plan.PLANNED)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.ensures_38_2

-- vrml:begin reclaim_plan.plan.ensures_38_3 d2f50fcdab91aceb
/--
Generated VC `reclaim_plan.plan.ensures_38_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:453:9-453:93`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `38_3`
- Statement hash: `d2f50fcdab91aceb`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index retained j⟩ ⟨Vermilion.Seq.index roots j⟩ ⟨Vermilion.Seq.index candidate k⟩
-/
def ensures_38_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 453
  startColumn := 9
  endLine := 453
  endColumn := 93
  assertId := "38_3"
  functionName := "reclaim_plan.plan"
  kind := "ensures"
  statementHash := "d2f50fcdab91aceb"
}
@[vrml_obligation] theorem ensures_38_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (status : Int)
    (tmp_ : reclaim_plan.ReclaimPlan)
    (tmp__2 : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (k : Int)
    (retained_2 : (Vermilion.Seq Prop))
    (r : Int)
    (changed : Prop)
    (retained_3 : (Vermilion.Seq Prop))
    (rounds : Int)
    (tmp__8 : reclaim_plan.ReclaimPlan)
    (tmp__9 : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (v : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (call_first_rejection_ensures_0 : Vermilion.inUnsignedRange 8 status)
    (call_first_rejection_ensures_1 : (status = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable)
    (call_first_rejection_ensures_2 : (status = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)))
    (call_first_rejection_ensures_3 : (status = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (call_first_rejection_ensures_4 : (status = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots))
    (call_first_rejection_ensures_5 : (status = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges))
    (call_first_rejection_ensures_6 : (status = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable))
    (call_first_rejection_ensures_7 : status ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE)
    (then_0_call_empty_plan_ensures_0 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_))
    (then_0_call_empty_plan_ensures_1 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_)))
    (then_0_call_empty_plan_ensures_2 : (status ≠ reclaim_plan.PLANNED) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_)))
    (then_0_call_empty_plan_ensures_3 : (status ≠ reclaim_plan.PLANNED) → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp_ = status))
    (then_0_call_empty_plan_ensures_4 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp_) = 0))
    (then_0_call_empty_plan_ensures_5 : (status ≠ reclaim_plan.PLANNED) → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp_) = 0))
    (then_0_assume_21 : (status ≠ reclaim_plan.PLANNED) → False)
    (then_0_assume_22 : (status ≠ reclaim_plan.PLANNED) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_new_ensures_1 : tmp__2 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ n))
    (loop_0_exit_3 : Vermilion.Seq.len retained = k)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < k)) → (¬ Vermilion.Seq.index retained j))))
    (loop_0_exit_5 : (¬ (k < n)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_2))
    (loop_1_exit_1 : Vermilion.inUnsignedRange 64 r)
    (loop_1_exit_2 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_1_exit_3 : Vermilion.Seq.len retained_2 = n)
    (loop_1_exit_4 : reclaim_plan.roots_in_range_spec n roots)
    (loop_1_exit_5 : roots = roots)
    (loop_1_exit_6 : edges = edges)
    (loop_1_exit_7 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained_2 (Vermilion.Seq.index roots j))))
    (loop_1_exit_8 : reclaim_plan.retained_sound_spec edges roots retained_2)
    (loop_1_exit_9 : (¬ (r < Vermilion.Seq.len roots)))
    (loop_2_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained_3))
    (loop_2_exit_1 : Vermilion.inUnsignedRange 64 rounds)
    (loop_2_exit_2 : Vermilion.Seq.len retained_3 = n)
    (loop_2_exit_3 : roots = roots)
    (loop_2_exit_4 : edges = edges)
    (loop_2_exit_5 : n ≤ reclaim_plan.MAX_NODES)
    (loop_2_exit_6 : reclaim_plan.edges_in_range_spec n edges)
    (loop_2_exit_7 : reclaim_plan.roots_in_range_spec n roots)
    (loop_2_exit_8 : reclaim_plan.roots_retained_spec roots retained_3)
    (loop_2_exit_9 : reclaim_plan.retained_sound_spec edges roots retained_3)
    (loop_2_exit_10 : (¬ changed) → reclaim_plan.closed_spec edges retained_3)
    (loop_2_exit_11 : changed → (reclaim_plan.count_true retained_3 ≥ rounds))
    (loop_2_exit_12 : rounds ≤ (n + 1))
    (loop_2_exit_13 : (¬ (changed ∧ (rounds ≤ n))))
    (call_count_true_bounded_ensures_0 : reclaim_plan.count_true retained_3 ≤ Vermilion.Seq.len retained_3)
    (assert_30 : (¬ changed))
    (then_3_call_empty_plan_1_ensures_0 : changed → Vermilion.inUnsignedRange 8 (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8))
    (then_3_call_empty_plan_1_ensures_1 : changed → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8)))
    (then_3_call_empty_plan_1_ensures_2 : changed → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8)))
    (then_3_call_empty_plan_1_ensures_3 : changed → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status tmp__8 = reclaim_plan.ROUND_LIMIT))
    (then_3_call_empty_plan_1_ensures_4 : changed → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained tmp__8) = 0))
    (then_3_call_empty_plan_1_ensures_5 : changed → (Vermilion.Seq.len (reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate tmp__8) = 0))
    (then_3_assume_63 : changed → False)
    (then_3_assume_64 : changed → False)
    (call_new_1_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__9))
    (call_new_1_ensures_1 : tmp__9 = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_4_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_4_exit_1 : Vermilion.inUnsignedRange 64 v)
    (loop_4_exit_2 : (0 ≤ v) ∧ (v ≤ n))
    (loop_4_exit_3 : Vermilion.Seq.len candidate = v)
    (loop_4_exit_4 : Vermilion.Seq.len retained_3 = n)
    (loop_4_exit_5 : Vermilion.Seq.len reclaimable = n)
    (loop_4_exit_6 : (∀ (k : Int), (((0 ≤ k) ∧ (k < v)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained_3 k))))))
    (loop_4_exit_7 : (¬ (v < n))) :
    reclaim_plan.admissible_spec n edges roots reclaimable → (reclaim_plan.ReclaimPlan.get_ReclaimPlan_status (reclaim_plan.ReclaimPlan.ReclaimPlan reclaim_plan.PLANNED retained_3 candidate) = reclaim_plan.PLANNED) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.plan.ensures_38_3

end reclaim_plan.plan

