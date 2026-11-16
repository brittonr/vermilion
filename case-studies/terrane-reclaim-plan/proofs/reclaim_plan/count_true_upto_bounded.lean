import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

-- vrml:user:begin
theorem ctu_nonneg (s : Vermilion.Seq Prop) (k : Int) : 0 ≤ reclaim_plan.count_true_upto s k := by
  unfold reclaim_plan.count_true_upto
  split_ifs
  all_goals first
    | omega
    | (simp only [Vermilion.natClip, Vermilion.iteP]; split_ifs <;> omega)
    | (show (0 : Int) ≤ (default : Int); decide)
-- vrml:user:end

namespace reclaim_plan.count_true_upto_bounded

-- vrml:begin reclaim_plan.count_true_upto_bounded.assert_anonymous_0 f7458795f1ab468e
/--
Generated VC `reclaim_plan.count_true_upto_bounded.assert_anonymous_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:366:9-366:42`
- Rust/SST construct: could not prove termination
- AssertId: `anonymous_0`
- Statement hash: `f7458795f1ab468e`
-/
def assert_anonymous_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 366
  startColumn := 9
  endLine := 366
  endColumn := 42
  assertId := "anonymous_0"
  functionName := "reclaim_plan.count_true_upto_bounded"
  kind := "assert"
  statementHash := "f7458795f1ab468e"
}
@[vrml_obligation] theorem assert_anonymous_0
    (s : (Vermilion.Seq Prop))
    (k : Int)
    (requires_0 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len s))
    (branch_0 : k > 0) :
    ((0 ≤ (k - 1)) ∧ ((k - 1) < k)) ∨ (((k - 1) = k) ∧ False) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.count_true_upto_bounded.assert_anonymous_0

-- vrml:begin reclaim_plan.count_true_upto_bounded.call_requires_0 9d3f3be59d564df9
/--
Generated VC `reclaim_plan.count_true_upto_bounded.call_requires_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:366:9-366:42`
- Rust/SST construct: call count_true_upto_bounded
- AssertId: `0`
- Statement hash: `9d3f3be59d564df9`
-/
def call_requires_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 366
  startColumn := 9
  endLine := 366
  endColumn := 42
  assertId := "0"
  functionName := "reclaim_plan.count_true_upto_bounded"
  kind := "call_requires"
  statementHash := "9d3f3be59d564df9"
}
@[vrml_obligation] theorem call_requires_0
    (s : (Vermilion.Seq Prop))
    (k : Int)
    (requires_0 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len s))
    (branch_0 : k > 0)
    (assert_anonymous_0 : ((0 ≤ (k - 1)) ∧ ((k - 1) < k)) ∨ (((k - 1) = k) ∧ False)) :
    (0 ≤ (k - 1)) ∧ ((k - 1) ≤ Vermilion.Seq.len s) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.count_true_upto_bounded.call_requires_0

-- vrml:begin reclaim_plan.count_true_upto_bounded.ensures_1 32c9ada36252e81d
/--
Generated VC `reclaim_plan.count_true_upto_bounded.ensures_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:362:13-362:39`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1`
- Statement hash: `32c9ada36252e81d`
-/
def ensures_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 362
  startColumn := 13
  endLine := 362
  endColumn := 39
  assertId := "1"
  functionName := "reclaim_plan.count_true_upto_bounded"
  kind := "ensures"
  statementHash := "32c9ada36252e81d"
}
@[vrml_obligation] theorem ensures_1
    (s : (Vermilion.Seq Prop))
    (k : Int)
    (requires_0 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len s))
    (then_0_assert_anonymous_0 : (k > 0) → (((0 ≤ (k - 1)) ∧ ((k - 1) < k)) ∨ (((k - 1) = k) ∧ False)))
    (then_0_call_count_true_upto_bounded_ensures_0 : (k > 0) → (reclaim_plan.count_true_upto s (k - 1) ≤ (k - 1))) :
    reclaim_plan.count_true_upto s k ≤ k := by
  have hnn := ctu_nonneg s (k - 1)
  unfold reclaim_plan.count_true_upto
  rw [dif_pos requires_0.1]
  by_cases hk : k ≤ 0
  · rw [dif_pos hk]; omega
  · rw [dif_neg hk]
    have ih := then_0_call_count_true_upto_bounded_ensures_0 (by omega)
    simp only [Vermilion.natClip, Vermilion.iteP]
    split_ifs <;> omega
-- vrml:end reclaim_plan.count_true_upto_bounded.ensures_1

end reclaim_plan.count_true_upto_bounded

