import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.stronger_input_never_adds_candidates

-- vrml:begin reclaim_plan.stronger_input_never_adds_candidates.assert_0 eec60d6b50cfa5fb
/--
Generated VC `reclaim_plan.stronger_input_never_adds_candidates.assert_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:730:12-730:63`
- Rust/SST construct: Rust source assertion
- AssertId: `0`
- Statement hash: `eec60d6b50cfa5fb`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges2 vrml_i0⟩ ⟨Vermilion.Seq.index roots2 vrml_i0⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 730
  startColumn := 12
  endLine := 730
  endColumn := 63
  assertId := "0"
  functionName := "reclaim_plan.stronger_input_never_adds_candidates"
  kind := "assert"
  statementHash := "eec60d6b50cfa5fb"
}
@[vrml_obligation] theorem assert_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (edges2 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots2 : (Vermilion.Seq Int))
    (reclaimable2 : (Vermilion.Seq Prop))
    (retained2 : (Vermilion.Seq Prop))
    (candidate2 : (Vermilion.Seq Prop))
    (v : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges2)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges2 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges2 vrml_i0))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots2 vrml_i0))))
    (requires_4 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_5 : reclaim_plan.retained_sound_spec edges roots retained)
    (requires_6 : reclaim_plan.plan_valid_spec n edges2 roots2 reclaimable2 retained2 candidate2)
    (requires_7 : reclaim_plan.edges_subset_spec edges edges2)
    (requires_8 : reclaim_plan.roots_subset_spec roots roots2)
    (requires_9 : reclaim_plan.reclaimable_subset_spec reclaimable2 reclaimable)
    (requires_10 : (0 ≤ v) ∧ (v < n))
    (requires_11 : Vermilion.Seq.index candidate2 v) :
    Vermilion.Seq.index candidate2 v ↔ (Vermilion.Seq.index reclaimable2 v ∧ (¬ Vermilion.Seq.index retained2 v)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.stronger_input_never_adds_candidates.assert_0

-- vrml:begin reclaim_plan.stronger_input_never_adds_candidates.call_requires_1_0 a06d7be617f93849
/--
Generated VC `reclaim_plan.stronger_input_never_adds_candidates.call_requires_1_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:732:9-732:51`
- Rust/SST construct: call live_mono
- AssertId: `1_0`
- Statement hash: `a06d7be617f93849`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges2 vrml_i0⟩ ⟨Vermilion.Seq.index roots2 vrml_i0⟩
-/
def call_requires_1_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 732
  startColumn := 9
  endLine := 732
  endColumn := 51
  assertId := "1_0"
  functionName := "reclaim_plan.stronger_input_never_adds_candidates"
  kind := "call_requires"
  statementHash := "a06d7be617f93849"
}
@[vrml_obligation] theorem call_requires_1_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (edges2 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots2 : (Vermilion.Seq Int))
    (reclaimable2 : (Vermilion.Seq Prop))
    (retained2 : (Vermilion.Seq Prop))
    (candidate2 : (Vermilion.Seq Prop))
    (v : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges2)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges2 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges2 vrml_i0))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots2 vrml_i0))))
    (requires_4 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_5 : reclaim_plan.retained_sound_spec edges roots retained)
    (requires_6 : reclaim_plan.plan_valid_spec n edges2 roots2 reclaimable2 retained2 candidate2)
    (requires_7 : reclaim_plan.edges_subset_spec edges edges2)
    (requires_8 : reclaim_plan.roots_subset_spec roots roots2)
    (requires_9 : reclaim_plan.reclaimable_subset_spec reclaimable2 reclaimable)
    (requires_10 : (0 ≤ v) ∧ (v < n))
    (requires_11 : Vermilion.Seq.index candidate2 v)
    (assert_0 : Vermilion.Seq.index candidate2 v ↔ (Vermilion.Seq.index reclaimable2 v ∧ (¬ Vermilion.Seq.index retained2 v)))
    (branch_0 : Vermilion.Seq.index retained v) :
    reclaim_plan.edges_subset_spec edges edges2 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.stronger_input_never_adds_candidates.call_requires_1_0

-- vrml:begin reclaim_plan.stronger_input_never_adds_candidates.call_requires_1_1 bbb0e015c57ee2f0
/--
Generated VC `reclaim_plan.stronger_input_never_adds_candidates.call_requires_1_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:732:9-732:51`
- Rust/SST construct: call live_mono
- AssertId: `1_1`
- Statement hash: `bbb0e015c57ee2f0`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges2 vrml_i0⟩ ⟨Vermilion.Seq.index roots2 vrml_i0⟩
-/
def call_requires_1_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 732
  startColumn := 9
  endLine := 732
  endColumn := 51
  assertId := "1_1"
  functionName := "reclaim_plan.stronger_input_never_adds_candidates"
  kind := "call_requires"
  statementHash := "bbb0e015c57ee2f0"
}
@[vrml_obligation] theorem call_requires_1_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (edges2 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots2 : (Vermilion.Seq Int))
    (reclaimable2 : (Vermilion.Seq Prop))
    (retained2 : (Vermilion.Seq Prop))
    (candidate2 : (Vermilion.Seq Prop))
    (v : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges2)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges2 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges2 vrml_i0))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots2 vrml_i0))))
    (requires_4 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_5 : reclaim_plan.retained_sound_spec edges roots retained)
    (requires_6 : reclaim_plan.plan_valid_spec n edges2 roots2 reclaimable2 retained2 candidate2)
    (requires_7 : reclaim_plan.edges_subset_spec edges edges2)
    (requires_8 : reclaim_plan.roots_subset_spec roots roots2)
    (requires_9 : reclaim_plan.reclaimable_subset_spec reclaimable2 reclaimable)
    (requires_10 : (0 ≤ v) ∧ (v < n))
    (requires_11 : Vermilion.Seq.index candidate2 v)
    (assert_0 : Vermilion.Seq.index candidate2 v ↔ (Vermilion.Seq.index reclaimable2 v ∧ (¬ Vermilion.Seq.index retained2 v)))
    (branch_0 : Vermilion.Seq.index retained v) :
    reclaim_plan.roots_subset_spec roots roots2 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.stronger_input_never_adds_candidates.call_requires_1_1

-- vrml:begin reclaim_plan.stronger_input_never_adds_candidates.call_requires_1_2 4eff2aa42a72258d
/--
Generated VC `reclaim_plan.stronger_input_never_adds_candidates.call_requires_1_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:732:9-732:51`
- Rust/SST construct: call live_mono
- AssertId: `1_2`
- Statement hash: `4eff2aa42a72258d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges2 vrml_i0⟩ ⟨Vermilion.Seq.index roots2 vrml_i0⟩
-/
def call_requires_1_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 732
  startColumn := 9
  endLine := 732
  endColumn := 51
  assertId := "1_2"
  functionName := "reclaim_plan.stronger_input_never_adds_candidates"
  kind := "call_requires"
  statementHash := "4eff2aa42a72258d"
}
@[vrml_obligation] theorem call_requires_1_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (edges2 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots2 : (Vermilion.Seq Int))
    (reclaimable2 : (Vermilion.Seq Prop))
    (retained2 : (Vermilion.Seq Prop))
    (candidate2 : (Vermilion.Seq Prop))
    (v : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges2)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges2 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges2 vrml_i0))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots2 vrml_i0))))
    (requires_4 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_5 : reclaim_plan.retained_sound_spec edges roots retained)
    (requires_6 : reclaim_plan.plan_valid_spec n edges2 roots2 reclaimable2 retained2 candidate2)
    (requires_7 : reclaim_plan.edges_subset_spec edges edges2)
    (requires_8 : reclaim_plan.roots_subset_spec roots roots2)
    (requires_9 : reclaim_plan.reclaimable_subset_spec reclaimable2 reclaimable)
    (requires_10 : (0 ≤ v) ∧ (v < n))
    (requires_11 : Vermilion.Seq.index candidate2 v)
    (assert_0 : Vermilion.Seq.index candidate2 v ↔ (Vermilion.Seq.index reclaimable2 v ∧ (¬ Vermilion.Seq.index retained2 v)))
    (branch_0 : Vermilion.Seq.index retained v) :
    reclaim_plan.live_spec edges roots v := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.stronger_input_never_adds_candidates.call_requires_1_2

-- vrml:begin reclaim_plan.stronger_input_never_adds_candidates.call_requires_2_0 94b142b5b752aff8
/--
Generated VC `reclaim_plan.stronger_input_never_adds_candidates.call_requires_2_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:733:9-733:91`
- Rust/SST construct: call valid_plan_retains_live
- AssertId: `2_0`
- Statement hash: `94b142b5b752aff8`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges2 vrml_i0⟩ ⟨Vermilion.Seq.index roots2 vrml_i0⟩
-/
def call_requires_2_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 733
  startColumn := 9
  endLine := 733
  endColumn := 91
  assertId := "2_0"
  functionName := "reclaim_plan.stronger_input_never_adds_candidates"
  kind := "call_requires"
  statementHash := "94b142b5b752aff8"
}
@[vrml_obligation] theorem call_requires_2_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (edges2 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots2 : (Vermilion.Seq Int))
    (reclaimable2 : (Vermilion.Seq Prop))
    (retained2 : (Vermilion.Seq Prop))
    (candidate2 : (Vermilion.Seq Prop))
    (v : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges2)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges2 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges2 vrml_i0))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots2 vrml_i0))))
    (requires_4 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_5 : reclaim_plan.retained_sound_spec edges roots retained)
    (requires_6 : reclaim_plan.plan_valid_spec n edges2 roots2 reclaimable2 retained2 candidate2)
    (requires_7 : reclaim_plan.edges_subset_spec edges edges2)
    (requires_8 : reclaim_plan.roots_subset_spec roots roots2)
    (requires_9 : reclaim_plan.reclaimable_subset_spec reclaimable2 reclaimable)
    (requires_10 : (0 ≤ v) ∧ (v < n))
    (requires_11 : Vermilion.Seq.index candidate2 v)
    (assert_0 : Vermilion.Seq.index candidate2 v ↔ (Vermilion.Seq.index reclaimable2 v ∧ (¬ Vermilion.Seq.index retained2 v)))
    (branch_0 : Vermilion.Seq.index retained v)
    (call_live_mono_ensures_0 : reclaim_plan.live_spec edges2 roots2 v) :
    reclaim_plan.plan_valid_spec n edges2 roots2 reclaimable2 retained2 candidate2 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.stronger_input_never_adds_candidates.call_requires_2_0

-- vrml:begin reclaim_plan.stronger_input_never_adds_candidates.call_requires_2_1 db2c21def6c170ea
/--
Generated VC `reclaim_plan.stronger_input_never_adds_candidates.call_requires_2_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:733:9-733:91`
- Rust/SST construct: call valid_plan_retains_live
- AssertId: `2_1`
- Statement hash: `db2c21def6c170ea`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges2 vrml_i0⟩ ⟨Vermilion.Seq.index roots2 vrml_i0⟩
-/
def call_requires_2_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 733
  startColumn := 9
  endLine := 733
  endColumn := 91
  assertId := "2_1"
  functionName := "reclaim_plan.stronger_input_never_adds_candidates"
  kind := "call_requires"
  statementHash := "db2c21def6c170ea"
}
@[vrml_obligation] theorem call_requires_2_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (edges2 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots2 : (Vermilion.Seq Int))
    (reclaimable2 : (Vermilion.Seq Prop))
    (retained2 : (Vermilion.Seq Prop))
    (candidate2 : (Vermilion.Seq Prop))
    (v : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges2)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges2 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges2 vrml_i0))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots2 vrml_i0))))
    (requires_4 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_5 : reclaim_plan.retained_sound_spec edges roots retained)
    (requires_6 : reclaim_plan.plan_valid_spec n edges2 roots2 reclaimable2 retained2 candidate2)
    (requires_7 : reclaim_plan.edges_subset_spec edges edges2)
    (requires_8 : reclaim_plan.roots_subset_spec roots roots2)
    (requires_9 : reclaim_plan.reclaimable_subset_spec reclaimable2 reclaimable)
    (requires_10 : (0 ≤ v) ∧ (v < n))
    (requires_11 : Vermilion.Seq.index candidate2 v)
    (assert_0 : Vermilion.Seq.index candidate2 v ↔ (Vermilion.Seq.index reclaimable2 v ∧ (¬ Vermilion.Seq.index retained2 v)))
    (branch_0 : Vermilion.Seq.index retained v)
    (call_live_mono_ensures_0 : reclaim_plan.live_spec edges2 roots2 v) :
    reclaim_plan.live_spec edges2 roots2 v := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.stronger_input_never_adds_candidates.call_requires_2_1

-- vrml:begin reclaim_plan.stronger_input_never_adds_candidates.assert_3 7c62e683be839a82
/--
Generated VC `reclaim_plan.stronger_input_never_adds_candidates.assert_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:735:12-735:26`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `7c62e683be839a82`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges2 vrml_i0⟩ ⟨Vermilion.Seq.index roots2 vrml_i0⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 735
  startColumn := 12
  endLine := 735
  endColumn := 26
  assertId := "3"
  functionName := "reclaim_plan.stronger_input_never_adds_candidates"
  kind := "assert"
  statementHash := "7c62e683be839a82"
}
@[vrml_obligation] theorem assert_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (edges2 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots2 : (Vermilion.Seq Int))
    (reclaimable2 : (Vermilion.Seq Prop))
    (retained2 : (Vermilion.Seq Prop))
    (candidate2 : (Vermilion.Seq Prop))
    (v : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges2)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges2 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges2 vrml_i0))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots2 vrml_i0))))
    (requires_4 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_5 : reclaim_plan.retained_sound_spec edges roots retained)
    (requires_6 : reclaim_plan.plan_valid_spec n edges2 roots2 reclaimable2 retained2 candidate2)
    (requires_7 : reclaim_plan.edges_subset_spec edges edges2)
    (requires_8 : reclaim_plan.roots_subset_spec roots roots2)
    (requires_9 : reclaim_plan.reclaimable_subset_spec reclaimable2 reclaimable)
    (requires_10 : (0 ≤ v) ∧ (v < n))
    (requires_11 : Vermilion.Seq.index candidate2 v)
    (assert_0 : Vermilion.Seq.index candidate2 v ↔ (Vermilion.Seq.index reclaimable2 v ∧ (¬ Vermilion.Seq.index retained2 v)))
    (then_0_call_live_mono_ensures_0 : Vermilion.Seq.index retained v → reclaim_plan.live_spec edges2 roots2 v)
    (then_0_call_valid_plan_retains_live_ensures_0 : Vermilion.Seq.index retained v → Vermilion.Seq.index retained2 v) :
    Vermilion.Seq.index reclaimable v := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.stronger_input_never_adds_candidates.assert_3

-- vrml:begin reclaim_plan.stronger_input_never_adds_candidates.assert_4 7a25b87b2b9c62ba
/--
Generated VC `reclaim_plan.stronger_input_never_adds_candidates.assert_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:736:12-736:60`
- Rust/SST construct: Rust source assertion
- AssertId: `4`
- Statement hash: `7a25b87b2b9c62ba`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges2 vrml_i0⟩ ⟨Vermilion.Seq.index roots2 vrml_i0⟩
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 736
  startColumn := 12
  endLine := 736
  endColumn := 60
  assertId := "4"
  functionName := "reclaim_plan.stronger_input_never_adds_candidates"
  kind := "assert"
  statementHash := "7a25b87b2b9c62ba"
}
@[vrml_obligation] theorem assert_4
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (edges2 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots2 : (Vermilion.Seq Int))
    (reclaimable2 : (Vermilion.Seq Prop))
    (retained2 : (Vermilion.Seq Prop))
    (candidate2 : (Vermilion.Seq Prop))
    (v : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges2)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges2 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges2 vrml_i0))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots2 vrml_i0))))
    (requires_4 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_5 : reclaim_plan.retained_sound_spec edges roots retained)
    (requires_6 : reclaim_plan.plan_valid_spec n edges2 roots2 reclaimable2 retained2 candidate2)
    (requires_7 : reclaim_plan.edges_subset_spec edges edges2)
    (requires_8 : reclaim_plan.roots_subset_spec roots roots2)
    (requires_9 : reclaim_plan.reclaimable_subset_spec reclaimable2 reclaimable)
    (requires_10 : (0 ≤ v) ∧ (v < n))
    (requires_11 : Vermilion.Seq.index candidate2 v)
    (assert_0 : Vermilion.Seq.index candidate2 v ↔ (Vermilion.Seq.index reclaimable2 v ∧ (¬ Vermilion.Seq.index retained2 v)))
    (then_0_call_live_mono_ensures_0 : Vermilion.Seq.index retained v → reclaim_plan.live_spec edges2 roots2 v)
    (then_0_call_valid_plan_retains_live_ensures_0 : Vermilion.Seq.index retained v → Vermilion.Seq.index retained2 v)
    (assert_3 : Vermilion.Seq.index reclaimable v) :
    Vermilion.Seq.index candidate v ↔ (Vermilion.Seq.index reclaimable v ∧ (¬ Vermilion.Seq.index retained v)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.stronger_input_never_adds_candidates.assert_4

-- vrml:begin reclaim_plan.stronger_input_never_adds_candidates.ensures_5 996c34a9c72e5ef5
/--
Generated VC `reclaim_plan.stronger_input_never_adds_candidates.ensures_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:728:13-728:25`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `5`
- Statement hash: `996c34a9c72e5ef5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index edges2 vrml_i0⟩ ⟨Vermilion.Seq.index roots2 vrml_i0⟩
-/
def ensures_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 728
  startColumn := 13
  endLine := 728
  endColumn := 25
  assertId := "5"
  functionName := "reclaim_plan.stronger_input_never_adds_candidates"
  kind := "ensures"
  statementHash := "996c34a9c72e5ef5"
}
@[vrml_obligation] theorem ensures_5
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (edges2 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots2 : (Vermilion.Seq Int))
    (reclaimable2 : (Vermilion.Seq Prop))
    (retained2 : (Vermilion.Seq Prop))
    (candidate2 : (Vermilion.Seq Prop))
    (v : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges2)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges2 vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges2 vrml_i0))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots2 vrml_i0))))
    (requires_4 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_5 : reclaim_plan.retained_sound_spec edges roots retained)
    (requires_6 : reclaim_plan.plan_valid_spec n edges2 roots2 reclaimable2 retained2 candidate2)
    (requires_7 : reclaim_plan.edges_subset_spec edges edges2)
    (requires_8 : reclaim_plan.roots_subset_spec roots roots2)
    (requires_9 : reclaim_plan.reclaimable_subset_spec reclaimable2 reclaimable)
    (requires_10 : (0 ≤ v) ∧ (v < n))
    (requires_11 : Vermilion.Seq.index candidate2 v)
    (assert_0 : Vermilion.Seq.index candidate2 v ↔ (Vermilion.Seq.index reclaimable2 v ∧ (¬ Vermilion.Seq.index retained2 v)))
    (then_0_call_live_mono_ensures_0 : Vermilion.Seq.index retained v → reclaim_plan.live_spec edges2 roots2 v)
    (then_0_call_valid_plan_retains_live_ensures_0 : Vermilion.Seq.index retained v → Vermilion.Seq.index retained2 v)
    (assert_3 : Vermilion.Seq.index reclaimable v)
    (assert_4 : Vermilion.Seq.index candidate v ↔ (Vermilion.Seq.index reclaimable v ∧ (¬ Vermilion.Seq.index retained v))) :
    Vermilion.Seq.index candidate v := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.stronger_input_never_adds_candidates.ensures_5

end reclaim_plan.stronger_input_never_adds_candidates

