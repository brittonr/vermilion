import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.sorted_keys_distinct

-- vrml:begin reclaim_plan.sorted_keys_distinct.call_requires_0 cc5715ae99de675a
/--
Generated VC `reclaim_plan.sorted_keys_distinct.call_requires_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:849:9-849:46`
- Rust/SST construct: call key_lt_implies_ne
- AssertId: `0`
- Statement hash: `cc5715ae99de675a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩
-/
def call_requires_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 849
  startColumn := 9
  endLine := 849
  endColumn := 46
  assertId := "0"
  functionName := "reclaim_plan.sorted_keys_distinct"
  kind := "call_requires"
  statementHash := "cc5715ae99de675a"
}
@[vrml_obligation] theorem call_requires_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (j : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : reclaim_plan.keys_sorted_spec keys)
    (requires_2 : (0 ≤ i) ∧ (i < Vermilion.Seq.len keys))
    (requires_3 : (0 ≤ j) ∧ (j < Vermilion.Seq.len keys))
    (requires_4 : Vermilion.Seq.index keys i = Vermilion.Seq.index keys j)
    (branch_0 : i < j) :
    reclaim_plan.key_lt_spec (Vermilion.Seq.index keys i) (Vermilion.Seq.index keys j) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.sorted_keys_distinct.call_requires_0

-- vrml:begin reclaim_plan.sorted_keys_distinct.call_requires_1 09ca6e0816bfe4b6
/--
Generated VC `reclaim_plan.sorted_keys_distinct.call_requires_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:851:9-851:46`
- Rust/SST construct: call key_lt_implies_ne
- AssertId: `1`
- Statement hash: `09ca6e0816bfe4b6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩
-/
def call_requires_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 851
  startColumn := 9
  endLine := 851
  endColumn := 46
  assertId := "1"
  functionName := "reclaim_plan.sorted_keys_distinct"
  kind := "call_requires"
  statementHash := "09ca6e0816bfe4b6"
}
@[vrml_obligation] theorem call_requires_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (j : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : reclaim_plan.keys_sorted_spec keys)
    (requires_2 : (0 ≤ i) ∧ (i < Vermilion.Seq.len keys))
    (requires_3 : (0 ≤ j) ∧ (j < Vermilion.Seq.len keys))
    (requires_4 : Vermilion.Seq.index keys i = Vermilion.Seq.index keys j)
    (branch_0 : (¬ (i < j)))
    (branch_1 : j < i) :
    reclaim_plan.key_lt_spec (Vermilion.Seq.index keys j) (Vermilion.Seq.index keys i) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.sorted_keys_distinct.call_requires_1

-- vrml:begin reclaim_plan.sorted_keys_distinct.ensures_2 65b06853b07e1e23
/--
Generated VC `reclaim_plan.sorted_keys_distinct.ensures_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:846:13-846:19`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2`
- Statement hash: `65b06853b07e1e23`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩
-/
def ensures_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 846
  startColumn := 13
  endLine := 846
  endColumn := 19
  assertId := "2"
  functionName := "reclaim_plan.sorted_keys_distinct"
  kind := "ensures"
  statementHash := "65b06853b07e1e23"
}
@[vrml_obligation] theorem ensures_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (i : Int)
    (j : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : reclaim_plan.keys_sorted_spec keys)
    (requires_2 : (0 ≤ i) ∧ (i < Vermilion.Seq.len keys))
    (requires_3 : (0 ≤ j) ∧ (j < Vermilion.Seq.len keys))
    (requires_4 : Vermilion.Seq.index keys i = Vermilion.Seq.index keys j)
    (then_0_call_key_lt_implies_ne_ensures_0 : (i < j) → (¬ (Vermilion.Seq.index keys i = Vermilion.Seq.index keys j)))
    (else_0_then_1_call_key_lt_implies_ne_1_ensures_0 : (¬ (i < j)) → ((j < i) → (¬ (Vermilion.Seq.index keys j = Vermilion.Seq.index keys i)))) :
    i = j := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.sorted_keys_distinct.ensures_2

end reclaim_plan.sorted_keys_distinct

