import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.count_true_upto_set

-- vrml:begin reclaim_plan.count_true_upto_set.assert_anonymous_0 602e578be04be7f9
/--
Generated VC `reclaim_plan.count_true_upto_set.assert_anonymous_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:382:9-382:41`
- Rust/SST construct: could not prove termination
- AssertId: `anonymous_0`
- Statement hash: `602e578be04be7f9`
-/
def assert_anonymous_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 382
  startColumn := 9
  endLine := 382
  endColumn := 41
  assertId := "anonymous_0"
  functionName := "reclaim_plan.count_true_upto_set"
  kind := "assert"
  statementHash := "602e578be04be7f9"
}
@[vrml_obligation] theorem assert_anonymous_0
    (s : (Vermilion.Seq Prop))
    (i : Int)
    (k : Int)
    (requires_0 : (0 ≤ i) ∧ (i < Vermilion.Seq.len s))
    (requires_1 : (¬ Vermilion.Seq.index s i))
    (requires_2 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len s))
    (branch_0 : k > 0) :
    ((0 ≤ (k - 1)) ∧ ((k - 1) < k)) ∨ (((k - 1) = k) ∧ False) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.count_true_upto_set.assert_anonymous_0

-- vrml:begin reclaim_plan.count_true_upto_set.call_requires_0_0 ed64ff3156ef0d31
/--
Generated VC `reclaim_plan.count_true_upto_set.call_requires_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:382:9-382:41`
- Rust/SST construct: call count_true_upto_set
- AssertId: `0_0`
- Statement hash: `ed64ff3156ef0d31`
-/
def call_requires_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 382
  startColumn := 9
  endLine := 382
  endColumn := 41
  assertId := "0_0"
  functionName := "reclaim_plan.count_true_upto_set"
  kind := "call_requires"
  statementHash := "ed64ff3156ef0d31"
}
@[vrml_obligation] theorem call_requires_0_0
    (s : (Vermilion.Seq Prop))
    (i : Int)
    (k : Int)
    (requires_0 : (0 ≤ i) ∧ (i < Vermilion.Seq.len s))
    (requires_1 : (¬ Vermilion.Seq.index s i))
    (requires_2 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len s))
    (branch_0 : k > 0)
    (assert_anonymous_0 : ((0 ≤ (k - 1)) ∧ ((k - 1) < k)) ∨ (((k - 1) = k) ∧ False)) :
    (0 ≤ i) ∧ (i < Vermilion.Seq.len s) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.count_true_upto_set.call_requires_0_0

-- vrml:begin reclaim_plan.count_true_upto_set.call_requires_0_1 01babe08d86287ac
/--
Generated VC `reclaim_plan.count_true_upto_set.call_requires_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:382:9-382:41`
- Rust/SST construct: call count_true_upto_set
- AssertId: `0_1`
- Statement hash: `01babe08d86287ac`
-/
def call_requires_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 382
  startColumn := 9
  endLine := 382
  endColumn := 41
  assertId := "0_1"
  functionName := "reclaim_plan.count_true_upto_set"
  kind := "call_requires"
  statementHash := "01babe08d86287ac"
}
@[vrml_obligation] theorem call_requires_0_1
    (s : (Vermilion.Seq Prop))
    (i : Int)
    (k : Int)
    (requires_0 : (0 ≤ i) ∧ (i < Vermilion.Seq.len s))
    (requires_1 : (¬ Vermilion.Seq.index s i))
    (requires_2 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len s))
    (branch_0 : k > 0)
    (assert_anonymous_0 : ((0 ≤ (k - 1)) ∧ ((k - 1) < k)) ∨ (((k - 1) = k) ∧ False)) :
    (¬ Vermilion.Seq.index s i) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.count_true_upto_set.call_requires_0_1

-- vrml:begin reclaim_plan.count_true_upto_set.call_requires_0_2 00418afc4ebabb54
/--
Generated VC `reclaim_plan.count_true_upto_set.call_requires_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:382:9-382:41`
- Rust/SST construct: call count_true_upto_set
- AssertId: `0_2`
- Statement hash: `00418afc4ebabb54`
-/
def call_requires_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 382
  startColumn := 9
  endLine := 382
  endColumn := 41
  assertId := "0_2"
  functionName := "reclaim_plan.count_true_upto_set"
  kind := "call_requires"
  statementHash := "00418afc4ebabb54"
}
@[vrml_obligation] theorem call_requires_0_2
    (s : (Vermilion.Seq Prop))
    (i : Int)
    (k : Int)
    (requires_0 : (0 ≤ i) ∧ (i < Vermilion.Seq.len s))
    (requires_1 : (¬ Vermilion.Seq.index s i))
    (requires_2 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len s))
    (branch_0 : k > 0)
    (assert_anonymous_0 : ((0 ≤ (k - 1)) ∧ ((k - 1) < k)) ∨ (((k - 1) = k) ∧ False)) :
    (0 ≤ (k - 1)) ∧ ((k - 1) ≤ Vermilion.Seq.len s) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.count_true_upto_set.call_requires_0_2

-- vrml:begin reclaim_plan.count_true_upto_set.ensures_1 a90f0738a5a2aeb6
/--
Generated VC `reclaim_plan.count_true_upto_set.ensures_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:378:13-378:111`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1`
- Statement hash: `a90f0738a5a2aeb6`
-/
def ensures_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 378
  startColumn := 13
  endLine := 378
  endColumn := 111
  assertId := "1"
  functionName := "reclaim_plan.count_true_upto_set"
  kind := "ensures"
  statementHash := "a90f0738a5a2aeb6"
}
@[vrml_obligation] theorem ensures_1
    (s : (Vermilion.Seq Prop))
    (i : Int)
    (k : Int)
    (requires_0 : (0 ≤ i) ∧ (i < Vermilion.Seq.len s))
    (requires_1 : (¬ Vermilion.Seq.index s i))
    (requires_2 : (0 ≤ k) ∧ (k ≤ Vermilion.Seq.len s))
    (then_0_assert_anonymous_0 : (k > 0) → (((0 ≤ (k - 1)) ∧ ((k - 1) < k)) ∨ (((k - 1) = k) ∧ False)))
    (then_0_call_count_true_upto_set_ensures_0 : (k > 0) → (reclaim_plan.count_true_upto (Vermilion.Seq.update s i True) (k - 1) = Vermilion.natClip (reclaim_plan.count_true_upto s (k - 1) + (Vermilion.iteP (i < (k - 1)) 1 0)))) :
    reclaim_plan.count_true_upto (Vermilion.Seq.update s i True) k = Vermilion.natClip (reclaim_plan.count_true_upto s k + (Vermilion.iteP (i < k) 1 0)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.count_true_upto_set.ensures_1

end reclaim_plan.count_true_upto_set

