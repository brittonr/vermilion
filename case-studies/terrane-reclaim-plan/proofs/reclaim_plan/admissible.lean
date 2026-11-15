import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.admissible

-- vrml:begin reclaim_plan.admissible.ensures_3 7aaa61322093fd9b
/--
Generated VC `reclaim_plan.admissible.ensures_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:282:13-282:74`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3`
- Statement hash: `7aaa61322093fd9b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 282
  startColumn := 13
  endLine := 282
  endColumn := 74
  assertId := "3"
  functionName := "reclaim_plan.admissible"
  kind := "ensures"
  statementHash := "7aaa61322093fd9b"
}
@[vrml_obligation] theorem ensures_3
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
    (then_0_assume_8 : ((Vermilion.Seq.len reclaimable ≠ n) ∨ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ True))
    (else_0_assume_8 : (¬ ((Vermilion.Seq.len reclaimable ≠ n) ∨ (n > reclaim_plan.MAX_NODES))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_0_assume_9 : (¬ ((Vermilion.Seq.len reclaimable ≠ n) ∨ (n > reclaim_plan.MAX_NODES))) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_1_assume_11 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_11 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_1_assume_12 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (branch_2 : tmp__2) :
    False ↔ reclaim_plan.admissible_spec n edges roots reclaimable := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.admissible.ensures_3

-- vrml:begin reclaim_plan.admissible.ensures_6 db08ee81e6c8842e
/--
Generated VC `reclaim_plan.admissible.ensures_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:282:13-282:74`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `6`
- Statement hash: `db08ee81e6c8842e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 282
  startColumn := 13
  endLine := 282
  endColumn := 74
  assertId := "6"
  functionName := "reclaim_plan.admissible"
  kind := "ensures"
  statementHash := "db08ee81e6c8842e"
}
@[vrml_obligation] theorem ensures_6
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
    (then_0_assume_8 : ((Vermilion.Seq.len reclaimable ≠ n) ∨ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ True))
    (else_0_assume_8 : (¬ ((Vermilion.Seq.len reclaimable ≠ n) ∨ (n > reclaim_plan.MAX_NODES))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_0_assume_9 : (¬ ((Vermilion.Seq.len reclaimable ≠ n) ∨ (n > reclaim_plan.MAX_NODES))) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_1_assume_11 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_11 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_1_assume_12 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_2_assume_14 : tmp__2 → False)
    (then_2_assume_15 : tmp__2 → False)
    (then_3_assume_16 : (¬ reclaim_plan.roots_in_range_spec n roots) → (tmp__3 ↔ True))
    (else_3_assume_16 : (¬ (¬ reclaim_plan.roots_in_range_spec n roots)) → (tmp__3 ↔ (¬ reclaim_plan.edges_in_range_spec n edges)))
    (branch_4 : tmp__3) :
    False ↔ reclaim_plan.admissible_spec n edges roots reclaimable := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.admissible.ensures_6

-- vrml:begin reclaim_plan.admissible.call_requires_7 0ad92eb559447db8
/--
Generated VC `reclaim_plan.admissible.call_requires_7`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:290:5-290:41`
- Rust/SST construct: call protected_closed
- AssertId: `7`
- Statement hash: `0ad92eb559447db8`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def call_requires_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 290
  startColumn := 5
  endLine := 290
  endColumn := 41
  assertId := "7"
  functionName := "reclaim_plan.admissible"
  kind := "call_requires"
  statementHash := "0ad92eb559447db8"
}
@[vrml_obligation] theorem call_requires_7
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
    (then_0_assume_8 : ((Vermilion.Seq.len reclaimable ≠ n) ∨ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ True))
    (else_0_assume_8 : (¬ ((Vermilion.Seq.len reclaimable ≠ n) ∨ (n > reclaim_plan.MAX_NODES))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_0_assume_9 : (¬ ((Vermilion.Seq.len reclaimable ≠ n) ∨ (n > reclaim_plan.MAX_NODES))) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_1_assume_11 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_11 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_1_assume_12 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_2_assume_14 : tmp__2 → False)
    (then_2_assume_15 : tmp__2 → False)
    (then_3_assume_16 : (¬ reclaim_plan.roots_in_range_spec n roots) → (tmp__3 ↔ True))
    (else_3_assume_16 : (¬ (¬ reclaim_plan.roots_in_range_spec n roots)) → (tmp__3 ↔ (¬ reclaim_plan.edges_in_range_spec n edges)))
    (then_4_assume_18 : tmp__3 → False)
    (then_4_assume_19 : tmp__3 → False) :
    reclaim_plan.edges_in_range_spec (Vermilion.Seq.len reclaimable) edges := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.admissible.call_requires_7

-- vrml:begin reclaim_plan.admissible.ensures_8 1e96258f2e58dd12
/--
Generated VC `reclaim_plan.admissible.ensures_8`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:282:13-282:74`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `8`
- Statement hash: `1e96258f2e58dd12`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 282
  startColumn := 13
  endLine := 282
  endColumn := 74
  assertId := "8"
  functionName := "reclaim_plan.admissible"
  kind := "ensures"
  statementHash := "1e96258f2e58dd12"
}
@[vrml_obligation] theorem ensures_8
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : Prop)
    (tmp__4 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (then_0_assume_8 : ((Vermilion.Seq.len reclaimable ≠ n) ∨ (n > reclaim_plan.MAX_NODES)) → (tmp_ ↔ True))
    (else_0_assume_8 : (¬ ((Vermilion.Seq.len reclaimable ≠ n) ∨ (n > reclaim_plan.MAX_NODES))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (else_0_assume_9 : (¬ ((Vermilion.Seq.len reclaimable ≠ n) ∨ (n > reclaim_plan.MAX_NODES))) → (tmp_ ↔ (Vermilion.Seq.len edges > reclaim_plan.MAX_EDGES)))
    (then_1_assume_11 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_11 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (else_1_assume_12 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len roots > reclaim_plan.MAX_ROOTS)))
    (then_2_assume_14 : tmp__2 → False)
    (then_2_assume_15 : tmp__2 → False)
    (then_3_assume_16 : (¬ reclaim_plan.roots_in_range_spec n roots) → (tmp__3 ↔ True))
    (else_3_assume_16 : (¬ (¬ reclaim_plan.roots_in_range_spec n roots)) → (tmp__3 ↔ (¬ reclaim_plan.edges_in_range_spec n edges)))
    (then_4_assume_18 : tmp__3 → False)
    (then_4_assume_19 : tmp__3 → False)
    (call_protected_closed_ensures_0 : tmp__4 ↔ reclaim_plan.protected_closed_spec edges reclaimable) :
    tmp__4 ↔ reclaim_plan.admissible_spec n edges roots reclaimable := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.admissible.ensures_8

end reclaim_plan.admissible

