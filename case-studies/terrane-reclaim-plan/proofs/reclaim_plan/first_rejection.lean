import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.first_rejection

-- vrml:begin reclaim_plan.first_rejection.ensures_1_0 fd38cc8502322ad1
/--
Generated VC `reclaim_plan.first_rejection.ensures_1_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:412:9-412:87`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1_0`
- Statement hash: `fd38cc8502322ad1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_1_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 412
  startColumn := 9
  endLine := 412
  endColumn := 87
  assertId := "1_0"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "fd38cc8502322ad1"
}
@[vrml_obligation] theorem ensures_1_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (branch_0 : Vermilion.Seq.len reclaimable ≠ n) :
    (reclaim_plan.LENGTH_MISMATCH = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_1_0

-- vrml:begin reclaim_plan.first_rejection.ensures_1_1 9503c9c2ff356bad
/--
Generated VC `reclaim_plan.first_rejection.ensures_1_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:413:9-413:62`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1_1`
- Statement hash: `9503c9c2ff356bad`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_1_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 413
  startColumn := 9
  endLine := 413
  endColumn := 62
  assertId := "1_1"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "9503c9c2ff356bad"
}
@[vrml_obligation] theorem ensures_1_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (branch_0 : Vermilion.Seq.len reclaimable ≠ n) :
    (reclaim_plan.LENGTH_MISMATCH = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_1_1

-- vrml:begin reclaim_plan.first_rejection.ensures_1_2 cf7d49fdaa8d072f
/--
Generated VC `reclaim_plan.first_rejection.ensures_1_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:414:9-414:104`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1_2`
- Statement hash: `cf7d49fdaa8d072f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_1_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 414
  startColumn := 9
  endLine := 414
  endColumn := 104
  assertId := "1_2"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "cf7d49fdaa8d072f"
}
@[vrml_obligation] theorem ensures_1_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (branch_0 : Vermilion.Seq.len reclaimable ≠ n) :
    (reclaim_plan.LENGTH_MISMATCH = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_1_2

-- vrml:begin reclaim_plan.first_rejection.ensures_1_3 c5ba8d250fca18b6
/--
Generated VC `reclaim_plan.first_rejection.ensures_1_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:415:9-415:79`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1_3`
- Statement hash: `c5ba8d250fca18b6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_1_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 415
  startColumn := 9
  endLine := 415
  endColumn := 79
  assertId := "1_3"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "c5ba8d250fca18b6"
}
@[vrml_obligation] theorem ensures_1_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (branch_0 : Vermilion.Seq.len reclaimable ≠ n) :
    (reclaim_plan.LENGTH_MISMATCH = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_1_3

-- vrml:begin reclaim_plan.first_rejection.ensures_1_4 211a8960e7a5b87b
/--
Generated VC `reclaim_plan.first_rejection.ensures_1_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:416:9-416:79`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1_4`
- Statement hash: `211a8960e7a5b87b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_1_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 416
  startColumn := 9
  endLine := 416
  endColumn := 79
  assertId := "1_4"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "211a8960e7a5b87b"
}
@[vrml_obligation] theorem ensures_1_4
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (branch_0 : Vermilion.Seq.len reclaimable ≠ n) :
    (reclaim_plan.LENGTH_MISMATCH = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_1_4

-- vrml:begin reclaim_plan.first_rejection.ensures_1_5 a6c1278cfd65ba6e
/--
Generated VC `reclaim_plan.first_rejection.ensures_1_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:417:9-417:100`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1_5`
- Statement hash: `a6c1278cfd65ba6e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_1_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 417
  startColumn := 9
  endLine := 417
  endColumn := 100
  assertId := "1_5"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "a6c1278cfd65ba6e"
}
@[vrml_obligation] theorem ensures_1_5
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (branch_0 : Vermilion.Seq.len reclaimable ≠ n) :
    (reclaim_plan.LENGTH_MISMATCH = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_1_5

-- vrml:begin reclaim_plan.first_rejection.ensures_1_6 4fe893999c9f3b45
/--
Generated VC `reclaim_plan.first_rejection.ensures_1_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:418:9-418:51`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1_6`
- Statement hash: `4fe893999c9f3b45`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_1_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 418
  startColumn := 9
  endLine := 418
  endColumn := 51
  assertId := "1_6"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "4fe893999c9f3b45"
}
@[vrml_obligation] theorem ensures_1_6
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (branch_0 : Vermilion.Seq.len reclaimable ≠ n) :
    reclaim_plan.LENGTH_MISMATCH ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_1_6

-- vrml:begin reclaim_plan.first_rejection.ensures_4_0 2f4ffe904523cd46
/--
Generated VC `reclaim_plan.first_rejection.ensures_4_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:412:9-412:87`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `4_0`
- Statement hash: `2f4ffe904523cd46`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_4_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 412
  startColumn := 9
  endLine := 412
  endColumn := 87
  assertId := "4_0"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "2f4ffe904523cd46"
}
@[vrml_obligation] theorem ensures_4_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (branch_3 : tmp__2) :
    (reclaim_plan.TOO_LARGE = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_4_0

-- vrml:begin reclaim_plan.first_rejection.ensures_4_1 8f946d48ff570dfe
/--
Generated VC `reclaim_plan.first_rejection.ensures_4_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:413:9-413:62`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `4_1`
- Statement hash: `8f946d48ff570dfe`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_4_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 413
  startColumn := 9
  endLine := 413
  endColumn := 62
  assertId := "4_1"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "8f946d48ff570dfe"
}
@[vrml_obligation] theorem ensures_4_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (branch_3 : tmp__2) :
    (reclaim_plan.TOO_LARGE = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_4_1

-- vrml:begin reclaim_plan.first_rejection.ensures_4_2 d68c20e6ea6a3508
/--
Generated VC `reclaim_plan.first_rejection.ensures_4_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:414:9-414:104`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `4_2`
- Statement hash: `d68c20e6ea6a3508`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_4_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 414
  startColumn := 9
  endLine := 414
  endColumn := 104
  assertId := "4_2"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "d68c20e6ea6a3508"
}
@[vrml_obligation] theorem ensures_4_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (branch_3 : tmp__2) :
    (reclaim_plan.TOO_LARGE = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_4_2

-- vrml:begin reclaim_plan.first_rejection.ensures_4_3 4e9b903c78530847
/--
Generated VC `reclaim_plan.first_rejection.ensures_4_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:415:9-415:79`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `4_3`
- Statement hash: `4e9b903c78530847`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_4_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 415
  startColumn := 9
  endLine := 415
  endColumn := 79
  assertId := "4_3"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "4e9b903c78530847"
}
@[vrml_obligation] theorem ensures_4_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (branch_3 : tmp__2) :
    (reclaim_plan.TOO_LARGE = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_4_3

-- vrml:begin reclaim_plan.first_rejection.ensures_4_4 c28b197f9ab1331e
/--
Generated VC `reclaim_plan.first_rejection.ensures_4_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:416:9-416:79`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `4_4`
- Statement hash: `c28b197f9ab1331e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_4_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 416
  startColumn := 9
  endLine := 416
  endColumn := 79
  assertId := "4_4"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "c28b197f9ab1331e"
}
@[vrml_obligation] theorem ensures_4_4
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (branch_3 : tmp__2) :
    (reclaim_plan.TOO_LARGE = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_4_4

-- vrml:begin reclaim_plan.first_rejection.ensures_4_5 6c6bb31adce7d269
/--
Generated VC `reclaim_plan.first_rejection.ensures_4_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:417:9-417:100`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `4_5`
- Statement hash: `6c6bb31adce7d269`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_4_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 417
  startColumn := 9
  endLine := 417
  endColumn := 100
  assertId := "4_5"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "6c6bb31adce7d269"
}
@[vrml_obligation] theorem ensures_4_5
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (branch_3 : tmp__2) :
    (reclaim_plan.TOO_LARGE = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_4_5

-- vrml:begin reclaim_plan.first_rejection.ensures_4_6 d71cb02b9dccb41c
/--
Generated VC `reclaim_plan.first_rejection.ensures_4_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:418:9-418:51`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `4_6`
- Statement hash: `d71cb02b9dccb41c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_4_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 418
  startColumn := 9
  endLine := 418
  endColumn := 51
  assertId := "4_6"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "d71cb02b9dccb41c"
}
@[vrml_obligation] theorem ensures_4_6
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (branch_3 : tmp__2) :
    reclaim_plan.TOO_LARGE ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_4_6

-- vrml:begin reclaim_plan.first_rejection.ensures_6_0 7f1cfa2b9008fb7e
/--
Generated VC `reclaim_plan.first_rejection.ensures_6_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:412:9-412:87`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `6_0`
- Statement hash: `7f1cfa2b9008fb7e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_6_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 412
  startColumn := 9
  endLine := 412
  endColumn := 87
  assertId := "6_0"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "7f1cfa2b9008fb7e"
}
@[vrml_obligation] theorem ensures_6_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (branch_4 : (¬ reclaim_plan.roots_in_range_spec n roots)) :
    (reclaim_plan.ROOT_OUT_OF_RANGE = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_6_0

-- vrml:begin reclaim_plan.first_rejection.ensures_6_1 61a71945ea865d26
/--
Generated VC `reclaim_plan.first_rejection.ensures_6_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:413:9-413:62`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `6_1`
- Statement hash: `61a71945ea865d26`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_6_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 413
  startColumn := 9
  endLine := 413
  endColumn := 62
  assertId := "6_1"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "61a71945ea865d26"
}
@[vrml_obligation] theorem ensures_6_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (branch_4 : (¬ reclaim_plan.roots_in_range_spec n roots)) :
    (reclaim_plan.ROOT_OUT_OF_RANGE = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_6_1

-- vrml:begin reclaim_plan.first_rejection.ensures_6_2 3d2d43ed6b8fa120
/--
Generated VC `reclaim_plan.first_rejection.ensures_6_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:414:9-414:104`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `6_2`
- Statement hash: `3d2d43ed6b8fa120`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_6_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 414
  startColumn := 9
  endLine := 414
  endColumn := 104
  assertId := "6_2"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "3d2d43ed6b8fa120"
}
@[vrml_obligation] theorem ensures_6_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (branch_4 : (¬ reclaim_plan.roots_in_range_spec n roots)) :
    (reclaim_plan.ROOT_OUT_OF_RANGE = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_6_2

-- vrml:begin reclaim_plan.first_rejection.ensures_6_3 fc44e2ba46740d1f
/--
Generated VC `reclaim_plan.first_rejection.ensures_6_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:415:9-415:79`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `6_3`
- Statement hash: `fc44e2ba46740d1f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_6_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 415
  startColumn := 9
  endLine := 415
  endColumn := 79
  assertId := "6_3"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "fc44e2ba46740d1f"
}
@[vrml_obligation] theorem ensures_6_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (branch_4 : (¬ reclaim_plan.roots_in_range_spec n roots)) :
    (reclaim_plan.ROOT_OUT_OF_RANGE = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_6_3

-- vrml:begin reclaim_plan.first_rejection.ensures_6_4 d02ff5444392cc76
/--
Generated VC `reclaim_plan.first_rejection.ensures_6_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:416:9-416:79`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `6_4`
- Statement hash: `d02ff5444392cc76`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_6_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 416
  startColumn := 9
  endLine := 416
  endColumn := 79
  assertId := "6_4"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "d02ff5444392cc76"
}
@[vrml_obligation] theorem ensures_6_4
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (branch_4 : (¬ reclaim_plan.roots_in_range_spec n roots)) :
    (reclaim_plan.ROOT_OUT_OF_RANGE = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_6_4

-- vrml:begin reclaim_plan.first_rejection.ensures_6_5 54e850f00b612931
/--
Generated VC `reclaim_plan.first_rejection.ensures_6_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:417:9-417:100`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `6_5`
- Statement hash: `54e850f00b612931`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_6_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 417
  startColumn := 9
  endLine := 417
  endColumn := 100
  assertId := "6_5"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "54e850f00b612931"
}
@[vrml_obligation] theorem ensures_6_5
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (branch_4 : (¬ reclaim_plan.roots_in_range_spec n roots)) :
    (reclaim_plan.ROOT_OUT_OF_RANGE = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_6_5

-- vrml:begin reclaim_plan.first_rejection.ensures_6_6 a995cb824d9255ea
/--
Generated VC `reclaim_plan.first_rejection.ensures_6_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:418:9-418:51`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `6_6`
- Statement hash: `a995cb824d9255ea`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_6_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 418
  startColumn := 9
  endLine := 418
  endColumn := 51
  assertId := "6_6"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "a995cb824d9255ea"
}
@[vrml_obligation] theorem ensures_6_6
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (branch_4 : (¬ reclaim_plan.roots_in_range_spec n roots)) :
    reclaim_plan.ROOT_OUT_OF_RANGE ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_6_6

-- vrml:begin reclaim_plan.first_rejection.ensures_8_0 53e2703ddeab39eb
/--
Generated VC `reclaim_plan.first_rejection.ensures_8_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:412:9-412:87`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `8_0`
- Statement hash: `53e2703ddeab39eb`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_8_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 412
  startColumn := 9
  endLine := 412
  endColumn := 87
  assertId := "8_0"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "53e2703ddeab39eb"
}
@[vrml_obligation] theorem ensures_8_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (then_4_assume_18 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_4_assume_19 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (branch_5 : (¬ reclaim_plan.edges_in_range_spec n edges)) :
    (reclaim_plan.EDGE_OUT_OF_RANGE = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_8_0

-- vrml:begin reclaim_plan.first_rejection.ensures_8_1 d9ff243e30be6207
/--
Generated VC `reclaim_plan.first_rejection.ensures_8_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:413:9-413:62`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `8_1`
- Statement hash: `d9ff243e30be6207`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_8_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 413
  startColumn := 9
  endLine := 413
  endColumn := 62
  assertId := "8_1"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "d9ff243e30be6207"
}
@[vrml_obligation] theorem ensures_8_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (then_4_assume_18 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_4_assume_19 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (branch_5 : (¬ reclaim_plan.edges_in_range_spec n edges)) :
    (reclaim_plan.EDGE_OUT_OF_RANGE = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_8_1

-- vrml:begin reclaim_plan.first_rejection.ensures_8_2 c8a5a19c841f6701
/--
Generated VC `reclaim_plan.first_rejection.ensures_8_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:414:9-414:104`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `8_2`
- Statement hash: `c8a5a19c841f6701`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_8_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 414
  startColumn := 9
  endLine := 414
  endColumn := 104
  assertId := "8_2"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "c8a5a19c841f6701"
}
@[vrml_obligation] theorem ensures_8_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (then_4_assume_18 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_4_assume_19 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (branch_5 : (¬ reclaim_plan.edges_in_range_spec n edges)) :
    (reclaim_plan.EDGE_OUT_OF_RANGE = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_8_2

-- vrml:begin reclaim_plan.first_rejection.ensures_8_3 f59bcc23adb69234
/--
Generated VC `reclaim_plan.first_rejection.ensures_8_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:415:9-415:79`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `8_3`
- Statement hash: `f59bcc23adb69234`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_8_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 415
  startColumn := 9
  endLine := 415
  endColumn := 79
  assertId := "8_3"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "f59bcc23adb69234"
}
@[vrml_obligation] theorem ensures_8_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (then_4_assume_18 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_4_assume_19 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (branch_5 : (¬ reclaim_plan.edges_in_range_spec n edges)) :
    (reclaim_plan.EDGE_OUT_OF_RANGE = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_8_3

-- vrml:begin reclaim_plan.first_rejection.ensures_8_4 1a5907bd7bc78399
/--
Generated VC `reclaim_plan.first_rejection.ensures_8_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:416:9-416:79`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `8_4`
- Statement hash: `1a5907bd7bc78399`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_8_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 416
  startColumn := 9
  endLine := 416
  endColumn := 79
  assertId := "8_4"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "1a5907bd7bc78399"
}
@[vrml_obligation] theorem ensures_8_4
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (then_4_assume_18 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_4_assume_19 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (branch_5 : (¬ reclaim_plan.edges_in_range_spec n edges)) :
    (reclaim_plan.EDGE_OUT_OF_RANGE = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_8_4

-- vrml:begin reclaim_plan.first_rejection.ensures_8_5 240365fe8a2af42c
/--
Generated VC `reclaim_plan.first_rejection.ensures_8_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:417:9-417:100`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `8_5`
- Statement hash: `240365fe8a2af42c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_8_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 417
  startColumn := 9
  endLine := 417
  endColumn := 100
  assertId := "8_5"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "240365fe8a2af42c"
}
@[vrml_obligation] theorem ensures_8_5
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (then_4_assume_18 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_4_assume_19 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (branch_5 : (¬ reclaim_plan.edges_in_range_spec n edges)) :
    (reclaim_plan.EDGE_OUT_OF_RANGE = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_8_5

-- vrml:begin reclaim_plan.first_rejection.ensures_8_6 954963883644827d
/--
Generated VC `reclaim_plan.first_rejection.ensures_8_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:418:9-418:51`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `8_6`
- Statement hash: `954963883644827d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_8_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 418
  startColumn := 9
  endLine := 418
  endColumn := 51
  assertId := "8_6"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "954963883644827d"
}
@[vrml_obligation] theorem ensures_8_6
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (then_4_assume_18 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_4_assume_19 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (branch_5 : (¬ reclaim_plan.edges_in_range_spec n edges)) :
    reclaim_plan.EDGE_OUT_OF_RANGE ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_8_6

-- vrml:begin reclaim_plan.first_rejection.call_requires_9 68e5f76e25a6a107
/--
Generated VC `reclaim_plan.first_rejection.call_requires_9`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:432:9-432:45`
- Rust/SST construct: call protected_closed
- AssertId: `9`
- Statement hash: `68e5f76e25a6a107`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def call_requires_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 432
  startColumn := 9
  endLine := 432
  endColumn := 45
  assertId := "9"
  functionName := "reclaim_plan.first_rejection"
  kind := "call_requires"
  statementHash := "68e5f76e25a6a107"
}
@[vrml_obligation] theorem call_requires_9
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (then_4_assume_18 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_4_assume_19 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_5_assume_20 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (then_5_assume_21 : (¬ reclaim_plan.edges_in_range_spec n edges) → False) :
    reclaim_plan.edges_in_range_spec (Vermilion.Seq.len reclaimable) edges := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.call_requires_9

-- vrml:begin reclaim_plan.first_rejection.ensures_10_0 3c4bb87b00409b80
/--
Generated VC `reclaim_plan.first_rejection.ensures_10_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:412:9-412:87`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `10_0`
- Statement hash: `3c4bb87b00409b80`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_10_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 412
  startColumn := 9
  endLine := 412
  endColumn := 87
  assertId := "10_0"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "3c4bb87b00409b80"
}
@[vrml_obligation] theorem ensures_10_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (then_4_assume_18 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_4_assume_19 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_5_assume_20 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (then_5_assume_21 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (call_protected_closed_ensures_0 : tmp__3 ↔ reclaim_plan.protected_closed_spec edges reclaimable)
    (branch_6 : (¬ tmp__3)) :
    (reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_10_0

-- vrml:begin reclaim_plan.first_rejection.ensures_10_1 c45754db856cd858
/--
Generated VC `reclaim_plan.first_rejection.ensures_10_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:413:9-413:62`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `10_1`
- Statement hash: `c45754db856cd858`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_10_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 413
  startColumn := 9
  endLine := 413
  endColumn := 62
  assertId := "10_1"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "c45754db856cd858"
}
@[vrml_obligation] theorem ensures_10_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (then_4_assume_18 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_4_assume_19 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_5_assume_20 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (then_5_assume_21 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (call_protected_closed_ensures_0 : tmp__3 ↔ reclaim_plan.protected_closed_spec edges reclaimable)
    (branch_6 : (¬ tmp__3)) :
    (reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_10_1

-- vrml:begin reclaim_plan.first_rejection.ensures_10_2 b5966780f3db1afa
/--
Generated VC `reclaim_plan.first_rejection.ensures_10_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:414:9-414:104`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `10_2`
- Statement hash: `b5966780f3db1afa`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_10_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 414
  startColumn := 9
  endLine := 414
  endColumn := 104
  assertId := "10_2"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "b5966780f3db1afa"
}
@[vrml_obligation] theorem ensures_10_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (then_4_assume_18 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_4_assume_19 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_5_assume_20 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (then_5_assume_21 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (call_protected_closed_ensures_0 : tmp__3 ↔ reclaim_plan.protected_closed_spec edges reclaimable)
    (branch_6 : (¬ tmp__3)) :
    (reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_10_2

-- vrml:begin reclaim_plan.first_rejection.ensures_10_3 003b4b9d5de7c58d
/--
Generated VC `reclaim_plan.first_rejection.ensures_10_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:415:9-415:79`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `10_3`
- Statement hash: `003b4b9d5de7c58d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_10_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 415
  startColumn := 9
  endLine := 415
  endColumn := 79
  assertId := "10_3"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "003b4b9d5de7c58d"
}
@[vrml_obligation] theorem ensures_10_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (then_4_assume_18 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_4_assume_19 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_5_assume_20 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (then_5_assume_21 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (call_protected_closed_ensures_0 : tmp__3 ↔ reclaim_plan.protected_closed_spec edges reclaimable)
    (branch_6 : (¬ tmp__3)) :
    (reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_10_3

-- vrml:begin reclaim_plan.first_rejection.ensures_10_4 50d78e5dc12fff5c
/--
Generated VC `reclaim_plan.first_rejection.ensures_10_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:416:9-416:79`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `10_4`
- Statement hash: `50d78e5dc12fff5c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_10_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 416
  startColumn := 9
  endLine := 416
  endColumn := 79
  assertId := "10_4"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "50d78e5dc12fff5c"
}
@[vrml_obligation] theorem ensures_10_4
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (then_4_assume_18 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_4_assume_19 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_5_assume_20 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (then_5_assume_21 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (call_protected_closed_ensures_0 : tmp__3 ↔ reclaim_plan.protected_closed_spec edges reclaimable)
    (branch_6 : (¬ tmp__3)) :
    (reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_10_4

-- vrml:begin reclaim_plan.first_rejection.ensures_10_5 7cdd9ee1a4adea27
/--
Generated VC `reclaim_plan.first_rejection.ensures_10_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:417:9-417:100`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `10_5`
- Statement hash: `7cdd9ee1a4adea27`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_10_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 417
  startColumn := 9
  endLine := 417
  endColumn := 100
  assertId := "10_5"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "7cdd9ee1a4adea27"
}
@[vrml_obligation] theorem ensures_10_5
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (then_4_assume_18 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_4_assume_19 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_5_assume_20 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (then_5_assume_21 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (call_protected_closed_ensures_0 : tmp__3 ↔ reclaim_plan.protected_closed_spec edges reclaimable)
    (branch_6 : (¬ tmp__3)) :
    (reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_10_5

-- vrml:begin reclaim_plan.first_rejection.ensures_10_6 5851f95aa87daafc
/--
Generated VC `reclaim_plan.first_rejection.ensures_10_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:418:9-418:51`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `10_6`
- Statement hash: `5851f95aa87daafc`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_10_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 418
  startColumn := 9
  endLine := 418
  endColumn := 51
  assertId := "10_6"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "5851f95aa87daafc"
}
@[vrml_obligation] theorem ensures_10_6
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (then_4_assume_18 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_4_assume_19 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_5_assume_20 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (then_5_assume_21 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (call_protected_closed_ensures_0 : tmp__3 ↔ reclaim_plan.protected_closed_spec edges reclaimable)
    (branch_6 : (¬ tmp__3)) :
    reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_10_6

-- vrml:begin reclaim_plan.first_rejection.ensures_11_0 08bbc038efab296b
/--
Generated VC `reclaim_plan.first_rejection.ensures_11_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:412:9-412:87`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `11_0`
- Statement hash: `08bbc038efab296b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_11_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 412
  startColumn := 9
  endLine := 412
  endColumn := 87
  assertId := "11_0"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "08bbc038efab296b"
}
@[vrml_obligation] theorem ensures_11_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (then_4_assume_18 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_4_assume_19 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_5_assume_20 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (then_5_assume_21 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (call_protected_closed_ensures_0 : tmp__3 ↔ reclaim_plan.protected_closed_spec edges reclaimable)
    (then_6_assume_23 : (¬ tmp__3) → False)
    (then_6_assume_24 : (¬ tmp__3) → False) :
    (reclaim_plan.PLANNED = reclaim_plan.PLANNED) ↔ reclaim_plan.admissible_spec n edges roots reclaimable := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_11_0

-- vrml:begin reclaim_plan.first_rejection.ensures_11_1 0f38c02fe0335f87
/--
Generated VC `reclaim_plan.first_rejection.ensures_11_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:413:9-413:62`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `11_1`
- Statement hash: `0f38c02fe0335f87`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_11_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 413
  startColumn := 9
  endLine := 413
  endColumn := 62
  assertId := "11_1"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "0f38c02fe0335f87"
}
@[vrml_obligation] theorem ensures_11_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (then_4_assume_18 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_4_assume_19 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_5_assume_20 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (then_5_assume_21 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (call_protected_closed_ensures_0 : tmp__3 ↔ reclaim_plan.protected_closed_spec edges reclaimable)
    (then_6_assume_23 : (¬ tmp__3) → False)
    (then_6_assume_24 : (¬ tmp__3) → False) :
    (reclaim_plan.PLANNED = reclaim_plan.LENGTH_MISMATCH) → (¬ (Vermilion.Seq.len reclaimable = n)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_11_1

-- vrml:begin reclaim_plan.first_rejection.ensures_11_2 c27bd21c6f5f6681
/--
Generated VC `reclaim_plan.first_rejection.ensures_11_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:414:9-414:104`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `11_2`
- Statement hash: `c27bd21c6f5f6681`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_11_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 414
  startColumn := 9
  endLine := 414
  endColumn := 104
  assertId := "11_2"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "c27bd21c6f5f6681"
}
@[vrml_obligation] theorem ensures_11_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (then_4_assume_18 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_4_assume_19 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_5_assume_20 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (then_5_assume_21 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (call_protected_closed_ensures_0 : tmp__3 ↔ reclaim_plan.protected_closed_spec edges reclaimable)
    (then_6_assume_23 : (¬ tmp__3) → False)
    (then_6_assume_24 : (¬ tmp__3) → False) :
    (reclaim_plan.PLANNED = reclaim_plan.TOO_LARGE) → (((n > reclaim_plan.MAX_NODES) ∨ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)) ∨ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_11_2

-- vrml:begin reclaim_plan.first_rejection.ensures_11_3 86e1249b3b00c4b4
/--
Generated VC `reclaim_plan.first_rejection.ensures_11_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:415:9-415:79`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `11_3`
- Statement hash: `86e1249b3b00c4b4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_11_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 415
  startColumn := 9
  endLine := 415
  endColumn := 79
  assertId := "11_3"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "86e1249b3b00c4b4"
}
@[vrml_obligation] theorem ensures_11_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (then_4_assume_18 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_4_assume_19 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_5_assume_20 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (then_5_assume_21 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (call_protected_closed_ensures_0 : tmp__3 ↔ reclaim_plan.protected_closed_spec edges reclaimable)
    (then_6_assume_23 : (¬ tmp__3) → False)
    (then_6_assume_24 : (¬ tmp__3) → False) :
    (reclaim_plan.PLANNED = reclaim_plan.ROOT_OUT_OF_RANGE) → (¬ reclaim_plan.roots_in_range_spec n roots) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_11_3

-- vrml:begin reclaim_plan.first_rejection.ensures_11_4 2921cecb4f6cbe19
/--
Generated VC `reclaim_plan.first_rejection.ensures_11_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:416:9-416:79`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `11_4`
- Statement hash: `2921cecb4f6cbe19`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_11_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 416
  startColumn := 9
  endLine := 416
  endColumn := 79
  assertId := "11_4"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "2921cecb4f6cbe19"
}
@[vrml_obligation] theorem ensures_11_4
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (then_4_assume_18 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_4_assume_19 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_5_assume_20 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (then_5_assume_21 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (call_protected_closed_ensures_0 : tmp__3 ↔ reclaim_plan.protected_closed_spec edges reclaimable)
    (then_6_assume_23 : (¬ tmp__3) → False)
    (then_6_assume_24 : (¬ tmp__3) → False) :
    (reclaim_plan.PLANNED = reclaim_plan.EDGE_OUT_OF_RANGE) → (¬ reclaim_plan.edges_in_range_spec n edges) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_11_4

-- vrml:begin reclaim_plan.first_rejection.ensures_11_5 0ca12fb5ac20a1ac
/--
Generated VC `reclaim_plan.first_rejection.ensures_11_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:417:9-417:100`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `11_5`
- Statement hash: `0ca12fb5ac20a1ac`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_11_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 417
  startColumn := 9
  endLine := 417
  endColumn := 100
  assertId := "11_5"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "0ca12fb5ac20a1ac"
}
@[vrml_obligation] theorem ensures_11_5
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (then_4_assume_18 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_4_assume_19 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_5_assume_20 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (then_5_assume_21 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (call_protected_closed_ensures_0 : tmp__3 ↔ reclaim_plan.protected_closed_spec edges reclaimable)
    (then_6_assume_23 : (¬ tmp__3) → False)
    (then_6_assume_24 : (¬ tmp__3) → False) :
    (reclaim_plan.PLANNED = reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE) → (¬ reclaim_plan.protected_closed_spec edges reclaimable) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_11_5

-- vrml:begin reclaim_plan.first_rejection.ensures_11_6 eac2d9e89ea6de01
/--
Generated VC `reclaim_plan.first_rejection.ensures_11_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:418:9-418:51`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `11_6`
- Statement hash: `eac2d9e89ea6de01`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_11_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 418
  startColumn := 9
  endLine := 418
  endColumn := 51
  assertId := "11_6"
  functionName := "reclaim_plan.first_rejection"
  kind := "ensures"
  statementHash := "eac2d9e89ea6de01"
}
@[vrml_obligation] theorem ensures_11_6
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_0_assume_9 : (Vermilion.Seq.len reclaimable ≠ n) → False)
    (then_1_assume_10 : (n > reclaim_plan.MAX_NODES) → (tmp_ ↔ True))
    (else_1_assume_10 : (¬ (n > reclaim_plan.MAX_NODES)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_1_assume_11 : (¬ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_2_assume_13 : tmp_ → (tmp__2 ↔ True))
    (else_2_assume_13 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_2_assume_14 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_3_assume_16 : tmp__2 → False)
    (then_3_assume_17 : tmp__2 → False)
    (then_4_assume_18 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_4_assume_19 : (¬ reclaim_plan.roots_in_range_spec n roots) → False)
    (then_5_assume_20 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (then_5_assume_21 : (¬ reclaim_plan.edges_in_range_spec n edges) → False)
    (call_protected_closed_ensures_0 : tmp__3 ↔ reclaim_plan.protected_closed_spec edges reclaimable)
    (then_6_assume_23 : (¬ tmp__3) → False)
    (then_6_assume_24 : (¬ tmp__3) → False) :
    reclaim_plan.PLANNED ≤ reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.first_rejection.ensures_11_6

end reclaim_plan.first_rejection

