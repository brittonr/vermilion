import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.live_mono

-- vrml:begin reclaim_plan.live_mono.call_requires_0_0 ea55f746ec8636d3
/--
Generated VC `reclaim_plan.live_mono.call_requires_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:636:5-636:66`
- Rust/SST construct: call reachable_edges_mono
- AssertId: `0_0`
- Statement hash: `ea55f746ec8636d3`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges2 vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots2 vrml_i0⟩
-/
def call_requires_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 636
  startColumn := 5
  endLine := 636
  endColumn := 66
  assertId := "0_0"
  functionName := "reclaim_plan.live_mono"
  kind := "call_requires"
  statementHash := "ea55f746ec8636d3"
}
@[vrml_obligation] theorem call_requires_0_0
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges2 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (roots2 : (Vermilion.Seq Int))
    (v : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges2)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges2 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges2 vrml_i0))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots2 vrml_i0))))
    (requires_4 : reclaim_plan.edges_subset_spec edges edges2)
    (requires_5 : reclaim_plan.roots_subset_spec roots roots2)
    (requires_6 : reclaim_plan.live_spec edges roots v) :
    reclaim_plan.edges_subset_spec edges edges2 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.live_mono.call_requires_0_0

-- vrml:begin reclaim_plan.live_mono.call_requires_0_1 ba48452ba57b3b13
/--
Generated VC `reclaim_plan.live_mono.call_requires_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:636:5-636:66`
- Rust/SST construct: call reachable_edges_mono
- AssertId: `0_1`
- Statement hash: `ba48452ba57b3b13`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges2 vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots2 vrml_i0⟩
-/
def call_requires_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 636
  startColumn := 5
  endLine := 636
  endColumn := 66
  assertId := "0_1"
  functionName := "reclaim_plan.live_mono"
  kind := "call_requires"
  statementHash := "ba48452ba57b3b13"
}
@[vrml_obligation] theorem call_requires_0_1
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges2 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (roots2 : (Vermilion.Seq Int))
    (v : Int)
    (choose_spec_0 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges2)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges2 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges2 vrml_i0))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots2 vrml_i0))))
    (requires_4 : reclaim_plan.edges_subset_spec edges edges2)
    (requires_5 : reclaim_plan.roots_subset_spec roots roots2)
    (requires_6 : reclaim_plan.live_spec edges roots v) :
    reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.live_mono.call_requires_0_1

-- vrml:begin reclaim_plan.live_mono.assert_1 ca76657d4bb000e5
/--
Generated VC `reclaim_plan.live_mono.assert_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:637:12-637:86`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `ca76657d4bb000e5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index roots2 s⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots2 s⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots2 s⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges2 vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots2 vrml_i0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 637
  startColumn := 12
  endLine := 637
  endColumn := 86
  assertId := "1"
  functionName := "reclaim_plan.live_mono"
  kind := "assert"
  statementHash := "ca76657d4bb000e5"
}
@[vrml_obligation] theorem assert_1
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges2 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (roots2 : (Vermilion.Seq Int))
    (v : Int)
    (choose_spec_0 : (∃ (s : Int), (((0 ≤ s) ∧ (s < Vermilion.Seq.len roots2)) ∧ (Vermilion.Seq.index roots2 s = Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))))) → (fun (s : Int) => (((0 ≤ s) ∧ (s < Vermilion.Seq.len roots2)) ∧ (Vermilion.Seq.index roots2 s = Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))))) (Vermilion.chooseSpec (fun (s : Int) => (((0 ≤ s) ∧ (s < Vermilion.Seq.len roots2)) ∧ (Vermilion.Seq.index roots2 s = Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))))))
    (choose_spec_1 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))
    (choose_spec_2 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges2)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges2 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges2 vrml_i0))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots2 vrml_i0))))
    (requires_4 : reclaim_plan.edges_subset_spec edges edges2)
    (requires_5 : reclaim_plan.roots_subset_spec roots roots2)
    (requires_6 : reclaim_plan.live_spec edges roots v)
    (call_reachable_edges_mono_ensures_0 : reclaim_plan.reachable_fuel edges2 (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)))) :
    ((0 ≤ Vermilion.chooseSpec (fun (s : Int) => (((0 ≤ s) ∧ (s < Vermilion.Seq.len roots2)) ∧ (Vermilion.Seq.index roots2 s = Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))))) ∧ (Vermilion.chooseSpec (fun (s : Int) => (((0 ≤ s) ∧ (s < Vermilion.Seq.len roots2)) ∧ (Vermilion.Seq.index roots2 s = Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))))) < Vermilion.Seq.len roots2)) ∧ reclaim_plan.reachable_fuel edges2 (Vermilion.Seq.index roots2 (Vermilion.chooseSpec (fun (s : Int) => (((0 ≤ s) ∧ (s < Vermilion.Seq.len roots2)) ∧ (Vermilion.Seq.index roots2 s = Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))))))) v (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.live_mono.assert_1

-- vrml:begin reclaim_plan.live_mono.ensures_2 91b0121933086c92
/--
Generated VC `reclaim_plan.live_mono.ensures_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:630:13-630:41`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2`
- Statement hash: `91b0121933086c92`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges2 vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots2 vrml_i0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots2 s⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots2 s⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots2 s⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩
-/
def ensures_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 630
  startColumn := 13
  endLine := 630
  endColumn := 41
  assertId := "2"
  functionName := "reclaim_plan.live_mono"
  kind := "ensures"
  statementHash := "91b0121933086c92"
}
@[vrml_obligation] theorem ensures_2
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges2 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (roots2 : (Vermilion.Seq Int))
    (v : Int)
    (choose_spec_0 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (choose_spec_2 : (∃ (s : Int), (((0 ≤ s) ∧ (s < Vermilion.Seq.len roots2)) ∧ (Vermilion.Seq.index roots2 s = Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))))) → (fun (s : Int) => (((0 ≤ s) ∧ (s < Vermilion.Seq.len roots2)) ∧ (Vermilion.Seq.index roots2 s = Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))))) (Vermilion.chooseSpec (fun (s : Int) => (((0 ≤ s) ∧ (s < Vermilion.Seq.len roots2)) ∧ (Vermilion.Seq.index roots2 s = Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges2)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges2 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges2 vrml_i0))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots2 vrml_i0))))
    (requires_4 : reclaim_plan.edges_subset_spec edges edges2)
    (requires_5 : reclaim_plan.roots_subset_spec roots roots2)
    (requires_6 : reclaim_plan.live_spec edges roots v)
    (call_reachable_edges_mono_ensures_0 : reclaim_plan.reachable_fuel edges2 (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (assert_1 : ((0 ≤ Vermilion.chooseSpec (fun (s : Int) => (((0 ≤ s) ∧ (s < Vermilion.Seq.len roots2)) ∧ (Vermilion.Seq.index roots2 s = Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))))) ∧ (Vermilion.chooseSpec (fun (s : Int) => (((0 ≤ s) ∧ (s < Vermilion.Seq.len roots2)) ∧ (Vermilion.Seq.index roots2 s = Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))))) < Vermilion.Seq.len roots2)) ∧ reclaim_plan.reachable_fuel edges2 (Vermilion.Seq.index roots2 (Vermilion.chooseSpec (fun (s : Int) => (((0 ≤ s) ∧ (s < Vermilion.Seq.len roots2)) ∧ (Vermilion.Seq.index roots2 s = Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))))))) v (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)))) :
    reclaim_plan.live_spec edges2 roots2 v := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.live_mono.ensures_2

end reclaim_plan.live_mono

