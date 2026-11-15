import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.no_listed_candidate_path_is_live

-- vrml:begin reclaim_plan.no_listed_candidate_path_is_live.assert_0 90cec50f3bde6a58
/--
Generated VC `reclaim_plan.no_listed_candidate_path_is_live.assert_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1331:12-1331:65`
- Rust/SST construct: Rust source assertion
- AssertId: `0`
- Statement hash: `90cec50f3bde6a58`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index candidate_paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index candidate_paths vrml_i0) vrml_i1⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1331
  startColumn := 12
  endLine := 1331
  endColumn := 65
  assertId := "0"
  functionName := "reclaim_plan.no_listed_candidate_path_is_live"
  kind := "assert"
  statementHash := "90cec50f3bde6a58"
}
@[vrml_obligation] theorem assert_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (candidate_paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (s : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len candidate_paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index candidate_paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index candidate_paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index candidate_paths vrml_i0) vrml_i1)))))))
    (requires_6 : reclaim_plan.projection_valid_spec keys refs root_keys edges roots)
    (requires_7 : reclaim_plan.plan_valid_spec (Vermilion.Seq.len keys) edges roots reclaimable retained candidate)
    (requires_8 : reclaim_plan.mask_matches_paths_spec keys candidate_paths candidate)
    (requires_9 : (0 ≤ s) ∧ (s < Vermilion.Seq.len candidate_paths)) :
    reclaim_plan.key_marked_spec keys candidate (Vermilion.Seq.index candidate_paths s) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.no_listed_candidate_path_is_live.assert_0

-- vrml:begin reclaim_plan.no_listed_candidate_path_is_live.call_requires_1_0 a598144f5224a335
/--
Generated VC `reclaim_plan.no_listed_candidate_path_is_live.call_requires_1_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1334:5-1334:103`
- Rust/SST construct: call no_live_key_is_candidate
- AssertId: `1_0`
- Statement hash: `a598144f5224a335`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index candidate_paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index candidate_paths vrml_i0) vrml_i1⟩
-/
def call_requires_1_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1334
  startColumn := 5
  endLine := 1334
  endColumn := 103
  assertId := "1_0"
  functionName := "reclaim_plan.no_listed_candidate_path_is_live"
  kind := "call_requires"
  statementHash := "a598144f5224a335"
}
@[vrml_obligation] theorem call_requires_1_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (candidate_paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (s : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len candidate_paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index candidate_paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index candidate_paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index candidate_paths vrml_i0) vrml_i1)))))))
    (requires_6 : reclaim_plan.projection_valid_spec keys refs root_keys edges roots)
    (requires_7 : reclaim_plan.plan_valid_spec (Vermilion.Seq.len keys) edges roots reclaimable retained candidate)
    (requires_8 : reclaim_plan.mask_matches_paths_spec keys candidate_paths candidate)
    (requires_9 : (0 ≤ s) ∧ (s < Vermilion.Seq.len candidate_paths))
    (assert_0 : reclaim_plan.key_marked_spec keys candidate (Vermilion.Seq.index candidate_paths s)) :
    reclaim_plan.projection_valid_spec keys refs root_keys edges roots := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.no_listed_candidate_path_is_live.call_requires_1_0

-- vrml:begin reclaim_plan.no_listed_candidate_path_is_live.call_requires_1_1 77dc3054f5bbaf9c
/--
Generated VC `reclaim_plan.no_listed_candidate_path_is_live.call_requires_1_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1334:5-1334:103`
- Rust/SST construct: call no_live_key_is_candidate
- AssertId: `1_1`
- Statement hash: `77dc3054f5bbaf9c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index candidate_paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index candidate_paths vrml_i0) vrml_i1⟩
-/
def call_requires_1_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1334
  startColumn := 5
  endLine := 1334
  endColumn := 103
  assertId := "1_1"
  functionName := "reclaim_plan.no_listed_candidate_path_is_live"
  kind := "call_requires"
  statementHash := "77dc3054f5bbaf9c"
}
@[vrml_obligation] theorem call_requires_1_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (candidate_paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (s : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len candidate_paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index candidate_paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index candidate_paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index candidate_paths vrml_i0) vrml_i1)))))))
    (requires_6 : reclaim_plan.projection_valid_spec keys refs root_keys edges roots)
    (requires_7 : reclaim_plan.plan_valid_spec (Vermilion.Seq.len keys) edges roots reclaimable retained candidate)
    (requires_8 : reclaim_plan.mask_matches_paths_spec keys candidate_paths candidate)
    (requires_9 : (0 ≤ s) ∧ (s < Vermilion.Seq.len candidate_paths))
    (assert_0 : reclaim_plan.key_marked_spec keys candidate (Vermilion.Seq.index candidate_paths s)) :
    reclaim_plan.plan_valid_spec (Vermilion.Seq.len keys) edges roots reclaimable retained candidate := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.no_listed_candidate_path_is_live.call_requires_1_1

-- vrml:begin reclaim_plan.no_listed_candidate_path_is_live.call_requires_1_2 efc2e47b7ef3851d
/--
Generated VC `reclaim_plan.no_listed_candidate_path_is_live.call_requires_1_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1334:5-1334:103`
- Rust/SST construct: call no_live_key_is_candidate
- AssertId: `1_2`
- Statement hash: `efc2e47b7ef3851d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index candidate_paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index candidate_paths vrml_i0) vrml_i1⟩
-/
def call_requires_1_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1334
  startColumn := 5
  endLine := 1334
  endColumn := 103
  assertId := "1_2"
  functionName := "reclaim_plan.no_listed_candidate_path_is_live"
  kind := "call_requires"
  statementHash := "efc2e47b7ef3851d"
}
@[vrml_obligation] theorem call_requires_1_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (candidate_paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (s : Int)
    (choose_spec_0 : (∃ (t : Int), (((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (t < Vermilion.Seq.len candidate)) ∧ Vermilion.Seq.index candidate t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index candidate_paths s))) → (fun (t : Int) => (((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (t < Vermilion.Seq.len candidate)) ∧ Vermilion.Seq.index candidate t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index candidate_paths s))) (Vermilion.chooseSpec (fun (t : Int) => (((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (t < Vermilion.Seq.len candidate)) ∧ Vermilion.Seq.index candidate t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index candidate_paths s)))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len candidate_paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index candidate_paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index candidate_paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index candidate_paths vrml_i0) vrml_i1)))))))
    (requires_6 : reclaim_plan.projection_valid_spec keys refs root_keys edges roots)
    (requires_7 : reclaim_plan.plan_valid_spec (Vermilion.Seq.len keys) edges roots reclaimable retained candidate)
    (requires_8 : reclaim_plan.mask_matches_paths_spec keys candidate_paths candidate)
    (requires_9 : (0 ≤ s) ∧ (s < Vermilion.Seq.len candidate_paths))
    (assert_0 : reclaim_plan.key_marked_spec keys candidate (Vermilion.Seq.index candidate_paths s)) :
    (0 ≤ Vermilion.chooseSpec (fun (t : Int) => (((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (t < Vermilion.Seq.len candidate)) ∧ Vermilion.Seq.index candidate t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index candidate_paths s)))) ∧ (Vermilion.chooseSpec (fun (t : Int) => (((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (t < Vermilion.Seq.len candidate)) ∧ Vermilion.Seq.index candidate t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index candidate_paths s))) < Vermilion.Seq.len keys) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.no_listed_candidate_path_is_live.call_requires_1_2

-- vrml:begin reclaim_plan.no_listed_candidate_path_is_live.call_requires_1_3 472e82644c9bf99f
/--
Generated VC `reclaim_plan.no_listed_candidate_path_is_live.call_requires_1_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1334:5-1334:103`
- Rust/SST construct: call no_live_key_is_candidate
- AssertId: `1_3`
- Statement hash: `472e82644c9bf99f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index candidate_paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index candidate_paths vrml_i0) vrml_i1⟩
-/
def call_requires_1_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1334
  startColumn := 5
  endLine := 1334
  endColumn := 103
  assertId := "1_3"
  functionName := "reclaim_plan.no_listed_candidate_path_is_live"
  kind := "call_requires"
  statementHash := "472e82644c9bf99f"
}
@[vrml_obligation] theorem call_requires_1_3
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (candidate_paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (s : Int)
    (choose_spec_0 : (∃ (t : Int), (((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (t < Vermilion.Seq.len candidate)) ∧ Vermilion.Seq.index candidate t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index candidate_paths s))) → (fun (t : Int) => (((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (t < Vermilion.Seq.len candidate)) ∧ Vermilion.Seq.index candidate t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index candidate_paths s))) (Vermilion.chooseSpec (fun (t : Int) => (((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (t < Vermilion.Seq.len candidate)) ∧ Vermilion.Seq.index candidate t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index candidate_paths s)))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len candidate_paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index candidate_paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index candidate_paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index candidate_paths vrml_i0) vrml_i1)))))))
    (requires_6 : reclaim_plan.projection_valid_spec keys refs root_keys edges roots)
    (requires_7 : reclaim_plan.plan_valid_spec (Vermilion.Seq.len keys) edges roots reclaimable retained candidate)
    (requires_8 : reclaim_plan.mask_matches_paths_spec keys candidate_paths candidate)
    (requires_9 : (0 ≤ s) ∧ (s < Vermilion.Seq.len candidate_paths))
    (assert_0 : reclaim_plan.key_marked_spec keys candidate (Vermilion.Seq.index candidate_paths s)) :
    Vermilion.Seq.index candidate (Vermilion.chooseSpec (fun (t : Int) => (((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (t < Vermilion.Seq.len candidate)) ∧ Vermilion.Seq.index candidate t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index candidate_paths s)))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.no_listed_candidate_path_is_live.call_requires_1_3

-- vrml:begin reclaim_plan.no_listed_candidate_path_is_live.ensures_2 922e9b7500fc8fed
/--
Generated VC `reclaim_plan.no_listed_candidate_path_is_live.ensures_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1329:13-1329:71`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2`
- Statement hash: `922e9b7500fc8fed`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index candidate_paths vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index candidate_paths vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index keys t⟩
-/
def ensures_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1329
  startColumn := 13
  endLine := 1329
  endColumn := 71
  assertId := "2"
  functionName := "reclaim_plan.no_listed_candidate_path_is_live"
  kind := "ensures"
  statementHash := "922e9b7500fc8fed"
}
@[vrml_obligation] theorem ensures_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (candidate_paths : (Vermilion.Seq (Vermilion.Seq Int)))
    (s : Int)
    (choose_spec_0 : (∃ (t : Int), (((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (t < Vermilion.Seq.len candidate)) ∧ Vermilion.Seq.index candidate t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index candidate_paths s))) → (fun (t : Int) => (((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (t < Vermilion.Seq.len candidate)) ∧ Vermilion.Seq.index candidate t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index candidate_paths s))) (Vermilion.chooseSpec (fun (t : Int) => (((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (t < Vermilion.Seq.len candidate)) ∧ Vermilion.Seq.index candidate t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index candidate_paths s)))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len candidate_paths)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index candidate_paths vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index candidate_paths vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index candidate_paths vrml_i0) vrml_i1)))))))
    (requires_6 : reclaim_plan.projection_valid_spec keys refs root_keys edges roots)
    (requires_7 : reclaim_plan.plan_valid_spec (Vermilion.Seq.len keys) edges roots reclaimable retained candidate)
    (requires_8 : reclaim_plan.mask_matches_paths_spec keys candidate_paths candidate)
    (requires_9 : (0 ≤ s) ∧ (s < Vermilion.Seq.len candidate_paths))
    (assert_0 : reclaim_plan.key_marked_spec keys candidate (Vermilion.Seq.index candidate_paths s))
    (call_no_live_key_is_candidate_ensures_0 : (¬ reclaim_plan.key_live_spec keys refs root_keys (Vermilion.Seq.index keys (Vermilion.chooseSpec (fun (t : Int) => (((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (t < Vermilion.Seq.len candidate)) ∧ Vermilion.Seq.index candidate t) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index candidate_paths s))))))) :
    (¬ reclaim_plan.key_live_spec keys refs root_keys (Vermilion.Seq.index candidate_paths s)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.no_listed_candidate_path_is_live.ensures_2

end reclaim_plan.no_listed_candidate_path_is_live

