import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.ref_resolved_extend

-- vrml:begin reclaim_plan.ref_resolved_extend.assert_0 b2a70381e46b8677
/--
Generated VC `reclaim_plan.ref_resolved_extend.assert_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1100:12-1100:24`
- Rust/SST construct: Rust source assertion
- AssertId: `0`
- Statement hash: `b2a70381e46b8677`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a k⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index a k⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1100
  startColumn := 12
  endLine := 1100
  endColumn := 24
  assertId := "0"
  functionName := "reclaim_plan.ref_resolved_extend"
  kind := "assert"
  statementHash := "b2a70381e46b8677"
}
@[vrml_obligation] theorem assert_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (a : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (b : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (j : Int)
    (choose_spec_0 : (∃ (k : Int), ((((0 ≤ k) ∧ (k < Vermilion.Seq.len a)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index a k) = i)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index a k) = Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index (Vermilion.Seq.index refs i) j)) ∧ reclaim_plan.has_edge_spec a i t))))) → (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len a)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index a k) = i)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index a k) = Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index (Vermilion.Seq.index refs i) j)) ∧ reclaim_plan.has_edge_spec a i t))))) (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len a)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index a k) = i)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index a k) = Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index (Vermilion.Seq.index refs i) j)) ∧ reclaim_plan.has_edge_spec a i t)))))))
    (choose_spec_1 : (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index (Vermilion.Seq.index refs i) j)) ∧ reclaim_plan.has_edge_spec a i t)) → (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index (Vermilion.Seq.index refs i) j)) ∧ reclaim_plan.has_edge_spec a i t)) (Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index (Vermilion.Seq.index refs i) j)) ∧ reclaim_plan.has_edge_spec a i t))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index a vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index a vrml_i0))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index b vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index b vrml_i0))))))
    (requires_4 : reclaim_plan.ref_resolved_spec keys refs a i j)
    (requires_5 : reclaim_plan.prefix_of_spec a b) :
    Vermilion.Seq.index b (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len a)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index a k) = i)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index a k) = Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index (Vermilion.Seq.index refs i) j)) ∧ reclaim_plan.has_edge_spec a i t)))))) = Vermilion.Seq.index a (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len a)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index a k) = i)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index a k) = Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index (Vermilion.Seq.index refs i) j)) ∧ reclaim_plan.has_edge_spec a i t)))))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.ref_resolved_extend.assert_0

-- vrml:begin reclaim_plan.ref_resolved_extend.assert_1 7342b99909e83e2f
/--
Generated VC `reclaim_plan.ref_resolved_extend.assert_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1101:12-1101:34`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `7342b99909e83e2f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩ ⟨Vermilion.Seq.index a k⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index a k⟩ ⟨Vermilion.Seq.index keys t⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1101
  startColumn := 12
  endLine := 1101
  endColumn := 34
  assertId := "1"
  functionName := "reclaim_plan.ref_resolved_extend"
  kind := "assert"
  statementHash := "7342b99909e83e2f"
}
@[vrml_obligation] theorem assert_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (a : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (b : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (j : Int)
    (choose_spec_0 : (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index (Vermilion.Seq.index refs i) j)) ∧ reclaim_plan.has_edge_spec a i t)) → (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index (Vermilion.Seq.index refs i) j)) ∧ reclaim_plan.has_edge_spec a i t)) (Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index (Vermilion.Seq.index refs i) j)) ∧ reclaim_plan.has_edge_spec a i t))))
    (choose_spec_1 : (∃ (k : Int), ((((0 ≤ k) ∧ (k < Vermilion.Seq.len a)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index a k) = i)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index a k) = Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index (Vermilion.Seq.index refs i) j)) ∧ reclaim_plan.has_edge_spec a i t))))) → (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len a)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index a k) = i)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index a k) = Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index (Vermilion.Seq.index refs i) j)) ∧ reclaim_plan.has_edge_spec a i t))))) (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len a)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index a k) = i)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index a k) = Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index (Vermilion.Seq.index refs i) j)) ∧ reclaim_plan.has_edge_spec a i t)))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index a vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index a vrml_i0))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index b vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index b vrml_i0))))))
    (requires_4 : reclaim_plan.ref_resolved_spec keys refs a i j)
    (requires_5 : reclaim_plan.prefix_of_spec a b)
    (assert_0 : Vermilion.Seq.index b (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len a)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index a k) = i)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index a k) = Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index (Vermilion.Seq.index refs i) j)) ∧ reclaim_plan.has_edge_spec a i t)))))) = Vermilion.Seq.index a (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len a)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index a k) = i)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index a k) = Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index (Vermilion.Seq.index refs i) j)) ∧ reclaim_plan.has_edge_spec a i t))))))) :
    reclaim_plan.has_edge_spec b i (Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index (Vermilion.Seq.index refs i) j)) ∧ reclaim_plan.has_edge_spec a i t))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.ref_resolved_extend.assert_1

-- vrml:begin reclaim_plan.ref_resolved_extend.ensures_2 ff1c96dcba392246
/--
Generated VC `reclaim_plan.ref_resolved_extend.ensures_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1096:13-1096:51`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2`
- Statement hash: `ff1c96dcba392246`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩ ⟨Vermilion.Seq.index a k⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index a k⟩ ⟨Vermilion.Seq.index keys t⟩ ⟨Vermilion.Seq.index keys t⟩
-/
def ensures_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1096
  startColumn := 13
  endLine := 1096
  endColumn := 51
  assertId := "2"
  functionName := "reclaim_plan.ref_resolved_extend"
  kind := "ensures"
  statementHash := "ff1c96dcba392246"
}
@[vrml_obligation] theorem ensures_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (a : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (b : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (i : Int)
    (j : Int)
    (choose_spec_0 : (∃ (k : Int), ((((0 ≤ k) ∧ (k < Vermilion.Seq.len a)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index a k) = i)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index a k) = Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index (Vermilion.Seq.index refs i) j)) ∧ reclaim_plan.has_edge_spec a i t))))) → (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len a)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index a k) = i)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index a k) = Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index (Vermilion.Seq.index refs i) j)) ∧ reclaim_plan.has_edge_spec a i t))))) (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len a)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index a k) = i)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index a k) = Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index (Vermilion.Seq.index refs i) j)) ∧ reclaim_plan.has_edge_spec a i t)))))))
    (choose_spec_1 : (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index (Vermilion.Seq.index refs i) j)) ∧ reclaim_plan.has_edge_spec a i t)) → (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index (Vermilion.Seq.index refs i) j)) ∧ reclaim_plan.has_edge_spec a i t)) (Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index (Vermilion.Seq.index refs i) j)) ∧ reclaim_plan.has_edge_spec a i t))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index a vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index a vrml_i0))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index b vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index b vrml_i0))))))
    (requires_4 : reclaim_plan.ref_resolved_spec keys refs a i j)
    (requires_5 : reclaim_plan.prefix_of_spec a b)
    (assert_0 : Vermilion.Seq.index b (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len a)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index a k) = i)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index a k) = Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index (Vermilion.Seq.index refs i) j)) ∧ reclaim_plan.has_edge_spec a i t)))))) = Vermilion.Seq.index a (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len a)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index a k) = i)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index a k) = Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index (Vermilion.Seq.index refs i) j)) ∧ reclaim_plan.has_edge_spec a i t)))))))
    (assert_1 : reclaim_plan.has_edge_spec b i (Vermilion.chooseSpec (fun (t : Int) => ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index (Vermilion.Seq.index refs i) j)) ∧ reclaim_plan.has_edge_spec a i t)))) :
    reclaim_plan.ref_resolved_spec keys refs b i j := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end reclaim_plan.ref_resolved_extend.ensures_2

end reclaim_plan.ref_resolved_extend

