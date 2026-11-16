import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.key_mask

-- vrml:begin reclaim_plan.key_mask.ensures_3 09b6badae4d3a95b
/--
Generated VC `reclaim_plan.key_mask.ensures_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1259:9-1259:82`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3`
- Statement hash: `09b6badae4d3a95b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩
-/
def ensures_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1259
  startColumn := 9
  endLine := 1259
  endColumn := 82
  assertId := "3"
  functionName := "reclaim_plan.key_mask"
  kind := "ensures"
  statementHash := "09b6badae4d3a95b"
}
@[vrml_obligation] theorem ensures_3
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (branch_0 : Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) :
    core.option.Option.is_Some (core.option.Option.None (V := (Vermilion.Seq Prop))) → reclaim_plan.mask_matches_paths_spec keys paths (core.option.Option.get_Some__0 (core.option.Option.None (V := (Vermilion.Seq Prop)))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.ensures_3

-- vrml:begin reclaim_plan.key_mask.invariant_entry_0_0 62218d9d3075bcb0
/--
Generated VC `reclaim_plan.key_mask.invariant_entry_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1268:19-1268:30`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `62218d9d3075bcb0`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1268
  startColumn := 19
  endLine := 1268
  endColumn := 30
  assertId := "0_0"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_entry"
  statementHash := "62218d9d3075bcb0"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (then_0_assume_10 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (then_0_assume_11 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Prop)) :
    (0 ≤ 0) ∧ (0 ≤ Vermilion.Seq.len keys) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.invariant_entry_0_0

-- vrml:begin reclaim_plan.key_mask.invariant_entry_0_1 da3432acd8be77e5
/--
Generated VC `reclaim_plan.key_mask.invariant_entry_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1268:32-1268:47`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `da3432acd8be77e5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1268
  startColumn := 32
  endLine := 1268
  endColumn := 47
  assertId := "0_1"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_entry"
  statementHash := "da3432acd8be77e5"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (then_0_assume_10 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (then_0_assume_11 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Prop)) :
    Vermilion.Seq.len keys = Vermilion.Seq.len keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.invariant_entry_0_1

-- vrml:begin reclaim_plan.key_mask.invariant_entry_0_2 a4536696c5b48c4c
/--
Generated VC `reclaim_plan.key_mask.invariant_entry_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1268:49-1268:62`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_2`
- Statement hash: `a4536696c5b48c4c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩
-/
def invariant_entry_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1268
  startColumn := 49
  endLine := 1268
  endColumn := 62
  assertId := "0_2"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_entry"
  statementHash := "a4536696c5b48c4c"
}
@[vrml_obligation] theorem invariant_entry_0_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (then_0_assume_10 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (then_0_assume_11 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Prop)) :
    Vermilion.Seq.len tmp_ = 0 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.invariant_entry_0_2

-- vrml:begin reclaim_plan.key_mask.invariant_entry_0_3 d84a8de9eb68551a
/--
Generated VC `reclaim_plan.key_mask.invariant_entry_0_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1268:64-1268:118`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_3`
- Statement hash: `d84a8de9eb68551a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index tmp_ t⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩
-/
def invariant_entry_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1268
  startColumn := 64
  endLine := 1268
  endColumn := 118
  assertId := "0_3"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_entry"
  statementHash := "d84a8de9eb68551a"
}
@[vrml_obligation] theorem invariant_entry_0_3
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (then_0_assume_10 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (then_0_assume_11 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Prop)) :
    (∀ (t : Int), (((0 ≤ t) ∧ (t < 0)) → (¬ Vermilion.Seq.index tmp_ t))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.invariant_entry_0_3

-- vrml:begin reclaim_plan.key_mask.assert_6 ae2852cebefaef1a
/--
Generated VC `reclaim_plan.key_mask.assert_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1272:13-1272:18`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `6`
- Statement hash: `ae2852cebefaef1a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩
-/
def assert_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1272
  startColumn := 13
  endLine := 1272
  endColumn := 18
  assertId := "6"
  functionName := "reclaim_plan.key_mask"
  kind := "assert"
  statementHash := "ae2852cebefaef1a"
}
@[vrml_obligation] theorem assert_6
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (tmp__post : (Vermilion.Seq Prop))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 k)
    (loop_0_iteration_12 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_13 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_14 : Vermilion.Seq.len m = k)
    (loop_0_iteration_15 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_iteration_16 : k < Vermilion.Seq.len keys)
    (assume_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push m False) :
    Vermilion.inUnsignedRange 64 (k + 1) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.assert_6

-- vrml:begin reclaim_plan.key_mask.invariant_preserve_0_0 f9d31c705ca1ff56
/--
Generated VC `reclaim_plan.key_mask.invariant_preserve_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1268:19-1268:30`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `f9d31c705ca1ff56`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1268
  startColumn := 19
  endLine := 1268
  endColumn := 30
  assertId := "0_0"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_preserve"
  statementHash := "f9d31c705ca1ff56"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (tmp__post : (Vermilion.Seq Prop))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 k)
    (loop_0_iteration_12 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_13 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_14 : Vermilion.Seq.len m = k)
    (loop_0_iteration_15 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_iteration_16 : k < Vermilion.Seq.len keys)
    (assume_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push m False)
    (assert_6 : Vermilion.inUnsignedRange 64 (k + 1)) :
    (0 ≤ ((k + 1) % 18446744073709551616)) ∧ (((k + 1) % 18446744073709551616) ≤ Vermilion.Seq.len keys) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.invariant_preserve_0_0

-- vrml:begin reclaim_plan.key_mask.invariant_preserve_0_1 fac554be86e2e777
/--
Generated VC `reclaim_plan.key_mask.invariant_preserve_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1268:32-1268:47`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `fac554be86e2e777`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1268
  startColumn := 32
  endLine := 1268
  endColumn := 47
  assertId := "0_1"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_preserve"
  statementHash := "fac554be86e2e777"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (tmp__post : (Vermilion.Seq Prop))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 k)
    (loop_0_iteration_12 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_13 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_14 : Vermilion.Seq.len m = k)
    (loop_0_iteration_15 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_iteration_16 : k < Vermilion.Seq.len keys)
    (assume_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push m False)
    (assert_6 : Vermilion.inUnsignedRange 64 (k + 1)) :
    Vermilion.Seq.len keys = Vermilion.Seq.len keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.invariant_preserve_0_1

-- vrml:begin reclaim_plan.key_mask.invariant_preserve_0_2 a1d72f2c85dd8c0b
/--
Generated VC `reclaim_plan.key_mask.invariant_preserve_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1268:49-1268:62`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_2`
- Statement hash: `a1d72f2c85dd8c0b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩
-/
def invariant_preserve_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1268
  startColumn := 49
  endLine := 1268
  endColumn := 62
  assertId := "0_2"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_preserve"
  statementHash := "a1d72f2c85dd8c0b"
}
@[vrml_obligation] theorem invariant_preserve_0_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (tmp__post : (Vermilion.Seq Prop))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 k)
    (loop_0_iteration_12 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_13 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_14 : Vermilion.Seq.len m = k)
    (loop_0_iteration_15 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_iteration_16 : k < Vermilion.Seq.len keys)
    (assume_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push m False)
    (assert_6 : Vermilion.inUnsignedRange 64 (k + 1)) :
    Vermilion.Seq.len tmp__post = ((k + 1) % 18446744073709551616) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.invariant_preserve_0_2

-- vrml:begin reclaim_plan.key_mask.invariant_preserve_0_3 eede35a0065d2073
/--
Generated VC `reclaim_plan.key_mask.invariant_preserve_0_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1268:64-1268:118`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_3`
- Statement hash: `eede35a0065d2073`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index tmp__post t⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩
-/
def invariant_preserve_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1268
  startColumn := 64
  endLine := 1268
  endColumn := 118
  assertId := "0_3"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_preserve"
  statementHash := "eede35a0065d2073"
}
@[vrml_obligation] theorem invariant_preserve_0_3
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (tmp__post : (Vermilion.Seq Prop))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 k)
    (loop_0_iteration_12 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_13 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_14 : Vermilion.Seq.len m = k)
    (loop_0_iteration_15 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_iteration_16 : k < Vermilion.Seq.len keys)
    (assume_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push m False)
    (assert_6 : Vermilion.inUnsignedRange 64 (k + 1)) :
    (∀ (t : Int), (((0 ≤ t) ∧ (t < ((k + 1) % 18446744073709551616))) → (¬ Vermilion.Seq.index tmp__post t))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.invariant_preserve_0_3

-- vrml:begin reclaim_plan.key_mask.assert_0_decreases e79be28f919f3cff
/--
Generated VC `reclaim_plan.key_mask.assert_0_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1269:19-1269:24`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `e79be28f919f3cff`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1269
  startColumn := 19
  endLine := 1269
  endColumn := 24
  assertId := "0_decreases"
  functionName := "reclaim_plan.key_mask"
  kind := "assert"
  statementHash := "e79be28f919f3cff"
}
@[vrml_obligation] theorem assert_0_decreases
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (tmp__post : (Vermilion.Seq Prop))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_0_iteration_11 : Vermilion.inUnsignedRange 64 k)
    (loop_0_iteration_12 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_iteration_13 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_iteration_14 : Vermilion.Seq.len m = k)
    (loop_0_iteration_15 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_iteration_16 : k < Vermilion.Seq.len keys)
    (assume_17 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push m False)
    (assert_6 : Vermilion.inUnsignedRange 64 (k + 1)) :
    ((0 ≤ (Vermilion.Seq.len keys - ((k + 1) % 18446744073709551616))) ∧ ((Vermilion.Seq.len keys - ((k + 1) % 18446744073709551616)) < (Vermilion.Seq.len keys - k))) ∨ (((Vermilion.Seq.len keys - ((k + 1) % 18446744073709551616)) = (Vermilion.Seq.len keys - k)) ∧ False) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.assert_0_decreases

-- vrml:begin reclaim_plan.key_mask.invariant_entry_1_0 5c2dd55ece6d191b
/--
Generated VC `reclaim_plan.key_mask.invariant_entry_1_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1276:19-1276:40`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_0`
- Statement hash: `5c2dd55ece6d191b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩
-/
def invariant_entry_1_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1276
  startColumn := 19
  endLine := 1276
  endColumn := 40
  assertId := "1_0"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_entry"
  statementHash := "5c2dd55ece6d191b"
}
@[vrml_obligation] theorem invariant_entry_1_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (then_0_assume_10 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (then_0_assume_11 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : Vermilion.Seq.len m = k)
    (loop_0_exit_5 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_exit_6 : (¬ (k < Vermilion.Seq.len keys))) :
    (0 ≤ 0) ∧ (0 ≤ Vermilion.Seq.len paths) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.invariant_entry_1_0

-- vrml:begin reclaim_plan.key_mask.invariant_entry_1_1 526ab0abe07122ec
/--
Generated VC `reclaim_plan.key_mask.invariant_entry_1_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1276:42-1276:68`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_1`
- Statement hash: `526ab0abe07122ec`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩
-/
def invariant_entry_1_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1276
  startColumn := 42
  endLine := 1276
  endColumn := 68
  assertId := "1_1"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_entry"
  statementHash := "526ab0abe07122ec"
}
@[vrml_obligation] theorem invariant_entry_1_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (then_0_assume_10 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (then_0_assume_11 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : Vermilion.Seq.len m = k)
    (loop_0_exit_5 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_exit_6 : (¬ (k < Vermilion.Seq.len keys))) :
    Vermilion.Seq.len index = Vermilion.Seq.len paths := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.invariant_entry_1_1

-- vrml:begin reclaim_plan.key_mask.invariant_entry_1_2 7574d6eef453220c
/--
Generated VC `reclaim_plan.key_mask.invariant_entry_1_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1276:70-1276:85`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_2`
- Statement hash: `7574d6eef453220c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩
-/
def invariant_entry_1_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1276
  startColumn := 70
  endLine := 1276
  endColumn := 85
  assertId := "1_2"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_entry"
  statementHash := "7574d6eef453220c"
}
@[vrml_obligation] theorem invariant_entry_1_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (then_0_assume_10 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (then_0_assume_11 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : Vermilion.Seq.len m = k)
    (loop_0_exit_5 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_exit_6 : (¬ (k < Vermilion.Seq.len keys))) :
    Vermilion.Seq.len keys = Vermilion.Seq.len keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.invariant_entry_1_2

-- vrml:begin reclaim_plan.key_mask.invariant_entry_1_3 54ecde4f76ce7c35
/--
Generated VC `reclaim_plan.key_mask.invariant_entry_1_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1276:87-1276:100`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_3`
- Statement hash: `54ecde4f76ce7c35`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩
-/
def invariant_entry_1_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1276
  startColumn := 87
  endLine := 1276
  endColumn := 100
  assertId := "1_3"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_entry"
  statementHash := "54ecde4f76ce7c35"
}
@[vrml_obligation] theorem invariant_entry_1_3
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (then_0_assume_10 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (then_0_assume_11 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : Vermilion.Seq.len m = k)
    (loop_0_exit_5 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_exit_6 : (¬ (k < Vermilion.Seq.len keys))) :
    Vermilion.Seq.len m = Vermilion.Seq.len keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.invariant_entry_1_3

-- vrml:begin reclaim_plan.key_mask.invariant_entry_1_4 4316a3ace246bed1
/--
Generated VC `reclaim_plan.key_mask.invariant_entry_1_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1277:13-1278:91`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_4`
- Statement hash: `4316a3ace246bed1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index m t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩
-/
def invariant_entry_1_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1277
  startColumn := 13
  endLine := 1278
  endColumn := 91
  assertId := "1_4"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_entry"
  statementHash := "4316a3ace246bed1"
}
@[vrml_obligation] theorem invariant_entry_1_4
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (then_0_assume_10 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (then_0_assume_11 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : Vermilion.Seq.len m = k)
    (loop_0_exit_5 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_exit_6 : (¬ (k < Vermilion.Seq.len keys))) :
    (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < 0)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.invariant_entry_1_4

-- vrml:begin reclaim_plan.key_mask.invariant_entry_1_5 29c3d8d1079594b9
/--
Generated VC `reclaim_plan.key_mask.invariant_entry_1_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1279:13-1280:99`
- Rust/SST construct: loop invariant on entry
- AssertId: `1_5`
- Statement hash: `29c3d8d1079594b9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩
-/
def invariant_entry_1_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1279
  startColumn := 13
  endLine := 1280
  endColumn := 99
  assertId := "1_5"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_entry"
  statementHash := "29c3d8d1079594b9"
}
@[vrml_obligation] theorem invariant_entry_1_5
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (then_0_assume_10 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (then_0_assume_11 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : Vermilion.Seq.len m = k)
    (loop_0_exit_5 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_exit_6 : (¬ (k < Vermilion.Seq.len keys))) :
    (∀ (q : Int), (((0 ≤ q) ∧ (q < 0)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.invariant_entry_1_5

-- vrml:begin reclaim_plan.key_mask.call_requires_8 d11c0bc4b7ad379f
/--
Generated VC `reclaim_plan.key_mask.call_requires_8`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1283:17-1283:25`
- Rust/SST construct: call vec_index
- AssertId: `8`
- Statement hash: `d11c0bc4b7ad379f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩
-/
def call_requires_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1283
  startColumn := 17
  endLine := 1283
  endColumn := 25
  assertId := "8"
  functionName := "reclaim_plan.key_mask"
  kind := "call_requires"
  statementHash := "d11c0bc4b7ad379f"
}
@[vrml_obligation] theorem call_requires_8
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m_2))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 s)
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths) :
    s < Vermilion.Seq.len index := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.call_requires_8

-- vrml:begin reclaim_plan.key_mask.call_requires_9 9dd79db61b7a4561
/--
Generated VC `reclaim_plan.key_mask.call_requires_9`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1284:22-1284:26`
- Rust/SST construct: call vec_index
- AssertId: `9`
- Statement hash: `9dd79db61b7a4561`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩
-/
def call_requires_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1284
  startColumn := 22
  endLine := 1284
  endColumn := 26
  assertId := "9"
  functionName := "reclaim_plan.key_mask"
  kind := "call_requires"
  statementHash := "9dd79db61b7a4561"
}
@[vrml_obligation] theorem call_requires_9
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m_2))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 s)
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (branch_1 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys))) :
    tmp__2 < Vermilion.Seq.len m_2 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.call_requires_9

-- vrml:begin reclaim_plan.key_mask.call_requires_10 c9ff83a838c92182
/--
Generated VC `reclaim_plan.key_mask.call_requires_10`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1284:39-1284:46`
- Rust/SST construct: call vec_index
- AssertId: `10`
- Statement hash: `c9ff83a838c92182`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩
-/
def call_requires_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1284
  startColumn := 39
  endLine := 1284
  endColumn := 46
  assertId := "10"
  functionName := "reclaim_plan.key_mask"
  kind := "call_requires"
  statementHash := "c9ff83a838c92182"
}
@[vrml_obligation] theorem call_requires_10
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m_2))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 s)
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (branch_2 : (¬ tmp__4)) :
    tmp__2 < Vermilion.Seq.len keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.call_requires_10

-- vrml:begin reclaim_plan.key_mask.call_requires_11 190260a335c2dd8e
/--
Generated VC `reclaim_plan.key_mask.call_requires_11`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1284:49-1284:57`
- Rust/SST construct: call vec_index
- AssertId: `11`
- Statement hash: `190260a335c2dd8e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩
-/
def call_requires_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1284
  startColumn := 49
  endLine := 1284
  endColumn := 57
  assertId := "11"
  functionName := "reclaim_plan.key_mask"
  kind := "call_requires"
  statementHash := "190260a335c2dd8e"
}
@[vrml_obligation] theorem call_requires_11
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m_2))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 s)
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (branch_2 : (¬ tmp__4))
    (call_vec_index_2_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__5))
    (call_vec_index_2_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (call_vec_index_2_ensures_2 : tmp__5 = Vermilion.Seq.index keys tmp__2) :
    s < Vermilion.Seq.len paths := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.call_requires_11

-- vrml:begin reclaim_plan.key_mask.ensures_13 30c212290b3cea0c
/--
Generated VC `reclaim_plan.key_mask.ensures_13`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1259:9-1259:82`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `13`
- Statement hash: `30c212290b3cea0c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩
-/
def ensures_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1259
  startColumn := 9
  endLine := 1259
  endColumn := 82
  assertId := "13"
  functionName := "reclaim_plan.key_mask"
  kind := "ensures"
  statementHash := "30c212290b3cea0c"
}
@[vrml_obligation] theorem ensures_13
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m_2))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 s)
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__5))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__6))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (branch_3 : tmp__7) :
    core.option.Option.is_Some (core.option.Option.None (V := (Vermilion.Seq Prop))) → reclaim_plan.mask_matches_paths_spec keys paths (core.option.Option.get_Some__0 (core.option.Option.None (V := (Vermilion.Seq Prop)))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.ensures_13

-- vrml:begin reclaim_plan.key_mask.call_requires_14 dd83e80a4dff6c9f
/--
Generated VC `reclaim_plan.key_mask.call_requires_14`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1288:9-1288:23`
- Rust/SST construct: call set
- AssertId: `14`
- Statement hash: `dd83e80a4dff6c9f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩
-/
def call_requires_14_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1288
  startColumn := 9
  endLine := 1288
  endColumn := 23
  assertId := "14"
  functionName := "reclaim_plan.key_mask"
  kind := "call_requires"
  statementHash := "dd83e80a4dff6c9f"
}
@[vrml_obligation] theorem call_requires_14
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m_2))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 s)
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__5))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__6))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2)) :
    tmp__2 < Vermilion.Seq.len m_2 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.call_requires_14

-- vrml:begin reclaim_plan.key_mask.assert_15 42f803304c2f2d85
/--
Generated VC `reclaim_plan.key_mask.assert_15`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1293:28-1293:58`
- Rust/SST construct: Rust source assertion
- AssertId: `15`
- Statement hash: `42f803304c2f2d85`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩
-/
def assert_15_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1293
  startColumn := 28
  endLine := 1293
  endColumn := 58
  assertId := "15"
  functionName := "reclaim_plan.key_mask"
  kind := "assert"
  statementHash := "42f803304c2f2d85"
}
@[vrml_obligation] theorem assert_15
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (u : Int)
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m_2))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 s)
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__5))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__6))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update m_2 tmp__2 True)
    (assume_38 : True)
    (assume_39 : ((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u)
    (branch_4 : u = tmp__2) :
    Vermilion.Seq.index paths s = Vermilion.Seq.index keys u := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.assert_15

-- vrml:begin reclaim_plan.key_mask.assert_16 12ec7c0d1331a7ee
/--
Generated VC `reclaim_plan.key_mask.assert_16`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1295:28-1295:44`
- Rust/SST construct: Rust source assertion
- AssertId: `16`
- Statement hash: `12ec7c0d1331a7ee`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩
-/
def assert_16_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1295
  startColumn := 28
  endLine := 1295
  endColumn := 44
  assertId := "16"
  functionName := "reclaim_plan.key_mask"
  kind := "assert"
  statementHash := "12ec7c0d1331a7ee"
}
@[vrml_obligation] theorem assert_16
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (u : Int)
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m_2))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 s)
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__5))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__6))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update m_2 tmp__2 True)
    (assume_38 : True)
    (assume_39 : ((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u)
    (branch_4 : (¬ (u = tmp__2))) :
    Vermilion.Seq.index tmp__post_2 u ↔ Vermilion.Seq.index m_2 u := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.assert_16

-- vrml:begin reclaim_plan.key_mask.assert_17 5c43eca7c3ddd09c
/--
Generated VC `reclaim_plan.key_mask.assert_17`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1291:17-1291:95`
- Rust/SST construct: Rust source assertion
- AssertId: `17`
- Statement hash: `5c43eca7c3ddd09c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩
-/
def assert_17_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1291
  startColumn := 17
  endLine := 1291
  endColumn := 95
  assertId := "17"
  functionName := "reclaim_plan.key_mask"
  kind := "assert"
  statementHash := "5c43eca7c3ddd09c"
}
@[vrml_obligation] theorem assert_17
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (u : Int)
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m_2))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 s)
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__5))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__6))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update m_2 tmp__2 True)
    (assume_38 : True)
    (assume_39 : ((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u)
    (then_4_assert_15 : (u = tmp__2) → (Vermilion.Seq.index paths s = Vermilion.Seq.index keys u))
    (else_4_assert_16 : (¬ (u = tmp__2)) → (Vermilion.Seq.index tmp__post_2 u ↔ Vermilion.Seq.index m_2 u)) :
    (∃ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys u))) := by
  by_cases hu : u = tmp__2
  · exact ⟨s, ⟨loop_1_iteration_14.1, by omega⟩, then_4_assert_15 hu⟩
  · obtain ⟨q, hq, e⟩ := loop_1_iteration_18 u ⟨assume_39.1, (else_4_assert_16 hu).mp assume_39.2⟩
    exact ⟨q, ⟨hq.1, by omega⟩, e⟩
-- vrml:end reclaim_plan.key_mask.assert_17

-- vrml:begin reclaim_plan.key_mask.assert_18 ed5f57c72cc5ce6d
/--
Generated VC `reclaim_plan.key_mask.assert_18`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1301:28-1301:74`
- Rust/SST construct: Rust source assertion
- AssertId: `18`
- Statement hash: `ed5f57c72cc5ce6d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 u⟩ ⟨Vermilion.Seq.index paths q⟩
-/
def assert_18_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1301
  startColumn := 28
  endLine := 1301
  endColumn := 74
  assertId := "18"
  functionName := "reclaim_plan.key_mask"
  kind := "assert"
  statementHash := "ed5f57c72cc5ce6d"
}
@[vrml_obligation] theorem assert_18
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (q : Int)
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m_2))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 s)
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__5))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__6))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update m_2 tmp__2 True)
    (assume_38 : (∀ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) → (∃ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys u))))))
    (assume_39 : True)
    (assume_40 : (0 ≤ q) ∧ (q < (s + 1)))
    (branch_5 : q = s) :
    Vermilion.Seq.index tmp__post_2 tmp__2 ∧ (Vermilion.Seq.index keys tmp__2 = Vermilion.Seq.index paths q) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.assert_18

-- vrml:begin reclaim_plan.key_mask.assert_19 88b65416bf117f17
/--
Generated VC `reclaim_plan.key_mask.assert_19`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1304:28-1304:33`
- Rust/SST construct: Rust source assertion
- AssertId: `19`
- Statement hash: `88b65416bf117f17`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys u⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 u⟩ ⟨Vermilion.Seq.index paths q⟩
-/
def assert_19_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1304
  startColumn := 28
  endLine := 1304
  endColumn := 33
  assertId := "19"
  functionName := "reclaim_plan.key_mask"
  kind := "assert"
  statementHash := "88b65416bf117f17"
}
@[vrml_obligation] theorem assert_19
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (q : Int)
    (choose_spec_0 : (∃ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q))) → (fun (u : Int) => ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q))) (Vermilion.chooseSpec (fun (u : Int) => ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q)))))
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m_2))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 s)
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__5))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__6))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update m_2 tmp__2 True)
    (assume_38 : (∀ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) → (∃ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys u))))))
    (assume_39 : True)
    (assume_40 : (0 ≤ q) ∧ (q < (s + 1)))
    (branch_5 : (¬ (q = s))) :
    Vermilion.Seq.index tmp__post_2 (Vermilion.chooseSpec (fun (u : Int) => ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q)))) := by
  have hq : 0 ≤ q ∧ q < s := ⟨assume_40.1, by have := assume_40.2; omega⟩
  have hU := choose_spec_0 (loop_1_iteration_19 q hq)
  obtain ⟨⟨⟨hU0, hU1⟩, hUm⟩, _⟩ := hU
  rw [call_set_ensures_0]
  by_cases he : Vermilion.chooseSpec (fun (u : Int) => ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧
      Vermilion.Seq.index m_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q))) = tmp__2
  · rw [he]
    have h0 : 0 ≤ tmp__2 := by
      unfold Vermilion.inUnsignedRange at call_vec_index_ensures_0; exact call_vec_index_ensures_0.1
    rw [Vermilion.Seq.index_update_same _ _ _ h0 (by rw [loop_1_iteration_17]; rw [← he]; exact hU1)]
    trivial
  · rw [Vermilion.Seq.index_update_other _ _ _ _ (Ne.symm he)]
    exact hUm
-- vrml:end reclaim_plan.key_mask.assert_19

-- vrml:begin reclaim_plan.key_mask.assert_20 db384505b05adf96
/--
Generated VC `reclaim_plan.key_mask.assert_20`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1299:17-1299:99`
- Rust/SST construct: Rust source assertion
- AssertId: `20`
- Statement hash: `db384505b05adf96`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys u⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 u⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys u⟩
-/
def assert_20_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1299
  startColumn := 17
  endLine := 1299
  endColumn := 99
  assertId := "20"
  functionName := "reclaim_plan.key_mask"
  kind := "assert"
  statementHash := "db384505b05adf96"
}
@[vrml_obligation] theorem assert_20
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (q : Int)
    (choose_spec_0 : (∃ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q))) → (fun (u : Int) => ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q))) (Vermilion.chooseSpec (fun (u : Int) => ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q)))))
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m_2))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 s)
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__5))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__6))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update m_2 tmp__2 True)
    (assume_38 : (∀ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) → (∃ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys u))))))
    (assume_39 : True)
    (assume_40 : (0 ≤ q) ∧ (q < (s + 1)))
    (then_5_assert_18 : (q = s) → (Vermilion.Seq.index tmp__post_2 tmp__2 ∧ (Vermilion.Seq.index keys tmp__2 = Vermilion.Seq.index paths q)))
    (else_5_assert_19 : (¬ (q = s)) → Vermilion.Seq.index tmp__post_2 (Vermilion.chooseSpec (fun (u : Int) => ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q))))) :
    (∃ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.assert_20

-- vrml:begin reclaim_plan.key_mask.assert_21 0b7c9225a2e136be
/--
Generated VC `reclaim_plan.key_mask.assert_21`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1308:13-1308:18`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `21`
- Statement hash: `0b7c9225a2e136be`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 u⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys u⟩
-/
def assert_21_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1308
  startColumn := 13
  endLine := 1308
  endColumn := 18
  assertId := "21"
  functionName := "reclaim_plan.key_mask"
  kind := "assert"
  statementHash := "0b7c9225a2e136be"
}
@[vrml_obligation] theorem assert_21
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m_2))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 s)
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__5))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__6))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update m_2 tmp__2 True)
    (assume_38 : (∀ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) → (∃ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys u))))))
    (assume_39 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) → (∃ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q)))))) :
    Vermilion.inUnsignedRange 64 (s + 1) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.assert_21

-- vrml:begin reclaim_plan.key_mask.invariant_preserve_1_0 f0872f41e3616c79
/--
Generated VC `reclaim_plan.key_mask.invariant_preserve_1_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1276:19-1276:40`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_0`
- Statement hash: `f0872f41e3616c79`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 u⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys u⟩
-/
def invariant_preserve_1_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1276
  startColumn := 19
  endLine := 1276
  endColumn := 40
  assertId := "1_0"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_preserve"
  statementHash := "f0872f41e3616c79"
}
@[vrml_obligation] theorem invariant_preserve_1_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m_2))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 s)
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__5))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__6))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update m_2 tmp__2 True)
    (assume_38 : (∀ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) → (∃ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys u))))))
    (assume_39 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) → (∃ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q))))))
    (assert_21 : Vermilion.inUnsignedRange 64 (s + 1)) :
    (0 ≤ ((s + 1) % 18446744073709551616)) ∧ (((s + 1) % 18446744073709551616) ≤ Vermilion.Seq.len paths) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.invariant_preserve_1_0

-- vrml:begin reclaim_plan.key_mask.invariant_preserve_1_1 2a6f7015d16deb12
/--
Generated VC `reclaim_plan.key_mask.invariant_preserve_1_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1276:42-1276:68`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_1`
- Statement hash: `2a6f7015d16deb12`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 u⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys u⟩
-/
def invariant_preserve_1_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1276
  startColumn := 42
  endLine := 1276
  endColumn := 68
  assertId := "1_1"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_preserve"
  statementHash := "2a6f7015d16deb12"
}
@[vrml_obligation] theorem invariant_preserve_1_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m_2))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 s)
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__5))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__6))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update m_2 tmp__2 True)
    (assume_38 : (∀ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) → (∃ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys u))))))
    (assume_39 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) → (∃ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q))))))
    (assert_21 : Vermilion.inUnsignedRange 64 (s + 1)) :
    Vermilion.Seq.len index = Vermilion.Seq.len paths := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.invariant_preserve_1_1

-- vrml:begin reclaim_plan.key_mask.invariant_preserve_1_2 f4b7021fa27fb612
/--
Generated VC `reclaim_plan.key_mask.invariant_preserve_1_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1276:70-1276:85`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_2`
- Statement hash: `f4b7021fa27fb612`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 u⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys u⟩
-/
def invariant_preserve_1_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1276
  startColumn := 70
  endLine := 1276
  endColumn := 85
  assertId := "1_2"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_preserve"
  statementHash := "f4b7021fa27fb612"
}
@[vrml_obligation] theorem invariant_preserve_1_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m_2))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 s)
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__5))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__6))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update m_2 tmp__2 True)
    (assume_38 : (∀ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) → (∃ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys u))))))
    (assume_39 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) → (∃ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q))))))
    (assert_21 : Vermilion.inUnsignedRange 64 (s + 1)) :
    Vermilion.Seq.len keys = Vermilion.Seq.len keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.invariant_preserve_1_2

-- vrml:begin reclaim_plan.key_mask.invariant_preserve_1_3 d7928d087e61bbee
/--
Generated VC `reclaim_plan.key_mask.invariant_preserve_1_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1276:87-1276:100`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_3`
- Statement hash: `d7928d087e61bbee`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 u⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys u⟩
-/
def invariant_preserve_1_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1276
  startColumn := 87
  endLine := 1276
  endColumn := 100
  assertId := "1_3"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_preserve"
  statementHash := "d7928d087e61bbee"
}
@[vrml_obligation] theorem invariant_preserve_1_3
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m_2))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 s)
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__5))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__6))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update m_2 tmp__2 True)
    (assume_38 : (∀ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) → (∃ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys u))))))
    (assume_39 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) → (∃ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q))))))
    (assert_21 : Vermilion.inUnsignedRange 64 (s + 1)) :
    Vermilion.Seq.len tmp__post_2 = Vermilion.Seq.len keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.invariant_preserve_1_3

-- vrml:begin reclaim_plan.key_mask.invariant_preserve_1_4 54e2f4232c56e0dc
/--
Generated VC `reclaim_plan.key_mask.invariant_preserve_1_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1277:13-1278:91`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_4`
- Statement hash: `54e2f4232c56e0dc`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index tmp__post_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 u⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys u⟩
-/
def invariant_preserve_1_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1277
  startColumn := 13
  endLine := 1278
  endColumn := 91
  assertId := "1_4"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_preserve"
  statementHash := "54e2f4232c56e0dc"
}
@[vrml_obligation] theorem invariant_preserve_1_4
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m_2))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 s)
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__5))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__6))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update m_2 tmp__2 True)
    (assume_38 : (∀ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) → (∃ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys u))))))
    (assume_39 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) → (∃ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q))))))
    (assert_21 : Vermilion.inUnsignedRange 64 (s + 1)) :
    (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < ((s + 1) % 18446744073709551616))) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))) := by
  have hr : (s + 1) % 18446744073709551616 = s + 1 := by
    unfold Vermilion.inUnsignedRange at assert_21; norm_num at assert_21; omega
  rw [hr]; exact assume_38
-- vrml:end reclaim_plan.key_mask.invariant_preserve_1_4

-- vrml:begin reclaim_plan.key_mask.invariant_preserve_1_5 498dce3e76648220
/--
Generated VC `reclaim_plan.key_mask.invariant_preserve_1_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1279:13-1280:99`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `1_5`
- Statement hash: `498dce3e76648220`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 u⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys u⟩
-/
def invariant_preserve_1_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1279
  startColumn := 13
  endLine := 1280
  endColumn := 99
  assertId := "1_5"
  functionName := "reclaim_plan.key_mask"
  kind := "invariant_preserve"
  statementHash := "498dce3e76648220"
}
@[vrml_obligation] theorem invariant_preserve_1_5
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m_2))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 s)
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__5))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__6))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update m_2 tmp__2 True)
    (assume_38 : (∀ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) → (∃ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys u))))))
    (assume_39 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) → (∃ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q))))))
    (assert_21 : Vermilion.inUnsignedRange 64 (s + 1)) :
    (∀ (q : Int), (((0 ≤ q) ∧ (q < ((s + 1) % 18446744073709551616))) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))) := by
  have hr : (s + 1) % 18446744073709551616 = s + 1 := by
    unfold Vermilion.inUnsignedRange at assert_21; norm_num at assert_21; omega
  rw [hr]; exact assume_39
-- vrml:end reclaim_plan.key_mask.invariant_preserve_1_5

-- vrml:begin reclaim_plan.key_mask.assert_1_decreases f3ccafa99316415e
/--
Generated VC `reclaim_plan.key_mask.assert_1_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1281:19-1281:34`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `1_decreases`
- Statement hash: `f3ccafa99316415e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 u⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys u⟩
-/
def assert_1_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1281
  startColumn := 19
  endLine := 1281
  endColumn := 34
  assertId := "1_decreases"
  functionName := "reclaim_plan.key_mask"
  kind := "assert"
  statementHash := "f3ccafa99316415e"
}
@[vrml_obligation] theorem assert_1_decreases
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (tmp__2 : Int)
    (tmp__4 : Prop)
    (tmp__3 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Prop))
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (loop_1_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (loop_1_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (loop_1_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (loop_1_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (loop_1_iteration_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (loop_1_iteration_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_1_iteration_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_1_iteration_11 : Vermilion.inUnsignedRange 64 k)
    (loop_1_iteration_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m_2))
    (loop_1_iteration_13 : Vermilion.inUnsignedRange 64 s)
    (loop_1_iteration_14 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_iteration_15 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_iteration_16 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_iteration_17 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_iteration_18 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_iteration_19 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_iteration_20 : s < Vermilion.Seq.len paths)
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index index s)
    (then_1_assume_24 : (tmp__2 ≥ Vermilion.Seq.len keys) → (tmp__4 ↔ True))
    (else_1_call_vec_index_1_ensures_0 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__3 ↔ Vermilion.Seq.index m_2 tmp__2))
    (else_1_assume_25 : (¬ (tmp__2 ≥ Vermilion.Seq.len keys)) → (tmp__4 ↔ tmp__3))
    (then_2_assume_27 : tmp__4 → (tmp__7 ↔ True))
    (else_2_call_vec_index_2_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__5))
    (else_2_call_vec_index_2_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (else_2_call_vec_index_2_ensures_2 : (¬ tmp__4) → (tmp__5 = Vermilion.Seq.index keys tmp__2))
    (else_2_call_vec_index_3_ensures_0 : (¬ tmp__4) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__6))
    (else_2_call_vec_index_3_ensures_1 : (¬ tmp__4) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (else_2_call_vec_index_3_ensures_2 : (¬ tmp__4) → (tmp__6 = Vermilion.Seq.index paths s))
    (else_2_assume_33 : (¬ tmp__4) → (tmp__7 ↔ (¬ (tmp__5 = tmp__6))))
    (then_3_assume_35 : tmp__7 → False)
    (then_3_assume_36 : tmp__7 → False)
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (call_set_ensures_0 : tmp__post_2 = Vermilion.Seq.update m_2 tmp__2 True)
    (assume_38 : (∀ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) → (∃ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys u))))))
    (assume_39 : (∀ (q : Int), (((0 ≤ q) ∧ (q < (s + 1))) → (∃ (u : Int), ((((0 ≤ u) ∧ (u < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index tmp__post_2 u) ∧ (Vermilion.Seq.index keys u = Vermilion.Seq.index paths q))))))
    (assert_21 : Vermilion.inUnsignedRange 64 (s + 1)) :
    ((0 ≤ (Vermilion.Seq.len paths - ((s + 1) % 18446744073709551616))) ∧ ((Vermilion.Seq.len paths - ((s + 1) % 18446744073709551616)) < (Vermilion.Seq.len paths - s))) ∨ (((Vermilion.Seq.len paths - ((s + 1) % 18446744073709551616)) = (Vermilion.Seq.len paths - s)) ∧ False) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.assert_1_decreases

-- vrml:begin reclaim_plan.key_mask.assert_22 299929291cc7e8f3
/--
Generated VC `reclaim_plan.key_mask.assert_22`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1312:16-1312:88`
- Rust/SST construct: Rust source assertion
- AssertId: `22`
- Statement hash: `299929291cc7e8f3`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩
-/
def assert_22_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1312
  startColumn := 16
  endLine := 1312
  endColumn := 88
  assertId := "22"
  functionName := "reclaim_plan.key_mask"
  kind := "assert"
  statementHash := "299929291cc7e8f3"
}
@[vrml_obligation] theorem assert_22
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (q_2 : Int)
    (choose_spec_0 : (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2))) → (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2))) (Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2)))))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (then_0_assume_10 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (then_0_assume_11 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : Vermilion.Seq.len m = k)
    (loop_0_exit_5 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_exit_6 : (¬ (k < Vermilion.Seq.len keys)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m_2))
    (loop_1_exit_1 : Vermilion.inUnsignedRange 64 s)
    (loop_1_exit_2 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_exit_3 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_exit_4 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_exit_5 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_exit_6 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_exit_7 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_exit_8 : (¬ (s < Vermilion.Seq.len paths)))
    (assume_29 : True)
    (assume_30 : (0 ≤ q_2) ∧ (q_2 < Vermilion.Seq.len paths)) :
    ((((0 ≤ Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2)))) ∧ (Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2))) < Vermilion.Seq.len keys)) ∧ (Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2))) < Vermilion.Seq.len m_2)) ∧ Vermilion.Seq.index m_2 (Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2))))) ∧ (Vermilion.Seq.index keys (Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2)))) = Vermilion.Seq.index paths q_2) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.assert_22

-- vrml:begin reclaim_plan.key_mask.assert_23 c88378a339b06d39
/--
Generated VC `reclaim_plan.key_mask.assert_23`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1310:79-1310:117`
- Rust/SST construct: Rust source assertion
- AssertId: `23`
- Statement hash: `c88378a339b06d39`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys t⟩
-/
def assert_23_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1310
  startColumn := 79
  endLine := 1310
  endColumn := 117
  assertId := "23"
  functionName := "reclaim_plan.key_mask"
  kind := "assert"
  statementHash := "c88378a339b06d39"
}
@[vrml_obligation] theorem assert_23
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (q_2 : Int)
    (choose_spec_0 : (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2))) → (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2))) (Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2)))))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (then_0_assume_10 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (then_0_assume_11 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : Vermilion.Seq.len m = k)
    (loop_0_exit_5 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_exit_6 : (¬ (k < Vermilion.Seq.len keys)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m_2))
    (loop_1_exit_1 : Vermilion.inUnsignedRange 64 s)
    (loop_1_exit_2 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_exit_3 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_exit_4 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_exit_5 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_exit_6 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_exit_7 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_exit_8 : (¬ (s < Vermilion.Seq.len paths)))
    (assume_29 : True)
    (assume_30 : (0 ≤ q_2) ∧ (q_2 < Vermilion.Seq.len paths))
    (assert_22 : ((((0 ≤ Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2)))) ∧ (Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2))) < Vermilion.Seq.len keys)) ∧ (Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2))) < Vermilion.Seq.len m_2)) ∧ Vermilion.Seq.index m_2 (Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2))))) ∧ (Vermilion.Seq.index keys (Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q_2)))) = Vermilion.Seq.index paths q_2)) :
    reclaim_plan.key_marked_spec keys m_2 (Vermilion.Seq.index paths q_2) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_mask.assert_23

-- vrml:begin reclaim_plan.key_mask.ensures_24 3ae0285d64a1d18c
/--
Generated VC `reclaim_plan.key_mask.ensures_24`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1259:9-1259:82`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `24`
- Statement hash: `3ae0285d64a1d18c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index index vrml_i0⟩ ⟨Vermilion.Seq.index m t⟩ ⟨Vermilion.Seq.index m_2 t⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index paths q⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index paths q⟩
-/
def ensures_24_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1259
  startColumn := 9
  endLine := 1259
  endColumn := 82
  assertId := "24"
  functionName := "reclaim_plan.key_mask"
  kind := "ensures"
  statementHash := "3ae0285d64a1d18c"
}
@[vrml_obligation] theorem ensures_24
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (index : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Prop))
    (m : (Vermilion.Seq Prop))
    (k : Int)
    (m_2 : (Vermilion.Seq Prop))
    (s : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index paths vrml_i0) vrml_i1)))))))
    (requires_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len index)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index index vrml_i0))))
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len keys))
    (assume_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len index))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len paths))
    (then_0_assume_10 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (then_0_assume_11 : (Vermilion.Seq.len index ≠ Vermilion.Seq.len paths) → False)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Prop))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 k)
    (loop_0_exit_2 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len keys))
    (loop_0_exit_3 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_0_exit_4 : Vermilion.Seq.len m = k)
    (loop_0_exit_5 : (∀ (t : Int), (((0 ≤ t) ∧ (t < k)) → (¬ Vermilion.Seq.index m t))))
    (loop_0_exit_6 : (¬ (k < Vermilion.Seq.len keys)))
    (loop_1_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len m_2))
    (loop_1_exit_1 : Vermilion.inUnsignedRange 64 s)
    (loop_1_exit_2 : (0 ≤ s) ∧ (s ≤ Vermilion.Seq.len paths))
    (loop_1_exit_3 : Vermilion.Seq.len index = Vermilion.Seq.len paths)
    (loop_1_exit_4 : Vermilion.Seq.len keys = Vermilion.Seq.len keys)
    (loop_1_exit_5 : Vermilion.Seq.len m_2 = Vermilion.Seq.len keys)
    (loop_1_exit_6 : (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) → (∃ (q : Int), (((0 ≤ q) ∧ (q < s)) ∧ (Vermilion.Seq.index paths q = Vermilion.Seq.index keys t))))))
    (loop_1_exit_7 : (∀ (q : Int), (((0 ≤ q) ∧ (q < s)) → (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index m_2 t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index paths q))))))
    (loop_1_exit_8 : (¬ (s < Vermilion.Seq.len paths)))
    (assume_29 : (∀ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len paths)) → reclaim_plan.key_marked_spec keys m_2 (Vermilion.Seq.index paths q)))) :
    core.option.Option.is_Some (core.option.Option.Some m_2) → reclaim_plan.mask_matches_paths_spec keys paths (core.option.Option.get_Some__0 (core.option.Option.Some m_2)) := by
  intro _
  exact ⟨⟨loop_1_exit_5, fun t ht => by
    obtain ⟨q, hq, e⟩ := loop_1_exit_6 t ht
    exact ⟨q, ⟨hq.1, by omega⟩, e⟩⟩, fun q hq => assume_29 q hq⟩
-- vrml:end reclaim_plan.key_mask.ensures_24

end reclaim_plan.key_mask

