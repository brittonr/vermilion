import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.no_live_candidate

-- vrml:begin reclaim_plan.no_live_candidate.assert_0 60ca3d4b2819d76d
/--
Generated VC `reclaim_plan.no_live_candidate.assert_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:189:16-189:41`
- Rust/SST construct: Rust source assertion
- AssertId: `0`
- Statement hash: `60ca3d4b2819d76d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 189
  startColumn := 16
  endLine := 189
  endColumn := 41
  assertId := "0"
  functionName := "reclaim_plan.no_live_candidate"
  kind := "assert"
  statementHash := "60ca3d4b2819d76d"
}
@[vrml_obligation] theorem assert_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (v : Int)
    (choose_spec_0 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_3 : (0 ≤ v) ∧ (v < n))
    (requires_4 : Vermilion.Seq.index candidate v)
    (branch_0 : reclaim_plan.live_spec edges roots v) :
    Vermilion.Seq.index retained (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) := by
  obtain ⟨r0, f0, hf0, hr0, hreach⟩ := branch_0
  have hR := choose_spec_0 ⟨r0, hr0, f0, hf0, hreach⟩
  exact requires_2.1.1.2 _ hR.1
-- vrml:end reclaim_plan.no_live_candidate.assert_0

-- vrml:begin reclaim_plan.no_live_candidate.call_requires_1_0 aa2ae8a4bf309267
/--
Generated VC `reclaim_plan.no_live_candidate.call_requires_1_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:190:9-190:84`
- Rust/SST construct: call closed_set_contains_reachable
- AssertId: `1_0`
- Statement hash: `aa2ae8a4bf309267`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩
-/
def call_requires_1_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 190
  startColumn := 9
  endLine := 190
  endColumn := 84
  assertId := "1_0"
  functionName := "reclaim_plan.no_live_candidate"
  kind := "call_requires"
  statementHash := "aa2ae8a4bf309267"
}
@[vrml_obligation] theorem call_requires_1_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (v : Int)
    (choose_spec_0 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_3 : (0 ≤ v) ∧ (v < n))
    (requires_4 : Vermilion.Seq.index candidate v)
    (branch_0 : reclaim_plan.live_spec edges roots v)
    (assert_0 : Vermilion.Seq.index retained (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))) :
    Vermilion.Seq.len retained = n := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.no_live_candidate.call_requires_1_0

-- vrml:begin reclaim_plan.no_live_candidate.call_requires_1_1 ce2c85aeb5e16388
/--
Generated VC `reclaim_plan.no_live_candidate.call_requires_1_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:190:9-190:84`
- Rust/SST construct: call closed_set_contains_reachable
- AssertId: `1_1`
- Statement hash: `ce2c85aeb5e16388`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩
-/
def call_requires_1_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 190
  startColumn := 9
  endLine := 190
  endColumn := 84
  assertId := "1_1"
  functionName := "reclaim_plan.no_live_candidate"
  kind := "call_requires"
  statementHash := "ce2c85aeb5e16388"
}
@[vrml_obligation] theorem call_requires_1_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (v : Int)
    (choose_spec_0 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_3 : (0 ≤ v) ∧ (v < n))
    (requires_4 : Vermilion.Seq.index candidate v)
    (branch_0 : reclaim_plan.live_spec edges roots v)
    (assert_0 : Vermilion.Seq.index retained (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))) :
    reclaim_plan.edges_in_range_spec n edges := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.no_live_candidate.call_requires_1_1

-- vrml:begin reclaim_plan.no_live_candidate.call_requires_1_2 50840a5f444da794
/--
Generated VC `reclaim_plan.no_live_candidate.call_requires_1_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:190:9-190:84`
- Rust/SST construct: call closed_set_contains_reachable
- AssertId: `1_2`
- Statement hash: `50840a5f444da794`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩
-/
def call_requires_1_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 190
  startColumn := 9
  endLine := 190
  endColumn := 84
  assertId := "1_2"
  functionName := "reclaim_plan.no_live_candidate"
  kind := "call_requires"
  statementHash := "50840a5f444da794"
}
@[vrml_obligation] theorem call_requires_1_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (v : Int)
    (choose_spec_0 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_3 : (0 ≤ v) ∧ (v < n))
    (requires_4 : Vermilion.Seq.index candidate v)
    (branch_0 : reclaim_plan.live_spec edges roots v)
    (assert_0 : Vermilion.Seq.index retained (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))) :
    reclaim_plan.closed_spec edges retained := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.no_live_candidate.call_requires_1_2

-- vrml:begin reclaim_plan.no_live_candidate.call_requires_1_3 a5465c318483c84b
/--
Generated VC `reclaim_plan.no_live_candidate.call_requires_1_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:190:9-190:84`
- Rust/SST construct: call closed_set_contains_reachable
- AssertId: `1_3`
- Statement hash: `a5465c318483c84b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩
-/
def call_requires_1_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 190
  startColumn := 9
  endLine := 190
  endColumn := 84
  assertId := "1_3"
  functionName := "reclaim_plan.no_live_candidate"
  kind := "call_requires"
  statementHash := "a5465c318483c84b"
}
@[vrml_obligation] theorem call_requires_1_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (v : Int)
    (choose_spec_0 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_3 : (0 ≤ v) ∧ (v < n))
    (requires_4 : Vermilion.Seq.index candidate v)
    (branch_0 : reclaim_plan.live_spec edges roots v)
    (assert_0 : Vermilion.Seq.index retained (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))) :
    (0 ≤ Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) ∧ (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))) < n) := by
  obtain ⟨r0, f0, hf0, hr0, hreach⟩ := branch_0
  have hR := choose_spec_0 ⟨r0, hr0, f0, hf0, hreach⟩
  have adm := requires_2.1.1.1.1.1
  have b := requires_1 _ hR.1
  unfold Vermilion.inUnsignedRange at b
  exact ⟨b.1, adm.1.1.2 _ hR.1⟩
-- vrml:end reclaim_plan.no_live_candidate.call_requires_1_3

-- vrml:begin reclaim_plan.no_live_candidate.call_requires_1_4 74cdd42476a33a70
/--
Generated VC `reclaim_plan.no_live_candidate.call_requires_1_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:190:9-190:84`
- Rust/SST construct: call closed_set_contains_reachable
- AssertId: `1_4`
- Statement hash: `74cdd42476a33a70`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩
-/
def call_requires_1_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 190
  startColumn := 9
  endLine := 190
  endColumn := 84
  assertId := "1_4"
  functionName := "reclaim_plan.no_live_candidate"
  kind := "call_requires"
  statementHash := "74cdd42476a33a70"
}
@[vrml_obligation] theorem call_requires_1_4
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (v : Int)
    (choose_spec_0 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_3 : (0 ≤ v) ∧ (v < n))
    (requires_4 : Vermilion.Seq.index candidate v)
    (branch_0 : reclaim_plan.live_spec edges roots v)
    (assert_0 : Vermilion.Seq.index retained (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))) :
    Vermilion.Seq.index retained (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.no_live_candidate.call_requires_1_4

-- vrml:begin reclaim_plan.no_live_candidate.call_requires_1_5 79c3e2b2453e2858
/--
Generated VC `reclaim_plan.no_live_candidate.call_requires_1_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:190:9-190:84`
- Rust/SST construct: call closed_set_contains_reachable
- AssertId: `1_5`
- Statement hash: `79c3e2b2453e2858`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩
-/
def call_requires_1_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 190
  startColumn := 9
  endLine := 190
  endColumn := 84
  assertId := "1_5"
  functionName := "reclaim_plan.no_live_candidate"
  kind := "call_requires"
  statementHash := "79c3e2b2453e2858"
}
@[vrml_obligation] theorem call_requires_1_5
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (v : Int)
    (choose_spec_0 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_3 : (0 ≤ v) ∧ (v < n))
    (requires_4 : Vermilion.Seq.index candidate v)
    (branch_0 : reclaim_plan.live_spec edges roots v)
    (assert_0 : Vermilion.Seq.index retained (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))) :
    reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))) := by
  obtain ⟨r0, f0, hf0, hr0, hreach⟩ := branch_0
  have hR := choose_spec_0 ⟨r0, hr0, f0, hf0, hreach⟩
  exact (choose_spec_1 hR.2).2
-- vrml:end reclaim_plan.no_live_candidate.call_requires_1_5

-- vrml:begin reclaim_plan.no_live_candidate.assert_2 3e4aa94738756cae
/--
Generated VC `reclaim_plan.no_live_candidate.assert_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:191:16-191:64`
- Rust/SST construct: Rust source assertion
- AssertId: `2`
- Statement hash: `3e4aa94738756cae`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 191
  startColumn := 16
  endLine := 191
  endColumn := 64
  assertId := "2"
  functionName := "reclaim_plan.no_live_candidate"
  kind := "assert"
  statementHash := "3e4aa94738756cae"
}
@[vrml_obligation] theorem assert_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (v : Int)
    (choose_spec_0 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_3 : (0 ≤ v) ∧ (v < n))
    (requires_4 : Vermilion.Seq.index candidate v)
    (branch_0 : reclaim_plan.live_spec edges roots v)
    (assert_0 : Vermilion.Seq.index retained (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))))
    (call_closed_set_contains_reachable_ensures_0 : Vermilion.Seq.index retained v) :
    Vermilion.Seq.index candidate v ↔ (Vermilion.Seq.index reclaimable v ∧ (¬ Vermilion.Seq.index retained v)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.no_live_candidate.assert_2

-- vrml:begin reclaim_plan.no_live_candidate.ensures_3 7e63907b4bb4e4c3
/--
Generated VC `reclaim_plan.no_live_candidate.ensures_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:183:13-183:40`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3`
- Statement hash: `7e63907b4bb4e4c3`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩
-/
def ensures_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 183
  startColumn := 13
  endLine := 183
  endColumn := 40
  assertId := "3"
  functionName := "reclaim_plan.no_live_candidate"
  kind := "ensures"
  statementHash := "7e63907b4bb4e4c3"
}
@[vrml_obligation] theorem ensures_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (v : Int)
    (choose_spec_0 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_3 : (0 ≤ v) ∧ (v < n))
    (requires_4 : Vermilion.Seq.index candidate v)
    (then_0_assert_0 : reclaim_plan.live_spec edges roots v → Vermilion.Seq.index retained (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))))
    (then_0_call_closed_set_contains_reachable_ensures_0 : reclaim_plan.live_spec edges roots v → Vermilion.Seq.index retained v)
    (then_0_assert_2 : reclaim_plan.live_spec edges roots v → (Vermilion.Seq.index candidate v ↔ (Vermilion.Seq.index reclaimable v ∧ (¬ Vermilion.Seq.index retained v)))) :
    (¬ reclaim_plan.live_spec edges roots v) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.no_live_candidate.ensures_3

end reclaim_plan.no_live_candidate

