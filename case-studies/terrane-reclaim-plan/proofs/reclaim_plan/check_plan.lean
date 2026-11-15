import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.check_plan

-- vrml:begin reclaim_plan.check_plan.ensures_3 7b2e7230d426bb33
/--
Generated VC `reclaim_plan.check_plan.ensures_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:299:13-299:100`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3`
- Statement hash: `7b2e7230d426bb33`
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
  statementHash := "7b2e7230d426bb33"
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
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (requires_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (branch_2 : tmp__2) :
    False ↔ reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.ensures_3

-- vrml:begin reclaim_plan.check_plan.invariant_entry_0_0 29b00394d44fe8b3
/--
Generated VC `reclaim_plan.check_plan.invariant_entry_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:306:19-306:40`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `29b00394d44fe8b3`
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
  statementHash := "29b00394d44fe8b3"
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
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (requires_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (then_2_assume_15 : tmp__2 → False)
    (then_2_assume_16 : tmp__2 → False) :
    (0 ≤ 0) ∧ (0 ≤ Vermilion.Seq.len roots) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.invariant_entry_0_0

-- vrml:begin reclaim_plan.check_plan.invariant_entry_0_1 cd341fe1a535f76d
/--
Generated VC `reclaim_plan.check_plan.invariant_entry_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:306:42-306:79`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `cd341fe1a535f76d`
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
  statementHash := "cd341fe1a535f76d"
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
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (requires_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (then_2_assume_15 : tmp__2 → False)
    (then_2_assume_16 : tmp__2 → False) :
    reclaim_plan.roots_in_range_spec n roots := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.invariant_entry_0_1

-- vrml:begin reclaim_plan.check_plan.invariant_entry_0_2 1c6a2979432e5682
/--
Generated VC `reclaim_plan.check_plan.invariant_entry_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:306:81-306:101`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_2`
- Statement hash: `1c6a2979432e5682`
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
  statementHash := "1c6a2979432e5682"
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
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (requires_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (then_2_assume_15 : tmp__2 → False)
    (then_2_assume_16 : tmp__2 → False) :
    Vermilion.Seq.len retained = n := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.invariant_entry_0_2

-- vrml:begin reclaim_plan.check_plan.invariant_entry_0_3 dee8b804c7e00463
/--
Generated VC `reclaim_plan.check_plan.invariant_entry_0_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:307:13-307:92`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_3`
- Statement hash: `dee8b804c7e00463`
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
  statementHash := "dee8b804c7e00463"
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
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (requires_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (then_2_assume_15 : tmp__2 → False)
    (then_2_assume_16 : tmp__2 → False) :
    (∀ (j : Int), (((0 ≤ j) ∧ (j < 0)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.invariant_entry_0_3

-- vrml:begin reclaim_plan.check_plan.call_requires_5 6a436542987054e4
/--
Generated VC `reclaim_plan.check_plan.call_requires_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:310:22-310:30`
- Rust/SST construct: call vec_index
- AssertId: `5`
- Statement hash: `6a436542987054e4`
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
  statementHash := "6a436542987054e4"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_0_iteration_11 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_12 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_iteration_13 : Vermilion.Seq.len retained = n)
    (loop_0_iteration_14 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_iteration_15 : r < Vermilion.Seq.len roots) :
    r < Vermilion.Seq.len roots := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.call_requires_5

-- vrml:begin reclaim_plan.check_plan.call_requires_6 25b817712f50ee90
/--
Generated VC `reclaim_plan.check_plan.call_requires_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:310:13-310:31`
- Rust/SST construct: call vec_index
- AssertId: `6`
- Statement hash: `25b817712f50ee90`
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
  statementHash := "25b817712f50ee90"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_0_iteration_11 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_12 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_iteration_13 : Vermilion.Seq.len retained = n)
    (loop_0_iteration_14 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_iteration_15 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_ensures_1 : tmp__3 = Vermilion.Seq.index roots r) :
    tmp__3 < Vermilion.Seq.len retained := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.call_requires_6

-- vrml:begin reclaim_plan.check_plan.ensures_7 088c7ad73b2c1aeb
/--
Generated VC `reclaim_plan.check_plan.ensures_7`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:299:13-299:100`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `7`
- Statement hash: `088c7ad73b2c1aeb`
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
  statementHash := "088c7ad73b2c1aeb"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_0_iteration_11 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_12 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_iteration_13 : Vermilion.Seq.len retained = n)
    (loop_0_iteration_14 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_iteration_15 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_ensures_1 : tmp__3 = Vermilion.Seq.index roots r)
    (call_vec_index_1_ensures_0 : tmp__4 ↔ Vermilion.Seq.index retained tmp__3)
    (branch_3 : (¬ tmp__4)) :
    False ↔ reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.ensures_7

-- vrml:begin reclaim_plan.check_plan.assert_8 baed5af0848db9fb
/--
Generated VC `reclaim_plan.check_plan.assert_8`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:313:9-313:15`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `8`
- Statement hash: `baed5af0848db9fb`
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
  statementHash := "baed5af0848db9fb"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_0_iteration_11 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_12 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_iteration_13 : Vermilion.Seq.len retained = n)
    (loop_0_iteration_14 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_iteration_15 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_ensures_1 : tmp__3 = Vermilion.Seq.index roots r)
    (call_vec_index_1_ensures_0 : tmp__4 ↔ Vermilion.Seq.index retained tmp__3)
    (then_3_assume_20 : (¬ tmp__4) → False)
    (then_3_assume_21 : (¬ tmp__4) → False) :
    Vermilion.inUnsignedRange 64 (r + 1) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.assert_8

-- vrml:begin reclaim_plan.check_plan.invariant_preserve_0_0 bcc4c7dc09f334bc
/--
Generated VC `reclaim_plan.check_plan.invariant_preserve_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:306:19-306:40`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `bcc4c7dc09f334bc`
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
  statementHash := "bcc4c7dc09f334bc"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_0_iteration_11 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_12 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_iteration_13 : Vermilion.Seq.len retained = n)
    (loop_0_iteration_14 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_iteration_15 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_ensures_1 : tmp__3 = Vermilion.Seq.index roots r)
    (call_vec_index_1_ensures_0 : tmp__4 ↔ Vermilion.Seq.index retained tmp__3)
    (then_3_assume_20 : (¬ tmp__4) → False)
    (then_3_assume_21 : (¬ tmp__4) → False)
    (assert_8 : Vermilion.inUnsignedRange 64 (r + 1)) :
    (0 ≤ ((r + 1) % 18446744073709551616)) ∧ (((r + 1) % 18446744073709551616) ≤ Vermilion.Seq.len roots) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.invariant_preserve_0_0

-- vrml:begin reclaim_plan.check_plan.invariant_preserve_0_1 296c48f4ab1a2ff6
/--
Generated VC `reclaim_plan.check_plan.invariant_preserve_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:306:42-306:79`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `296c48f4ab1a2ff6`
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
  statementHash := "296c48f4ab1a2ff6"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_0_iteration_11 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_12 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_iteration_13 : Vermilion.Seq.len retained = n)
    (loop_0_iteration_14 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_iteration_15 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_ensures_1 : tmp__3 = Vermilion.Seq.index roots r)
    (call_vec_index_1_ensures_0 : tmp__4 ↔ Vermilion.Seq.index retained tmp__3)
    (then_3_assume_20 : (¬ tmp__4) → False)
    (then_3_assume_21 : (¬ tmp__4) → False)
    (assert_8 : Vermilion.inUnsignedRange 64 (r + 1)) :
    reclaim_plan.roots_in_range_spec n roots := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.invariant_preserve_0_1

-- vrml:begin reclaim_plan.check_plan.invariant_preserve_0_2 5acbfb4ca50a3541
/--
Generated VC `reclaim_plan.check_plan.invariant_preserve_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:306:81-306:101`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_2`
- Statement hash: `5acbfb4ca50a3541`
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
  statementHash := "5acbfb4ca50a3541"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_0_iteration_11 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_12 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_iteration_13 : Vermilion.Seq.len retained = n)
    (loop_0_iteration_14 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_iteration_15 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_ensures_1 : tmp__3 = Vermilion.Seq.index roots r)
    (call_vec_index_1_ensures_0 : tmp__4 ↔ Vermilion.Seq.index retained tmp__3)
    (then_3_assume_20 : (¬ tmp__4) → False)
    (then_3_assume_21 : (¬ tmp__4) → False)
    (assert_8 : Vermilion.inUnsignedRange 64 (r + 1)) :
    Vermilion.Seq.len retained = n := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.invariant_preserve_0_2

-- vrml:begin reclaim_plan.check_plan.invariant_preserve_0_3 86b8f3e2788293d3
/--
Generated VC `reclaim_plan.check_plan.invariant_preserve_0_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:307:13-307:92`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_3`
- Statement hash: `86b8f3e2788293d3`
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
  statementHash := "86b8f3e2788293d3"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_0_iteration_11 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_12 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_iteration_13 : Vermilion.Seq.len retained = n)
    (loop_0_iteration_14 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_iteration_15 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_ensures_1 : tmp__3 = Vermilion.Seq.index roots r)
    (call_vec_index_1_ensures_0 : tmp__4 ↔ Vermilion.Seq.index retained tmp__3)
    (then_3_assume_20 : (¬ tmp__4) → False)
    (then_3_assume_21 : (¬ tmp__4) → False)
    (assert_8 : Vermilion.inUnsignedRange 64 (r + 1)) :
    (∀ (j : Int), (((0 ≤ j) ∧ (j < ((r + 1) % 18446744073709551616))) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.check_plan.invariant_preserve_0_3

-- vrml:begin reclaim_plan.check_plan.assert_0_decreases 52d039971f14dce8
/--
Generated VC `reclaim_plan.check_plan.assert_0_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:308:19-308:34`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `52d039971f14dce8`
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
  statementHash := "52d039971f14dce8"
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
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_0_iteration_11 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_iteration_12 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_iteration_13 : Vermilion.Seq.len retained = n)
    (loop_0_iteration_14 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_iteration_15 : r < Vermilion.Seq.len roots)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_ensures_1 : tmp__3 = Vermilion.Seq.index roots r)
    (call_vec_index_1_ensures_0 : tmp__4 ↔ Vermilion.Seq.index retained tmp__3)
    (then_3_assume_20 : (¬ tmp__4) → False)
    (then_3_assume_21 : (¬ tmp__4) → False)
    (assert_8 : Vermilion.inUnsignedRange 64 (r + 1)) :
    ((0 ≤ (Vermilion.Seq.len roots - ((r + 1) % 18446744073709551616))) ∧ ((Vermilion.Seq.len roots - ((r + 1) % 18446744073709551616)) < (Vermilion.Seq.len roots - r))) ∨ (((Vermilion.Seq.len roots - ((r + 1) % 18446744073709551616)) = (Vermilion.Seq.len roots - r)) ∧ False) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.assert_0_decreases

-- vrml:begin reclaim_plan.check_plan.invariant_entry_1_0 af826453e45e31d4
/--
Generated VC `reclaim_plan.check_plan.invariant_entry_1_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:317:19-317:40`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_0`
- Statement hash: `af826453e45e31d4`
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
  statementHash := "af826453e45e31d4"
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
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (requires_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (then_2_assume_15 : tmp__2 → False)
    (then_2_assume_16 : tmp__2 → False)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 r)
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_exit_3 : Vermilion.Seq.len retained = n)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots))) :
    (0 ≤ 0) ∧ (0 ≤ Vermilion.Seq.len edges) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.invariant_entry_1_0

-- vrml:begin reclaim_plan.check_plan.invariant_entry_1_1 5730abd61d944c1f
/--
Generated VC `reclaim_plan.check_plan.invariant_entry_1_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:317:42-317:79`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_1`
- Statement hash: `5730abd61d944c1f`
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
  statementHash := "5730abd61d944c1f"
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
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (requires_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (then_2_assume_15 : tmp__2 → False)
    (then_2_assume_16 : tmp__2 → False)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 r)
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_exit_3 : Vermilion.Seq.len retained = n)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots))) :
    reclaim_plan.edges_in_range_spec n edges := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.invariant_entry_1_1

-- vrml:begin reclaim_plan.check_plan.invariant_entry_1_2 faec537a62134188
/--
Generated VC `reclaim_plan.check_plan.invariant_entry_1_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:317:81-317:101`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_2`
- Statement hash: `faec537a62134188`
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
  statementHash := "faec537a62134188"
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
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (requires_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (then_2_assume_15 : tmp__2 → False)
    (then_2_assume_16 : tmp__2 → False)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 r)
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_exit_3 : Vermilion.Seq.len retained = n)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots))) :
    Vermilion.Seq.len retained = n := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.invariant_entry_1_2

-- vrml:begin reclaim_plan.check_plan.invariant_entry_1_3 745e5a406427812b
/--
Generated VC `reclaim_plan.check_plan.invariant_entry_1_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:318:13-319:82`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_3`
- Statement hash: `745e5a406427812b`
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
  statementHash := "745e5a406427812b"
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
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (requires_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (then_2_assume_15 : tmp__2 → False)
    (then_2_assume_16 : tmp__2 → False)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 r)
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_exit_3 : Vermilion.Seq.len retained = n)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots))) :
    (∀ (j : Int), (((0 ≤ j) ∧ (j < 0)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.invariant_entry_1_3

-- vrml:begin reclaim_plan.check_plan.call_requires_10 0688619a84073ef9
/--
Generated VC `reclaim_plan.check_plan.call_requires_10`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:322:22-322:30`
- Rust/SST construct: call vec_index
- AssertId: `10`
- Statement hash: `0688619a84073ef9`
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
  statementHash := "0688619a84073ef9"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_1_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_12 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_iteration_13 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_iteration_14 : Vermilion.Seq.len retained = n)
    (loop_1_iteration_15 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_iteration_16 : i < Vermilion.Seq.len edges) :
    i < Vermilion.Seq.len edges := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.call_requires_10

-- vrml:begin reclaim_plan.check_plan.call_requires_11 7a100d073e2655bb
/--
Generated VC `reclaim_plan.check_plan.call_requires_11`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:323:12-323:23`
- Rust/SST construct: call vec_index
- AssertId: `11`
- Statement hash: `7a100d073e2655bb`
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
  statementHash := "7a100d073e2655bb"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_1_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_12 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_iteration_13 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_iteration_14 : Vermilion.Seq.len retained = n)
    (loop_1_iteration_15 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_iteration_16 : i < Vermilion.Seq.len edges)
    (call_vec_index_2_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__5))
    (call_vec_index_2_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__5))
    (call_vec_index_2_ensures_2 : tmp__5 = Vermilion.Seq.index edges i) :
    vermilion.tuple_2.get_tuple_2__0 tmp__5 < Vermilion.Seq.len retained := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.call_requires_11

-- vrml:begin reclaim_plan.check_plan.call_requires_12 7080d67eac759739
/--
Generated VC `reclaim_plan.check_plan.call_requires_12`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:323:28-323:39`
- Rust/SST construct: call vec_index
- AssertId: `12`
- Statement hash: `7080d67eac759739`
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
  statementHash := "7080d67eac759739"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_1_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_12 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_iteration_13 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_iteration_14 : Vermilion.Seq.len retained = n)
    (loop_1_iteration_15 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_iteration_16 : i < Vermilion.Seq.len edges)
    (call_vec_index_2_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__5))
    (call_vec_index_2_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__5))
    (call_vec_index_2_ensures_2 : tmp__5 = Vermilion.Seq.index edges i)
    (call_vec_index_3_ensures_0 : tmp__6 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 tmp__5))
    (branch_4 : tmp__6) :
    vermilion.tuple_2.get_tuple_2__1 tmp__5 < Vermilion.Seq.len retained := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.call_requires_12

-- vrml:begin reclaim_plan.check_plan.ensures_13 f79eb0b75dda410f
/--
Generated VC `reclaim_plan.check_plan.ensures_13`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:299:13-299:100`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `13`
- Statement hash: `f79eb0b75dda410f`
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
  statementHash := "f79eb0b75dda410f"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_1_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_12 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_iteration_13 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_iteration_14 : Vermilion.Seq.len retained = n)
    (loop_1_iteration_15 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_iteration_16 : i < Vermilion.Seq.len edges)
    (call_vec_index_2_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__5))
    (call_vec_index_2_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__5))
    (call_vec_index_2_ensures_2 : tmp__5 = Vermilion.Seq.index edges i)
    (call_vec_index_3_ensures_0 : tmp__6 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 tmp__5))
    (then_4_call_vec_index_4_ensures_0 : tmp__6 → (tmp__7 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 tmp__5)))
    (then_4_assume_23 : tmp__6 → (tmp__8 ↔ (¬ tmp__7)))
    (else_4_assume_22 : (¬ tmp__6) → (tmp__8 ↔ False))
    (branch_5 : tmp__8) :
    False ↔ reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.ensures_13

-- vrml:begin reclaim_plan.check_plan.assert_14 8a39f7f83e6be4d1
/--
Generated VC `reclaim_plan.check_plan.assert_14`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:326:9-326:15`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `14`
- Statement hash: `8a39f7f83e6be4d1`
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
  statementHash := "8a39f7f83e6be4d1"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_1_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_12 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_iteration_13 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_iteration_14 : Vermilion.Seq.len retained = n)
    (loop_1_iteration_15 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_iteration_16 : i < Vermilion.Seq.len edges)
    (call_vec_index_2_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__5))
    (call_vec_index_2_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__5))
    (call_vec_index_2_ensures_2 : tmp__5 = Vermilion.Seq.index edges i)
    (call_vec_index_3_ensures_0 : tmp__6 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 tmp__5))
    (then_4_call_vec_index_4_ensures_0 : tmp__6 → (tmp__7 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 tmp__5)))
    (then_4_assume_23 : tmp__6 → (tmp__8 ↔ (¬ tmp__7)))
    (else_4_assume_22 : (¬ tmp__6) → (tmp__8 ↔ False))
    (then_5_assume_25 : tmp__8 → False)
    (then_5_assume_26 : tmp__8 → False) :
    Vermilion.inUnsignedRange 64 (i + 1) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.assert_14

-- vrml:begin reclaim_plan.check_plan.invariant_preserve_1_0 27d31f82d23339c4
/--
Generated VC `reclaim_plan.check_plan.invariant_preserve_1_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:317:19-317:40`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_0`
- Statement hash: `27d31f82d23339c4`
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
  statementHash := "27d31f82d23339c4"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_1_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_12 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_iteration_13 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_iteration_14 : Vermilion.Seq.len retained = n)
    (loop_1_iteration_15 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_iteration_16 : i < Vermilion.Seq.len edges)
    (call_vec_index_2_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__5))
    (call_vec_index_2_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__5))
    (call_vec_index_2_ensures_2 : tmp__5 = Vermilion.Seq.index edges i)
    (call_vec_index_3_ensures_0 : tmp__6 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 tmp__5))
    (then_4_call_vec_index_4_ensures_0 : tmp__6 → (tmp__7 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 tmp__5)))
    (then_4_assume_23 : tmp__6 → (tmp__8 ↔ (¬ tmp__7)))
    (else_4_assume_22 : (¬ tmp__6) → (tmp__8 ↔ False))
    (then_5_assume_25 : tmp__8 → False)
    (then_5_assume_26 : tmp__8 → False)
    (assert_14 : Vermilion.inUnsignedRange 64 (i + 1)) :
    (0 ≤ ((i + 1) % 18446744073709551616)) ∧ (((i + 1) % 18446744073709551616) ≤ Vermilion.Seq.len edges) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.invariant_preserve_1_0

-- vrml:begin reclaim_plan.check_plan.invariant_preserve_1_1 dd5401f79a7b719f
/--
Generated VC `reclaim_plan.check_plan.invariant_preserve_1_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:317:42-317:79`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_1`
- Statement hash: `dd5401f79a7b719f`
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
  statementHash := "dd5401f79a7b719f"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_1_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_12 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_iteration_13 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_iteration_14 : Vermilion.Seq.len retained = n)
    (loop_1_iteration_15 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_iteration_16 : i < Vermilion.Seq.len edges)
    (call_vec_index_2_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__5))
    (call_vec_index_2_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__5))
    (call_vec_index_2_ensures_2 : tmp__5 = Vermilion.Seq.index edges i)
    (call_vec_index_3_ensures_0 : tmp__6 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 tmp__5))
    (then_4_call_vec_index_4_ensures_0 : tmp__6 → (tmp__7 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 tmp__5)))
    (then_4_assume_23 : tmp__6 → (tmp__8 ↔ (¬ tmp__7)))
    (else_4_assume_22 : (¬ tmp__6) → (tmp__8 ↔ False))
    (then_5_assume_25 : tmp__8 → False)
    (then_5_assume_26 : tmp__8 → False)
    (assert_14 : Vermilion.inUnsignedRange 64 (i + 1)) :
    reclaim_plan.edges_in_range_spec n edges := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.invariant_preserve_1_1

-- vrml:begin reclaim_plan.check_plan.invariant_preserve_1_2 ca1a7ef5d9a93b08
/--
Generated VC `reclaim_plan.check_plan.invariant_preserve_1_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:317:81-317:101`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_2`
- Statement hash: `ca1a7ef5d9a93b08`
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
  statementHash := "ca1a7ef5d9a93b08"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_1_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_12 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_iteration_13 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_iteration_14 : Vermilion.Seq.len retained = n)
    (loop_1_iteration_15 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_iteration_16 : i < Vermilion.Seq.len edges)
    (call_vec_index_2_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__5))
    (call_vec_index_2_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__5))
    (call_vec_index_2_ensures_2 : tmp__5 = Vermilion.Seq.index edges i)
    (call_vec_index_3_ensures_0 : tmp__6 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 tmp__5))
    (then_4_call_vec_index_4_ensures_0 : tmp__6 → (tmp__7 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 tmp__5)))
    (then_4_assume_23 : tmp__6 → (tmp__8 ↔ (¬ tmp__7)))
    (else_4_assume_22 : (¬ tmp__6) → (tmp__8 ↔ False))
    (then_5_assume_25 : tmp__8 → False)
    (then_5_assume_26 : tmp__8 → False)
    (assert_14 : Vermilion.inUnsignedRange 64 (i + 1)) :
    Vermilion.Seq.len retained = n := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.invariant_preserve_1_2

-- vrml:begin reclaim_plan.check_plan.invariant_preserve_1_3 36454fcae25694cd
/--
Generated VC `reclaim_plan.check_plan.invariant_preserve_1_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:318:13-319:82`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_3`
- Statement hash: `36454fcae25694cd`
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
  statementHash := "36454fcae25694cd"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_1_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_12 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_iteration_13 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_iteration_14 : Vermilion.Seq.len retained = n)
    (loop_1_iteration_15 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_iteration_16 : i < Vermilion.Seq.len edges)
    (call_vec_index_2_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__5))
    (call_vec_index_2_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__5))
    (call_vec_index_2_ensures_2 : tmp__5 = Vermilion.Seq.index edges i)
    (call_vec_index_3_ensures_0 : tmp__6 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 tmp__5))
    (then_4_call_vec_index_4_ensures_0 : tmp__6 → (tmp__7 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 tmp__5)))
    (then_4_assume_23 : tmp__6 → (tmp__8 ↔ (¬ tmp__7)))
    (else_4_assume_22 : (¬ tmp__6) → (tmp__8 ↔ False))
    (then_5_assume_25 : tmp__8 → False)
    (then_5_assume_26 : tmp__8 → False)
    (assert_14 : Vermilion.inUnsignedRange 64 (i + 1)) :
    (∀ (j : Int), (((0 ≤ j) ∧ (j < ((i + 1) % 18446744073709551616))) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.check_plan.invariant_preserve_1_3

-- vrml:begin reclaim_plan.check_plan.assert_1_decreases 7d6e2075a065edbb
/--
Generated VC `reclaim_plan.check_plan.assert_1_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:320:19-320:34`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `1_decreases`
- Statement hash: `7d6e2075a065edbb`
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
  statementHash := "7d6e2075a065edbb"
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
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_1_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_1_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_1_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_1_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_1_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 i)
    (loop_1_iteration_12 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_iteration_13 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_iteration_14 : Vermilion.Seq.len retained = n)
    (loop_1_iteration_15 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_iteration_16 : i < Vermilion.Seq.len edges)
    (call_vec_index_2_ensures_0 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 tmp__5))
    (call_vec_index_2_ensures_1 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 tmp__5))
    (call_vec_index_2_ensures_2 : tmp__5 = Vermilion.Seq.index edges i)
    (call_vec_index_3_ensures_0 : tmp__6 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 tmp__5))
    (then_4_call_vec_index_4_ensures_0 : tmp__6 → (tmp__7 ↔ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 tmp__5)))
    (then_4_assume_23 : tmp__6 → (tmp__8 ↔ (¬ tmp__7)))
    (else_4_assume_22 : (¬ tmp__6) → (tmp__8 ↔ False))
    (then_5_assume_25 : tmp__8 → False)
    (then_5_assume_26 : tmp__8 → False)
    (assert_14 : Vermilion.inUnsignedRange 64 (i + 1)) :
    ((0 ≤ (Vermilion.Seq.len edges - ((i + 1) % 18446744073709551616))) ∧ ((Vermilion.Seq.len edges - ((i + 1) % 18446744073709551616)) < (Vermilion.Seq.len edges - i))) ∨ (((Vermilion.Seq.len edges - ((i + 1) % 18446744073709551616)) = (Vermilion.Seq.len edges - i)) ∧ False) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.assert_1_decreases

-- vrml:begin reclaim_plan.check_plan.invariant_entry_2_0 e5f8f031fee21d4b
/--
Generated VC `reclaim_plan.check_plan.invariant_entry_2_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:330:19-330:30`
- Rust/SST construct: loop invariant on entry
- AssertId: `2_0`
- Statement hash: `e5f8f031fee21d4b`
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
  statementHash := "e5f8f031fee21d4b"
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
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (requires_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (then_2_assume_15 : tmp__2 → False)
    (then_2_assume_16 : tmp__2 → False)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 r)
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_exit_3 : Vermilion.Seq.len retained = n)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 i)
    (loop_1_exit_1 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_exit_2 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_exit_3 : Vermilion.Seq.len retained = n)
    (loop_1_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_exit_5 : (¬ (i < Vermilion.Seq.len edges))) :
    (0 ≤ 0) ∧ (0 ≤ n) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.invariant_entry_2_0

-- vrml:begin reclaim_plan.check_plan.invariant_entry_2_1 16fb63daba281c77
/--
Generated VC `reclaim_plan.check_plan.invariant_entry_2_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:330:32-330:53`
- Rust/SST construct: loop invariant on entry
- AssertId: `2_1`
- Statement hash: `16fb63daba281c77`
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
  statementHash := "16fb63daba281c77"
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
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (requires_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (then_2_assume_15 : tmp__2 → False)
    (then_2_assume_16 : tmp__2 → False)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 r)
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_exit_3 : Vermilion.Seq.len retained = n)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 i)
    (loop_1_exit_1 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_exit_2 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_exit_3 : Vermilion.Seq.len retained = n)
    (loop_1_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_exit_5 : (¬ (i < Vermilion.Seq.len edges))) :
    Vermilion.Seq.len candidate = n := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.invariant_entry_2_1

-- vrml:begin reclaim_plan.check_plan.invariant_entry_2_2 60964e9de3a65e84
/--
Generated VC `reclaim_plan.check_plan.invariant_entry_2_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:330:55-330:75`
- Rust/SST construct: loop invariant on entry
- AssertId: `2_2`
- Statement hash: `60964e9de3a65e84`
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
  statementHash := "60964e9de3a65e84"
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
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (requires_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (then_2_assume_15 : tmp__2 → False)
    (then_2_assume_16 : tmp__2 → False)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 r)
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_exit_3 : Vermilion.Seq.len retained = n)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 i)
    (loop_1_exit_1 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_exit_2 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_exit_3 : Vermilion.Seq.len retained = n)
    (loop_1_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_exit_5 : (¬ (i < Vermilion.Seq.len edges))) :
    Vermilion.Seq.len retained = n := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.invariant_entry_2_2

-- vrml:begin reclaim_plan.check_plan.invariant_entry_2_3 ba10f466fd8a6a9d
/--
Generated VC `reclaim_plan.check_plan.invariant_entry_2_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:330:77-330:100`
- Rust/SST construct: loop invariant on entry
- AssertId: `2_3`
- Statement hash: `ba10f466fd8a6a9d`
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
  statementHash := "ba10f466fd8a6a9d"
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
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (requires_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (then_2_assume_15 : tmp__2 → False)
    (then_2_assume_16 : tmp__2 → False)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 r)
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_exit_3 : Vermilion.Seq.len retained = n)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 i)
    (loop_1_exit_1 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_exit_2 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_exit_3 : Vermilion.Seq.len retained = n)
    (loop_1_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_exit_5 : (¬ (i < Vermilion.Seq.len edges))) :
    Vermilion.Seq.len reclaimable = n := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.invariant_entry_2_3

-- vrml:begin reclaim_plan.check_plan.invariant_entry_2_4 217d3d2392fab7e3
/--
Generated VC `reclaim_plan.check_plan.invariant_entry_2_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:331:13-331:120`
- Rust/SST construct: loop invariant on entry
- AssertId: `2_4`
- Statement hash: `217d3d2392fab7e3`
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
  statementHash := "217d3d2392fab7e3"
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
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (requires_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (then_2_assume_15 : tmp__2 → False)
    (then_2_assume_16 : tmp__2 → False)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 r)
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_exit_3 : Vermilion.Seq.len retained = n)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 i)
    (loop_1_exit_1 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_exit_2 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_exit_3 : Vermilion.Seq.len retained = n)
    (loop_1_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_exit_5 : (¬ (i < Vermilion.Seq.len edges))) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < 0)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained k))))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.invariant_entry_2_4

-- vrml:begin reclaim_plan.check_plan.call_requires_15 e8a72978b98d4d5a
/--
Generated VC `reclaim_plan.check_plan.call_requires_15`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:334:12-334:24`
- Rust/SST construct: call vec_index
- AssertId: `15`
- Statement hash: `e8a72978b98d4d5a`
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
  statementHash := "e8a72978b98d4d5a"
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
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 i)
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 v)
    (loop_2_iteration_13 : (0 ≤ v) ∧ (v ≤ n))
    (loop_2_iteration_14 : Vermilion.Seq.len candidate = n)
    (loop_2_iteration_15 : Vermilion.Seq.len retained = n)
    (loop_2_iteration_16 : Vermilion.Seq.len reclaimable = n)
    (loop_2_iteration_17 : (∀ (k : Int), (((0 ≤ k) ∧ (k < v)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained k))))))
    (loop_2_iteration_18 : v < n) :
    v < Vermilion.Seq.len candidate := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.call_requires_15

-- vrml:begin reclaim_plan.check_plan.call_requires_16 a1aa1a25abd5fc81
/--
Generated VC `reclaim_plan.check_plan.call_requires_16`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:334:29-334:43`
- Rust/SST construct: call vec_index
- AssertId: `16`
- Statement hash: `a1aa1a25abd5fc81`
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
  statementHash := "a1aa1a25abd5fc81"
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
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 i)
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 v)
    (loop_2_iteration_13 : (0 ≤ v) ∧ (v ≤ n))
    (loop_2_iteration_14 : Vermilion.Seq.len candidate = n)
    (loop_2_iteration_15 : Vermilion.Seq.len retained = n)
    (loop_2_iteration_16 : Vermilion.Seq.len reclaimable = n)
    (loop_2_iteration_17 : (∀ (k : Int), (((0 ≤ k) ∧ (k < v)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained k))))))
    (loop_2_iteration_18 : v < n)
    (call_vec_index_5_ensures_0 : tmp__9 ↔ Vermilion.Seq.index candidate v) :
    v < Vermilion.Seq.len reclaimable := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.call_requires_16

-- vrml:begin reclaim_plan.check_plan.call_requires_17 afe701d522b4abfa
/--
Generated VC `reclaim_plan.check_plan.call_requires_17`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:334:48-334:59`
- Rust/SST construct: call vec_index
- AssertId: `17`
- Statement hash: `afe701d522b4abfa`
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
  statementHash := "afe701d522b4abfa"
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
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 i)
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 v)
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
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.call_requires_17

-- vrml:begin reclaim_plan.check_plan.ensures_18 c1c9227dc2797018
/--
Generated VC `reclaim_plan.check_plan.ensures_18`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:299:13-299:100`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `18`
- Statement hash: `c1c9227dc2797018`
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
  statementHash := "c1c9227dc2797018"
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
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 i)
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 v)
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
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.ensures_18

-- vrml:begin reclaim_plan.check_plan.assert_19 9af5dd68c9440aa4
/--
Generated VC `reclaim_plan.check_plan.assert_19`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:337:9-337:15`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `19`
- Statement hash: `9af5dd68c9440aa4`
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
  statementHash := "9af5dd68c9440aa4"
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
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 i)
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 v)
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
    Vermilion.inUnsignedRange 64 (v + 1) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.assert_19

-- vrml:begin reclaim_plan.check_plan.invariant_preserve_2_0 00f527ef894dfbad
/--
Generated VC `reclaim_plan.check_plan.invariant_preserve_2_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:330:19-330:30`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `2_0`
- Statement hash: `00f527ef894dfbad`
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
  statementHash := "00f527ef894dfbad"
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
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 i)
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 v)
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
    (assert_19 : Vermilion.inUnsignedRange 64 (v + 1)) :
    (0 ≤ ((v + 1) % 18446744073709551616)) ∧ (((v + 1) % 18446744073709551616) ≤ n) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.invariant_preserve_2_0

-- vrml:begin reclaim_plan.check_plan.invariant_preserve_2_1 95d5ed0772f3ab53
/--
Generated VC `reclaim_plan.check_plan.invariant_preserve_2_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:330:32-330:53`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `2_1`
- Statement hash: `95d5ed0772f3ab53`
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
  statementHash := "95d5ed0772f3ab53"
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
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 i)
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 v)
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
    (assert_19 : Vermilion.inUnsignedRange 64 (v + 1)) :
    Vermilion.Seq.len candidate = n := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.invariant_preserve_2_1

-- vrml:begin reclaim_plan.check_plan.invariant_preserve_2_2 e6b1a968d0d06cc8
/--
Generated VC `reclaim_plan.check_plan.invariant_preserve_2_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:330:55-330:75`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `2_2`
- Statement hash: `e6b1a968d0d06cc8`
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
  statementHash := "e6b1a968d0d06cc8"
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
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 i)
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 v)
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
    (assert_19 : Vermilion.inUnsignedRange 64 (v + 1)) :
    Vermilion.Seq.len retained = n := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.invariant_preserve_2_2

-- vrml:begin reclaim_plan.check_plan.invariant_preserve_2_3 978077f53e26e889
/--
Generated VC `reclaim_plan.check_plan.invariant_preserve_2_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:330:77-330:100`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `2_3`
- Statement hash: `978077f53e26e889`
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
  statementHash := "978077f53e26e889"
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
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 i)
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 v)
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
    (assert_19 : Vermilion.inUnsignedRange 64 (v + 1)) :
    Vermilion.Seq.len reclaimable = n := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.invariant_preserve_2_3

-- vrml:begin reclaim_plan.check_plan.invariant_preserve_2_4 221027be9708f7e8
/--
Generated VC `reclaim_plan.check_plan.invariant_preserve_2_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:331:13-331:120`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `2_4`
- Statement hash: `221027be9708f7e8`
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
  statementHash := "221027be9708f7e8"
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
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 i)
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 v)
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
    (assert_19 : Vermilion.inUnsignedRange 64 (v + 1)) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < ((v + 1) % 18446744073709551616))) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained k))))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.check_plan.invariant_preserve_2_4

-- vrml:begin reclaim_plan.check_plan.assert_2_decreases 78518db3890bb83f
/--
Generated VC `reclaim_plan.check_plan.assert_2_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:332:19-332:24`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `2_decreases`
- Statement hash: `78518db3890bb83f`
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
  statementHash := "78518db3890bb83f"
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
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (loop_2_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (loop_2_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (loop_2_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (loop_2_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (loop_2_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_2_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (loop_2_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (loop_2_iteration_10 : Vermilion.inUnsignedRange 64 r)
    (loop_2_iteration_11 : Vermilion.inUnsignedRange 64 i)
    (loop_2_iteration_12 : Vermilion.inUnsignedRange 64 v)
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
    (assert_19 : Vermilion.inUnsignedRange 64 (v + 1)) :
    ((0 ≤ (n - ((v + 1) % 18446744073709551616))) ∧ ((n - ((v + 1) % 18446744073709551616)) < (n - v))) ∨ (((n - ((v + 1) % 18446744073709551616)) = (n - v)) ∧ False) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.check_plan.assert_2_decreases

-- vrml:begin reclaim_plan.check_plan.ensures_20 5467dbda86d7f3ad
/--
Generated VC `reclaim_plan.check_plan.ensures_20`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:299:13-299:100`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `20`
- Statement hash: `5467dbda86d7f3ad`
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
  statementHash := "5467dbda86d7f3ad"
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
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len edges))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len roots))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len reclaimable))
    (requires_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (requires_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (then_0_assume_9 : (¬ reclaim_plan.admissible_spec n edges roots reclaimable) → (tmp_ ↔ True))
    (else_0_assume_9 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len retained))
    (else_0_assume_10 : (¬ (¬ reclaim_plan.admissible_spec n edges roots reclaimable)) → (tmp_ ↔ (Vermilion.Seq.len retained ≠ n)))
    (then_1_assume_12 : tmp_ → (tmp__2 ↔ True))
    (else_1_assume_12 : (¬ tmp_) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len candidate))
    (else_1_assume_13 : (¬ tmp_) → (tmp__2 ↔ (Vermilion.Seq.len candidate ≠ n)))
    (then_2_assume_15 : tmp__2 → False)
    (then_2_assume_16 : tmp__2 → False)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 r)
    (loop_0_exit_1 : (0 ≤ r) ∧ (r ≤ Vermilion.Seq.len roots))
    (loop_0_exit_2 : reclaim_plan.roots_in_range_spec n roots)
    (loop_0_exit_3 : Vermilion.Seq.len retained = n)
    (loop_0_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < r)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots j))))
    (loop_0_exit_5 : (¬ (r < Vermilion.Seq.len roots)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 i)
    (loop_1_exit_1 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len edges))
    (loop_1_exit_2 : reclaim_plan.edges_in_range_spec n edges)
    (loop_1_exit_3 : Vermilion.Seq.len retained = n)
    (loop_1_exit_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges j)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges j))))))
    (loop_1_exit_5 : (¬ (i < Vermilion.Seq.len edges)))
    (loop_2_exit_0 : Vermilion.inUnsignedRange 64 v)
    (loop_2_exit_1 : (0 ≤ v) ∧ (v ≤ n))
    (loop_2_exit_2 : Vermilion.Seq.len candidate = n)
    (loop_2_exit_3 : Vermilion.Seq.len retained = n)
    (loop_2_exit_4 : Vermilion.Seq.len reclaimable = n)
    (loop_2_exit_5 : (∀ (k : Int), (((0 ≤ k) ∧ (k < v)) → (Vermilion.Seq.index candidate k ↔ (Vermilion.Seq.index reclaimable k ∧ (¬ Vermilion.Seq.index retained k))))))
    (loop_2_exit_6 : (¬ (v < n))) :
    True ↔ reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.check_plan.ensures_20

end reclaim_plan.check_plan

