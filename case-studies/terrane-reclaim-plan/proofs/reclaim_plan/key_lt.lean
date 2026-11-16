import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

-- vrml:user:begin
theorem klt_iff (a b : Vermilion.Seq Int) (i : Int) (hi : 0 ≤ i)
    (hia : i ≤ Vermilion.Seq.len a) (hib : i ≤ Vermilion.Seq.len b)
    (hpre : reclaim_plan.prefix_eq_spec a b i)
    (hstop : i = Vermilion.Seq.len a ∨ i = Vermilion.Seq.len b ∨
      Vermilion.Seq.index a i ≠ Vermilion.Seq.index b i) :
    reclaim_plan.key_lt_spec a b ↔
      ((i = Vermilion.Seq.len a ∧ i < Vermilion.Seq.len b) ∨
        ((i < Vermilion.Seq.len a ∧ i < Vermilion.Seq.len b) ∧
          Vermilion.Seq.index a i < Vermilion.Seq.index b i)) := by
  unfold reclaim_plan.key_lt_spec reclaim_plan.key_lt_at_spec
  constructor
  · rintro ⟨p, ⟨⟨⟨hp0, hpa⟩, hpb⟩, hpp⟩, hc⟩
    unfold reclaim_plan.prefix_eq_spec at hpre hpp
    rcases lt_trichotomy p i with h | h | h
    · have e := hpre p ⟨hp0, h⟩
      rcases hc with ⟨hpa', _⟩ | ⟨_, hlt⟩
      · omega
      · rw [e] at hlt; exact absurd hlt (lt_irrefl _)
    · subst h; exact hc
    · have e := hpp i ⟨hi, h⟩
      rcases hstop with h1 | h1 | h1
      · omega
      · omega
      · exact absurd e h1
  · rintro (⟨h1, h2⟩ | ⟨⟨h1, h2⟩, h3⟩)
    · exact ⟨i, ⟨⟨⟨hi, hia⟩, hib⟩, hpre⟩, Or.inl ⟨h1, h2⟩⟩
    · exact ⟨i, ⟨⟨⟨hi, hia⟩, hib⟩, hpre⟩, Or.inr ⟨⟨h1, h2⟩, h3⟩⟩
-- vrml:user:end

namespace reclaim_plan.key_lt

-- vrml:begin reclaim_plan.key_lt.invariant_entry_0_0 e9bf6d2ba41bfabc
/--
Generated VC `reclaim_plan.key_lt.invariant_entry_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1002:19-1002:36`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `e9bf6d2ba41bfabc`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1002
  startColumn := 19
  endLine := 1002
  endColumn := 36
  assertId := "0_0"
  functionName := "reclaim_plan.key_lt"
  kind := "invariant_entry"
  statementHash := "e9bf6d2ba41bfabc"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0)))) :
    (0 ≤ 0) ∧ (0 ≤ Vermilion.Seq.len a) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_lt.invariant_entry_0_0

-- vrml:begin reclaim_plan.key_lt.invariant_entry_0_1 521b1ad07a7bea31
/--
Generated VC `reclaim_plan.key_lt.invariant_entry_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1002:38-1002:50`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `521b1ad07a7bea31`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1002
  startColumn := 38
  endLine := 1002
  endColumn := 50
  assertId := "0_1"
  functionName := "reclaim_plan.key_lt"
  kind := "invariant_entry"
  statementHash := "521b1ad07a7bea31"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0)))) :
    0 ≤ Vermilion.Seq.len b := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_lt.invariant_entry_0_1

-- vrml:begin reclaim_plan.key_lt.invariant_entry_0_2 8f8173f3276b805c
/--
Generated VC `reclaim_plan.key_lt.invariant_entry_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1002:52-1002:84`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_2`
- Statement hash: `8f8173f3276b805c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def invariant_entry_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1002
  startColumn := 52
  endLine := 1002
  endColumn := 84
  assertId := "0_2"
  functionName := "reclaim_plan.key_lt"
  kind := "invariant_entry"
  statementHash := "8f8173f3276b805c"
}
@[vrml_obligation] theorem invariant_entry_0_2
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0)))) :
    reclaim_plan.prefix_eq_spec a b 0 := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_lt.invariant_entry_0_2

-- vrml:begin reclaim_plan.key_lt.invariant_entry_0_3 cc9fe128ded5446b
/--
Generated VC `reclaim_plan.key_lt.invariant_entry_0_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1003:13-1003:81`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_3`
- Statement hash: `cc9fe128ded5446b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def invariant_entry_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1003
  startColumn := 13
  endLine := 1003
  endColumn := 81
  assertId := "0_3"
  functionName := "reclaim_plan.key_lt"
  kind := "invariant_entry"
  statementHash := "cc9fe128ded5446b"
}
@[vrml_obligation] theorem invariant_entry_0_3
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0)))) :
    (¬ True) → (((0 < Vermilion.Seq.len a) ∧ (0 < Vermilion.Seq.len b)) ∧ (¬ (Vermilion.Seq.index a 0 = Vermilion.Seq.index b 0))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_lt.invariant_entry_0_3

-- vrml:begin reclaim_plan.key_lt.call_requires_2 68b4e728a3eabb46
/--
Generated VC `reclaim_plan.key_lt.call_requires_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1006:12-1006:16`
- Rust/SST construct: call vec_index
- AssertId: `2`
- Statement hash: `68b4e728a3eabb46`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def call_requires_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1006
  startColumn := 12
  endLine := 1006
  endColumn := 16
  assertId := "2"
  functionName := "reclaim_plan.key_lt"
  kind := "call_requires"
  statementHash := "68b4e728a3eabb46"
}
@[vrml_obligation] theorem call_requires_2
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (i : Int)
    (same : Prop)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len a))
    (loop_0_iteration_6 : i ≤ Vermilion.Seq.len b)
    (loop_0_iteration_7 : reclaim_plan.prefix_eq_spec a b i)
    (loop_0_iteration_8 : (¬ same) → (((i < Vermilion.Seq.len a) ∧ (i < Vermilion.Seq.len b)) ∧ (¬ (Vermilion.Seq.index a i = Vermilion.Seq.index b i))))
    (loop_0_iteration_9 : (Vermilion.iteP (Vermilion.iteP same (i < Vermilion.Seq.len a) False) (i < Vermilion.Seq.len b) False)) :
    i < Vermilion.Seq.len a := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_lt.call_requires_2

-- vrml:begin reclaim_plan.key_lt.call_requires_3 c489b79526fd30df
/--
Generated VC `reclaim_plan.key_lt.call_requires_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1006:20-1006:24`
- Rust/SST construct: call vec_index
- AssertId: `3`
- Statement hash: `c489b79526fd30df`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def call_requires_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1006
  startColumn := 20
  endLine := 1006
  endColumn := 24
  assertId := "3"
  functionName := "reclaim_plan.key_lt"
  kind := "call_requires"
  statementHash := "c489b79526fd30df"
}
@[vrml_obligation] theorem call_requires_3
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (i : Int)
    (same : Prop)
    (tmp_ : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len a))
    (loop_0_iteration_6 : i ≤ Vermilion.Seq.len b)
    (loop_0_iteration_7 : reclaim_plan.prefix_eq_spec a b i)
    (loop_0_iteration_8 : (¬ same) → (((i < Vermilion.Seq.len a) ∧ (i < Vermilion.Seq.len b)) ∧ (¬ (Vermilion.Seq.index a i = Vermilion.Seq.index b i))))
    (loop_0_iteration_9 : (Vermilion.iteP (Vermilion.iteP same (i < Vermilion.Seq.len a) False) (i < Vermilion.Seq.len b) False))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 8 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index a i) :
    i < Vermilion.Seq.len b := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_lt.call_requires_3

-- vrml:begin reclaim_plan.key_lt.assert_4 034f3d3a081f77d6
/--
Generated VC `reclaim_plan.key_lt.assert_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1007:17-1007:22`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `4`
- Statement hash: `034f3d3a081f77d6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1007
  startColumn := 17
  endLine := 1007
  endColumn := 22
  assertId := "4"
  functionName := "reclaim_plan.key_lt"
  kind := "assert"
  statementHash := "034f3d3a081f77d6"
}
@[vrml_obligation] theorem assert_4
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (i : Int)
    (same : Prop)
    (tmp_ : Int)
    (tmp__2 : Int)
    (i_2 : Int)
    (same_2 : Prop)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len a))
    (loop_0_iteration_6 : i ≤ Vermilion.Seq.len b)
    (loop_0_iteration_7 : reclaim_plan.prefix_eq_spec a b i)
    (loop_0_iteration_8 : (¬ same) → (((i < Vermilion.Seq.len a) ∧ (i < Vermilion.Seq.len b)) ∧ (¬ (Vermilion.Seq.index a i = Vermilion.Seq.index b i))))
    (loop_0_iteration_9 : (Vermilion.iteP (Vermilion.iteP same (i < Vermilion.Seq.len a) False) (i < Vermilion.Seq.len b) False))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 8 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index a i)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 8 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index b i)
    (branch_0 : tmp_ = tmp__2) :
    Vermilion.inUnsignedRange 64 (i + 1) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_lt.assert_4

-- vrml:begin reclaim_plan.key_lt.invariant_preserve_0_0 6b30bb9b6161581d
/--
Generated VC `reclaim_plan.key_lt.invariant_preserve_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1002:19-1002:36`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `6b30bb9b6161581d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1002
  startColumn := 19
  endLine := 1002
  endColumn := 36
  assertId := "0_0"
  functionName := "reclaim_plan.key_lt"
  kind := "invariant_preserve"
  statementHash := "6b30bb9b6161581d"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (i : Int)
    (same : Prop)
    (tmp_ : Int)
    (tmp__2 : Int)
    (i_2 : Int)
    (same_2 : Prop)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len a))
    (loop_0_iteration_6 : i ≤ Vermilion.Seq.len b)
    (loop_0_iteration_7 : reclaim_plan.prefix_eq_spec a b i)
    (loop_0_iteration_8 : (¬ same) → (((i < Vermilion.Seq.len a) ∧ (i < Vermilion.Seq.len b)) ∧ (¬ (Vermilion.Seq.index a i = Vermilion.Seq.index b i))))
    (loop_0_iteration_9 : (Vermilion.iteP (Vermilion.iteP same (i < Vermilion.Seq.len a) False) (i < Vermilion.Seq.len b) False))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 8 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index a i)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 8 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index b i)
    (then_0_assert_4 : (tmp_ = tmp__2) → Vermilion.inUnsignedRange 64 (i + 1))
    (then_0_assume_16 : (tmp_ = tmp__2) → (i_2 = ((i + 1) % 18446744073709551616)))
    (then_0_assume_17 : (tmp_ = tmp__2) → (same_2 ↔ same))
    (else_0_assume_15 : (¬ (tmp_ = tmp__2)) → (i_2 = i))
    (else_0_assume_16 : (¬ (tmp_ = tmp__2)) → (same_2 ↔ False))
    (assume_19 : Vermilion.inUnsignedRange 64 i_2) :
    (0 ≤ i_2) ∧ (i_2 ≤ Vermilion.Seq.len a) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_lt.invariant_preserve_0_0

-- vrml:begin reclaim_plan.key_lt.invariant_preserve_0_1 417c4d1d50798dde
/--
Generated VC `reclaim_plan.key_lt.invariant_preserve_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1002:38-1002:50`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `417c4d1d50798dde`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1002
  startColumn := 38
  endLine := 1002
  endColumn := 50
  assertId := "0_1"
  functionName := "reclaim_plan.key_lt"
  kind := "invariant_preserve"
  statementHash := "417c4d1d50798dde"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (i : Int)
    (same : Prop)
    (tmp_ : Int)
    (tmp__2 : Int)
    (i_2 : Int)
    (same_2 : Prop)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len a))
    (loop_0_iteration_6 : i ≤ Vermilion.Seq.len b)
    (loop_0_iteration_7 : reclaim_plan.prefix_eq_spec a b i)
    (loop_0_iteration_8 : (¬ same) → (((i < Vermilion.Seq.len a) ∧ (i < Vermilion.Seq.len b)) ∧ (¬ (Vermilion.Seq.index a i = Vermilion.Seq.index b i))))
    (loop_0_iteration_9 : (Vermilion.iteP (Vermilion.iteP same (i < Vermilion.Seq.len a) False) (i < Vermilion.Seq.len b) False))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 8 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index a i)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 8 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index b i)
    (then_0_assert_4 : (tmp_ = tmp__2) → Vermilion.inUnsignedRange 64 (i + 1))
    (then_0_assume_16 : (tmp_ = tmp__2) → (i_2 = ((i + 1) % 18446744073709551616)))
    (then_0_assume_17 : (tmp_ = tmp__2) → (same_2 ↔ same))
    (else_0_assume_15 : (¬ (tmp_ = tmp__2)) → (i_2 = i))
    (else_0_assume_16 : (¬ (tmp_ = tmp__2)) → (same_2 ↔ False))
    (assume_19 : Vermilion.inUnsignedRange 64 i_2) :
    i_2 ≤ Vermilion.Seq.len b := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_lt.invariant_preserve_0_1

-- vrml:begin reclaim_plan.key_lt.invariant_preserve_0_2 d74f608052847bcf
/--
Generated VC `reclaim_plan.key_lt.invariant_preserve_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1002:52-1002:84`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_2`
- Statement hash: `d74f608052847bcf`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def invariant_preserve_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1002
  startColumn := 52
  endLine := 1002
  endColumn := 84
  assertId := "0_2"
  functionName := "reclaim_plan.key_lt"
  kind := "invariant_preserve"
  statementHash := "d74f608052847bcf"
}
@[vrml_obligation] theorem invariant_preserve_0_2
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (i : Int)
    (same : Prop)
    (tmp_ : Int)
    (tmp__2 : Int)
    (i_2 : Int)
    (same_2 : Prop)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len a))
    (loop_0_iteration_6 : i ≤ Vermilion.Seq.len b)
    (loop_0_iteration_7 : reclaim_plan.prefix_eq_spec a b i)
    (loop_0_iteration_8 : (¬ same) → (((i < Vermilion.Seq.len a) ∧ (i < Vermilion.Seq.len b)) ∧ (¬ (Vermilion.Seq.index a i = Vermilion.Seq.index b i))))
    (loop_0_iteration_9 : (Vermilion.iteP (Vermilion.iteP same (i < Vermilion.Seq.len a) False) (i < Vermilion.Seq.len b) False))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 8 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index a i)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 8 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index b i)
    (then_0_assert_4 : (tmp_ = tmp__2) → Vermilion.inUnsignedRange 64 (i + 1))
    (then_0_assume_16 : (tmp_ = tmp__2) → (i_2 = ((i + 1) % 18446744073709551616)))
    (then_0_assume_17 : (tmp_ = tmp__2) → (same_2 ↔ same))
    (else_0_assume_15 : (¬ (tmp_ = tmp__2)) → (i_2 = i))
    (else_0_assume_16 : (¬ (tmp_ = tmp__2)) → (same_2 ↔ False))
    (assume_19 : Vermilion.inUnsignedRange 64 i_2) :
    reclaim_plan.prefix_eq_spec a b i_2 := by
  by_cases he : tmp_ = tmp__2
  · have hia : i < Vermilion.Seq.len a ∧ i < Vermilion.Seq.len b := by
      by_contra hc
      simp only [Vermilion.iteP] at loop_0_iteration_9
      split_ifs at loop_0_iteration_9 <;> omega
    have r := then_0_assert_4 he
    unfold Vermilion.inUnsignedRange at r
    norm_num at r
    rw [then_0_assume_16 he, show (i + 1) % 18446744073709551616 = i + 1 by omega]
    intro k hk
    by_cases hki : k < i
    · exact loop_0_iteration_7 k ⟨hk.1, hki⟩
    · have : k = i := by omega
      rw [this, ← call_vec_index_ensures_1, ← call_vec_index_1_ensures_1]
      exact he
  · rw [else_0_assume_15 he]
    exact loop_0_iteration_7
-- vrml:end reclaim_plan.key_lt.invariant_preserve_0_2

-- vrml:begin reclaim_plan.key_lt.invariant_preserve_0_3 5decebb17b28a4cb
/--
Generated VC `reclaim_plan.key_lt.invariant_preserve_0_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1003:13-1003:81`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_3`
- Statement hash: `5decebb17b28a4cb`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def invariant_preserve_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1003
  startColumn := 13
  endLine := 1003
  endColumn := 81
  assertId := "0_3"
  functionName := "reclaim_plan.key_lt"
  kind := "invariant_preserve"
  statementHash := "5decebb17b28a4cb"
}
@[vrml_obligation] theorem invariant_preserve_0_3
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (i : Int)
    (same : Prop)
    (tmp_ : Int)
    (tmp__2 : Int)
    (i_2 : Int)
    (same_2 : Prop)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len a))
    (loop_0_iteration_6 : i ≤ Vermilion.Seq.len b)
    (loop_0_iteration_7 : reclaim_plan.prefix_eq_spec a b i)
    (loop_0_iteration_8 : (¬ same) → (((i < Vermilion.Seq.len a) ∧ (i < Vermilion.Seq.len b)) ∧ (¬ (Vermilion.Seq.index a i = Vermilion.Seq.index b i))))
    (loop_0_iteration_9 : (Vermilion.iteP (Vermilion.iteP same (i < Vermilion.Seq.len a) False) (i < Vermilion.Seq.len b) False))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 8 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index a i)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 8 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index b i)
    (then_0_assert_4 : (tmp_ = tmp__2) → Vermilion.inUnsignedRange 64 (i + 1))
    (then_0_assume_16 : (tmp_ = tmp__2) → (i_2 = ((i + 1) % 18446744073709551616)))
    (then_0_assume_17 : (tmp_ = tmp__2) → (same_2 ↔ same))
    (else_0_assume_15 : (¬ (tmp_ = tmp__2)) → (i_2 = i))
    (else_0_assume_16 : (¬ (tmp_ = tmp__2)) → (same_2 ↔ False))
    (assume_19 : Vermilion.inUnsignedRange 64 i_2) :
    (¬ same_2) → (((i_2 < Vermilion.Seq.len a) ∧ (i_2 < Vermilion.Seq.len b)) ∧ (¬ (Vermilion.Seq.index a i_2 = Vermilion.Seq.index b i_2))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_lt.invariant_preserve_0_3

-- vrml:begin reclaim_plan.key_lt.assert_0_decreases da9d7a03303d5fe2
/--
Generated VC `reclaim_plan.key_lt.assert_0_decreases`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1004:19-1004:65`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `da9d7a03303d5fe2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1004
  startColumn := 19
  endLine := 1004
  endColumn := 65
  assertId := "0_decreases"
  functionName := "reclaim_plan.key_lt"
  kind := "assert"
  statementHash := "da9d7a03303d5fe2"
}
@[vrml_obligation] theorem assert_0_decreases
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (i : Int)
    (same : Prop)
    (tmp_ : Int)
    (tmp__2 : Int)
    (i_2 : Int)
    (same_2 : Prop)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len a))
    (loop_0_iteration_6 : i ≤ Vermilion.Seq.len b)
    (loop_0_iteration_7 : reclaim_plan.prefix_eq_spec a b i)
    (loop_0_iteration_8 : (¬ same) → (((i < Vermilion.Seq.len a) ∧ (i < Vermilion.Seq.len b)) ∧ (¬ (Vermilion.Seq.index a i = Vermilion.Seq.index b i))))
    (loop_0_iteration_9 : (Vermilion.iteP (Vermilion.iteP same (i < Vermilion.Seq.len a) False) (i < Vermilion.Seq.len b) False))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 8 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index a i)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 8 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index b i)
    (then_0_assert_4 : (tmp_ = tmp__2) → Vermilion.inUnsignedRange 64 (i + 1))
    (then_0_assume_16 : (tmp_ = tmp__2) → (i_2 = ((i + 1) % 18446744073709551616)))
    (then_0_assume_17 : (tmp_ = tmp__2) → (same_2 ↔ same))
    (else_0_assume_15 : (¬ (tmp_ = tmp__2)) → (i_2 = i))
    (else_0_assume_16 : (¬ (tmp_ = tmp__2)) → (same_2 ↔ False))
    (assume_19 : Vermilion.inUnsignedRange 64 i_2) :
    ((0 ≤ ((Vermilion.Seq.len a - i_2) + (Vermilion.iteP same_2 1 0))) ∧ (((Vermilion.Seq.len a - i_2) + (Vermilion.iteP same_2 1 0)) < ((Vermilion.Seq.len a - i) + (Vermilion.iteP same 1 0)))) ∨ ((((Vermilion.Seq.len a - i_2) + (Vermilion.iteP same_2 1 0)) = ((Vermilion.Seq.len a - i) + (Vermilion.iteP same 1 0))) ∧ False) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_lt.assert_0_decreases

-- vrml:begin reclaim_plan.key_lt.call_requires_9 5daf243a69220cfa
/--
Generated VC `reclaim_plan.key_lt.call_requires_9`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1012:78-1012:82`
- Rust/SST construct: call vec_index
- AssertId: `9`
- Statement hash: `5daf243a69220cfa`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def call_requires_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1012
  startColumn := 78
  endLine := 1012
  endColumn := 82
  assertId := "9"
  functionName := "reclaim_plan.key_lt"
  kind := "call_requires"
  statementHash := "5daf243a69220cfa"
}
@[vrml_obligation] theorem call_requires_9
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (i : Int)
    (same : Prop)
    (tmp__3 : Prop)
    (tmp__8 : Prop)
    (tmp__4 : Prop)
    (tmp__7 : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 i)
    (loop_0_exit_1 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len a))
    (loop_0_exit_2 : i ≤ Vermilion.Seq.len b)
    (loop_0_exit_3 : reclaim_plan.prefix_eq_spec a b i)
    (loop_0_exit_4 : (¬ same) → (((i < Vermilion.Seq.len a) ∧ (i < Vermilion.Seq.len b)) ∧ (¬ (Vermilion.Seq.index a i = Vermilion.Seq.index b i))))
    (loop_0_exit_5 : (¬ (Vermilion.iteP (Vermilion.iteP same (i < Vermilion.Seq.len a) False) (i < Vermilion.Seq.len b) False)))
    (assume_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (then_1_assume_12 : (i = Vermilion.Seq.len a) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (then_1_assume_13 : (i = Vermilion.Seq.len a) → (tmp__3 ↔ (i < Vermilion.Seq.len b)))
    (else_1_assume_12 : (¬ (i = Vermilion.Seq.len a)) → (tmp__3 ↔ False))
    (branch_2 : (¬ tmp__3))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (then_3_assume_17 : (i < Vermilion.Seq.len a) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (then_3_assume_18 : (i < Vermilion.Seq.len a) → (tmp__4 ↔ (i < Vermilion.Seq.len b)))
    (else_3_assume_17 : (¬ (i < Vermilion.Seq.len a)) → (tmp__4 ↔ False))
    (branch_4 : tmp__4) :
    i < Vermilion.Seq.len a := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_lt.call_requires_9

-- vrml:begin reclaim_plan.key_lt.call_requires_10 d1def48cc094142b
/--
Generated VC `reclaim_plan.key_lt.call_requires_10`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1012:85-1012:89`
- Rust/SST construct: call vec_index
- AssertId: `10`
- Statement hash: `d1def48cc094142b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def call_requires_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1012
  startColumn := 85
  endLine := 1012
  endColumn := 89
  assertId := "10"
  functionName := "reclaim_plan.key_lt"
  kind := "call_requires"
  statementHash := "d1def48cc094142b"
}
@[vrml_obligation] theorem call_requires_10
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (i : Int)
    (same : Prop)
    (tmp__3 : Prop)
    (tmp__8 : Prop)
    (tmp__4 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 i)
    (loop_0_exit_1 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len a))
    (loop_0_exit_2 : i ≤ Vermilion.Seq.len b)
    (loop_0_exit_3 : reclaim_plan.prefix_eq_spec a b i)
    (loop_0_exit_4 : (¬ same) → (((i < Vermilion.Seq.len a) ∧ (i < Vermilion.Seq.len b)) ∧ (¬ (Vermilion.Seq.index a i = Vermilion.Seq.index b i))))
    (loop_0_exit_5 : (¬ (Vermilion.iteP (Vermilion.iteP same (i < Vermilion.Seq.len a) False) (i < Vermilion.Seq.len b) False)))
    (assume_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (then_1_assume_12 : (i = Vermilion.Seq.len a) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (then_1_assume_13 : (i = Vermilion.Seq.len a) → (tmp__3 ↔ (i < Vermilion.Seq.len b)))
    (else_1_assume_12 : (¬ (i = Vermilion.Seq.len a)) → (tmp__3 ↔ False))
    (branch_2 : (¬ tmp__3))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (then_3_assume_17 : (i < Vermilion.Seq.len a) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (then_3_assume_18 : (i < Vermilion.Seq.len a) → (tmp__4 ↔ (i < Vermilion.Seq.len b)))
    (else_3_assume_17 : (¬ (i < Vermilion.Seq.len a)) → (tmp__4 ↔ False))
    (branch_4 : tmp__4)
    (call_vec_index_2_ensures_0 : Vermilion.inUnsignedRange 8 tmp__5)
    (call_vec_index_2_ensures_1 : tmp__5 = Vermilion.Seq.index a i) :
    i < Vermilion.Seq.len b := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_lt.call_requires_10

-- vrml:begin reclaim_plan.key_lt.assert_11 4a44e7cbf6328c4f
/--
Generated VC `reclaim_plan.key_lt.assert_11`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1015:20-1015:52`
- Rust/SST construct: Rust source assertion
- AssertId: `11`
- Statement hash: `4a44e7cbf6328c4f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def assert_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1015
  startColumn := 20
  endLine := 1015
  endColumn := 52
  assertId := "11"
  functionName := "reclaim_plan.key_lt"
  kind := "assert"
  statementHash := "4a44e7cbf6328c4f"
}
@[vrml_obligation] theorem assert_11
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (i : Int)
    (same : Prop)
    (tmp__3 : Prop)
    (tmp__8 : Prop)
    (tmp__4 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : Int)
    (tmp__6 : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 i)
    (loop_0_exit_1 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len a))
    (loop_0_exit_2 : i ≤ Vermilion.Seq.len b)
    (loop_0_exit_3 : reclaim_plan.prefix_eq_spec a b i)
    (loop_0_exit_4 : (¬ same) → (((i < Vermilion.Seq.len a) ∧ (i < Vermilion.Seq.len b)) ∧ (¬ (Vermilion.Seq.index a i = Vermilion.Seq.index b i))))
    (loop_0_exit_5 : (¬ (Vermilion.iteP (Vermilion.iteP same (i < Vermilion.Seq.len a) False) (i < Vermilion.Seq.len b) False)))
    (assume_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (then_1_assume_12 : (i = Vermilion.Seq.len a) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (then_1_assume_13 : (i = Vermilion.Seq.len a) → (tmp__3 ↔ (i < Vermilion.Seq.len b)))
    (else_1_assume_12 : (¬ (i = Vermilion.Seq.len a)) → (tmp__3 ↔ False))
    (then_2_assume_15 : tmp__3 → (tmp__8 ↔ True))
    (else_2_assume_15 : (¬ tmp__3) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (else_2_then_3_assume_17 : (¬ tmp__3) → ((i < Vermilion.Seq.len a) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b)))
    (else_2_then_3_assume_18 : (¬ tmp__3) → ((i < Vermilion.Seq.len a) → (tmp__4 ↔ (i < Vermilion.Seq.len b))))
    (else_2_else_3_assume_17 : (¬ tmp__3) → ((¬ (i < Vermilion.Seq.len a)) → (tmp__4 ↔ False)))
    (else_2_then_4_call_vec_index_2_ensures_0 : (¬ tmp__3) → (tmp__4 → Vermilion.inUnsignedRange 8 tmp__5))
    (else_2_then_4_call_vec_index_2_ensures_1 : (¬ tmp__3) → (tmp__4 → (tmp__5 = Vermilion.Seq.index a i)))
    (else_2_then_4_call_vec_index_3_ensures_0 : (¬ tmp__3) → (tmp__4 → Vermilion.inUnsignedRange 8 tmp__6))
    (else_2_then_4_call_vec_index_3_ensures_1 : (¬ tmp__3) → (tmp__4 → (tmp__6 = Vermilion.Seq.index b i)))
    (else_2_then_4_assume_24 : (¬ tmp__3) → (tmp__4 → (tmp__7 ↔ (tmp__5 < tmp__6))))
    (else_2_else_4_assume_20 : (¬ tmp__3) → ((¬ tmp__4) → (tmp__7 ↔ False)))
    (else_2_assume_25 : (¬ tmp__3) → (tmp__8 ↔ tmp__7))
    (branch_5 : tmp__8) :
    reclaim_plan.key_lt_at_spec a b i := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_lt.assert_11

-- vrml:begin reclaim_plan.key_lt.assert_12 494dd35b6cc9f313
/--
Generated VC `reclaim_plan.key_lt.assert_12`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1020:24-1020:38`
- Rust/SST construct: Rust source assertion
- AssertId: `12`
- Statement hash: `494dd35b6cc9f313`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩
-/
def assert_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1020
  startColumn := 24
  endLine := 1020
  endColumn := 38
  assertId := "12"
  functionName := "reclaim_plan.key_lt"
  kind := "assert"
  statementHash := "494dd35b6cc9f313"
}
@[vrml_obligation] theorem assert_12
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (i : Int)
    (same : Prop)
    (tmp__3 : Prop)
    (tmp__8 : Prop)
    (tmp__4 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : Int)
    (tmp__6 : Int)
    (choose_spec_0 : (∃ (p : Int), reclaim_plan.key_lt_at_spec a b p) → (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 i)
    (loop_0_exit_1 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len a))
    (loop_0_exit_2 : i ≤ Vermilion.Seq.len b)
    (loop_0_exit_3 : reclaim_plan.prefix_eq_spec a b i)
    (loop_0_exit_4 : (¬ same) → (((i < Vermilion.Seq.len a) ∧ (i < Vermilion.Seq.len b)) ∧ (¬ (Vermilion.Seq.index a i = Vermilion.Seq.index b i))))
    (loop_0_exit_5 : (¬ (Vermilion.iteP (Vermilion.iteP same (i < Vermilion.Seq.len a) False) (i < Vermilion.Seq.len b) False)))
    (assume_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (then_1_assume_12 : (i = Vermilion.Seq.len a) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (then_1_assume_13 : (i = Vermilion.Seq.len a) → (tmp__3 ↔ (i < Vermilion.Seq.len b)))
    (else_1_assume_12 : (¬ (i = Vermilion.Seq.len a)) → (tmp__3 ↔ False))
    (then_2_assume_15 : tmp__3 → (tmp__8 ↔ True))
    (else_2_assume_15 : (¬ tmp__3) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (else_2_then_3_assume_17 : (¬ tmp__3) → ((i < Vermilion.Seq.len a) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b)))
    (else_2_then_3_assume_18 : (¬ tmp__3) → ((i < Vermilion.Seq.len a) → (tmp__4 ↔ (i < Vermilion.Seq.len b))))
    (else_2_else_3_assume_17 : (¬ tmp__3) → ((¬ (i < Vermilion.Seq.len a)) → (tmp__4 ↔ False)))
    (else_2_then_4_call_vec_index_2_ensures_0 : (¬ tmp__3) → (tmp__4 → Vermilion.inUnsignedRange 8 tmp__5))
    (else_2_then_4_call_vec_index_2_ensures_1 : (¬ tmp__3) → (tmp__4 → (tmp__5 = Vermilion.Seq.index a i)))
    (else_2_then_4_call_vec_index_3_ensures_0 : (¬ tmp__3) → (tmp__4 → Vermilion.inUnsignedRange 8 tmp__6))
    (else_2_then_4_call_vec_index_3_ensures_1 : (¬ tmp__3) → (tmp__4 → (tmp__6 = Vermilion.Seq.index b i)))
    (else_2_then_4_assume_24 : (¬ tmp__3) → (tmp__4 → (tmp__7 ↔ (tmp__5 < tmp__6))))
    (else_2_else_4_assume_20 : (¬ tmp__3) → ((¬ tmp__4) → (tmp__7 ↔ False)))
    (else_2_assume_25 : (¬ tmp__3) → (tmp__8 ↔ tmp__7))
    (then_5_assert_11 : tmp__8 → reclaim_plan.key_lt_at_spec a b i)
    (branch_6 : reclaim_plan.key_lt_spec a b)
    (branch_7 : Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) < i) :
    Vermilion.Seq.index a (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)) = Vermilion.Seq.index b (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_lt.assert_12

-- vrml:begin reclaim_plan.key_lt.assert_13 4c72637f926e233c
/--
Generated VC `reclaim_plan.key_lt.assert_13`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1022:24-1022:52`
- Rust/SST construct: Rust source assertion
- AssertId: `13`
- Statement hash: `4c72637f926e233c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩
-/
def assert_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1022
  startColumn := 24
  endLine := 1022
  endColumn := 52
  assertId := "13"
  functionName := "reclaim_plan.key_lt"
  kind := "assert"
  statementHash := "4c72637f926e233c"
}
@[vrml_obligation] theorem assert_13
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (i : Int)
    (same : Prop)
    (tmp__3 : Prop)
    (tmp__8 : Prop)
    (tmp__4 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : Int)
    (tmp__6 : Int)
    (choose_spec_0 : (∃ (p : Int), reclaim_plan.key_lt_at_spec a b p) → (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 i)
    (loop_0_exit_1 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len a))
    (loop_0_exit_2 : i ≤ Vermilion.Seq.len b)
    (loop_0_exit_3 : reclaim_plan.prefix_eq_spec a b i)
    (loop_0_exit_4 : (¬ same) → (((i < Vermilion.Seq.len a) ∧ (i < Vermilion.Seq.len b)) ∧ (¬ (Vermilion.Seq.index a i = Vermilion.Seq.index b i))))
    (loop_0_exit_5 : (¬ (Vermilion.iteP (Vermilion.iteP same (i < Vermilion.Seq.len a) False) (i < Vermilion.Seq.len b) False)))
    (assume_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (then_1_assume_12 : (i = Vermilion.Seq.len a) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (then_1_assume_13 : (i = Vermilion.Seq.len a) → (tmp__3 ↔ (i < Vermilion.Seq.len b)))
    (else_1_assume_12 : (¬ (i = Vermilion.Seq.len a)) → (tmp__3 ↔ False))
    (then_2_assume_15 : tmp__3 → (tmp__8 ↔ True))
    (else_2_assume_15 : (¬ tmp__3) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (else_2_then_3_assume_17 : (¬ tmp__3) → ((i < Vermilion.Seq.len a) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b)))
    (else_2_then_3_assume_18 : (¬ tmp__3) → ((i < Vermilion.Seq.len a) → (tmp__4 ↔ (i < Vermilion.Seq.len b))))
    (else_2_else_3_assume_17 : (¬ tmp__3) → ((¬ (i < Vermilion.Seq.len a)) → (tmp__4 ↔ False)))
    (else_2_then_4_call_vec_index_2_ensures_0 : (¬ tmp__3) → (tmp__4 → Vermilion.inUnsignedRange 8 tmp__5))
    (else_2_then_4_call_vec_index_2_ensures_1 : (¬ tmp__3) → (tmp__4 → (tmp__5 = Vermilion.Seq.index a i)))
    (else_2_then_4_call_vec_index_3_ensures_0 : (¬ tmp__3) → (tmp__4 → Vermilion.inUnsignedRange 8 tmp__6))
    (else_2_then_4_call_vec_index_3_ensures_1 : (¬ tmp__3) → (tmp__4 → (tmp__6 = Vermilion.Seq.index b i)))
    (else_2_then_4_assume_24 : (¬ tmp__3) → (tmp__4 → (tmp__7 ↔ (tmp__5 < tmp__6))))
    (else_2_else_4_assume_20 : (¬ tmp__3) → ((¬ tmp__4) → (tmp__7 ↔ False)))
    (else_2_assume_25 : (¬ tmp__3) → (tmp__8 ↔ tmp__7))
    (then_5_assert_11 : tmp__8 → reclaim_plan.key_lt_at_spec a b i)
    (branch_6 : reclaim_plan.key_lt_spec a b)
    (branch_7 : (¬ (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) < i)))
    (branch_8 : Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) > i) :
    Vermilion.Seq.index a i = Vermilion.Seq.index b i := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_lt.assert_13

-- vrml:begin reclaim_plan.key_lt.ensures_14 cc25e6b27ca3bd5a
/--
Generated VC `reclaim_plan.key_lt.ensures_14`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:997:13-997:38`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `14`
- Statement hash: `cc25e6b27ca3bd5a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩
-/
def ensures_14_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 997
  startColumn := 13
  endLine := 997
  endColumn := 38
  assertId := "14"
  functionName := "reclaim_plan.key_lt"
  kind := "ensures"
  statementHash := "cc25e6b27ca3bd5a"
}
@[vrml_obligation] theorem ensures_14
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (i : Int)
    (same : Prop)
    (tmp__3 : Prop)
    (tmp__8 : Prop)
    (tmp__4 : Prop)
    (tmp__7 : Prop)
    (tmp__5 : Int)
    (tmp__6 : Int)
    (choose_spec_0 : (∃ (p : Int), reclaim_plan.key_lt_at_spec a b p) → (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 i)
    (loop_0_exit_1 : (0 ≤ i) ∧ (i ≤ Vermilion.Seq.len a))
    (loop_0_exit_2 : i ≤ Vermilion.Seq.len b)
    (loop_0_exit_3 : reclaim_plan.prefix_eq_spec a b i)
    (loop_0_exit_4 : (¬ same) → (((i < Vermilion.Seq.len a) ∧ (i < Vermilion.Seq.len b)) ∧ (¬ (Vermilion.Seq.index a i = Vermilion.Seq.index b i))))
    (loop_0_exit_5 : (¬ (Vermilion.iteP (Vermilion.iteP same (i < Vermilion.Seq.len a) False) (i < Vermilion.Seq.len b) False)))
    (assume_10 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (then_1_assume_12 : (i = Vermilion.Seq.len a) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b))
    (then_1_assume_13 : (i = Vermilion.Seq.len a) → (tmp__3 ↔ (i < Vermilion.Seq.len b)))
    (else_1_assume_12 : (¬ (i = Vermilion.Seq.len a)) → (tmp__3 ↔ False))
    (then_2_assume_15 : tmp__3 → (tmp__8 ↔ True))
    (else_2_assume_15 : (¬ tmp__3) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len a))
    (else_2_then_3_assume_17 : (¬ tmp__3) → ((i < Vermilion.Seq.len a) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len b)))
    (else_2_then_3_assume_18 : (¬ tmp__3) → ((i < Vermilion.Seq.len a) → (tmp__4 ↔ (i < Vermilion.Seq.len b))))
    (else_2_else_3_assume_17 : (¬ tmp__3) → ((¬ (i < Vermilion.Seq.len a)) → (tmp__4 ↔ False)))
    (else_2_then_4_call_vec_index_2_ensures_0 : (¬ tmp__3) → (tmp__4 → Vermilion.inUnsignedRange 8 tmp__5))
    (else_2_then_4_call_vec_index_2_ensures_1 : (¬ tmp__3) → (tmp__4 → (tmp__5 = Vermilion.Seq.index a i)))
    (else_2_then_4_call_vec_index_3_ensures_0 : (¬ tmp__3) → (tmp__4 → Vermilion.inUnsignedRange 8 tmp__6))
    (else_2_then_4_call_vec_index_3_ensures_1 : (¬ tmp__3) → (tmp__4 → (tmp__6 = Vermilion.Seq.index b i)))
    (else_2_then_4_assume_24 : (¬ tmp__3) → (tmp__4 → (tmp__7 ↔ (tmp__5 < tmp__6))))
    (else_2_else_4_assume_20 : (¬ tmp__3) → ((¬ tmp__4) → (tmp__7 ↔ False)))
    (else_2_assume_25 : (¬ tmp__3) → (tmp__8 ↔ tmp__7))
    (then_5_assert_11 : tmp__8 → reclaim_plan.key_lt_at_spec a b i)
    (then_6_then_7_assert_12 : reclaim_plan.key_lt_spec a b → ((Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) < i) → (Vermilion.Seq.index a (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)) = Vermilion.Seq.index b (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)))))
    (then_6_else_7_then_8_assert_13 : reclaim_plan.key_lt_spec a b → ((¬ (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) < i)) → ((Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) > i) → (Vermilion.Seq.index a i = Vermilion.Seq.index b i)))) :
    tmp__8 ↔ reclaim_plan.key_lt_spec a b := by
  have stop : i = Vermilion.Seq.len a ∨ i = Vermilion.Seq.len b ∨
      Vermilion.Seq.index a i ≠ Vermilion.Seq.index b i := by
    by_cases hs : same
    · by_contra hcon
      push_neg at hcon
      apply loop_0_exit_5
      have h1 : i < Vermilion.Seq.len a := by omega
      have h2 : i < Vermilion.Seq.len b := by omega
      simp [Vermilion.iteP, hs, h1, h2]
    · exact Or.inr (Or.inr (loop_0_exit_4 hs).2)
  rw [klt_iff a b i loop_0_exit_1.1 loop_0_exit_1.2 loop_0_exit_2 loop_0_exit_3 stop]
  by_cases h1 : i = Vermilion.Seq.len a
  · have t3 := then_1_assume_13 h1
    by_cases h2 : i < Vermilion.Seq.len b
    · have h3 : tmp__3 := t3.mpr h2
      have h8 : tmp__8 := (then_2_assume_15 h3).mpr trivial
      exact ⟨fun _ => Or.inl ⟨h1, h2⟩, fun _ => h8⟩
    · have n3 : ¬ tmp__3 := fun h => h2 (t3.mp h)
      have n4 : ¬ tmp__4 := fun h => (else_2_else_3_assume_17 n3 (by omega)).mp h
      have n7 : ¬ tmp__7 := fun h => (else_2_else_4_assume_20 n3 n4).mp h
      have n8 : ¬ tmp__8 := fun h => n7 ((else_2_assume_25 n3).mp h)
      constructor
      · intro h; exact absurd h n8
      · rintro (⟨_, h⟩ | ⟨⟨_, h⟩, _⟩) <;> omega
  · have n3 : ¬ tmp__3 := fun h => (else_1_assume_12 h1).mp h
    have hla : i < Vermilion.Seq.len a := by omega
    have t4 := else_2_then_3_assume_18 n3 hla
    by_cases h2 : i < Vermilion.Seq.len b
    · have h4 : tmp__4 := t4.mpr h2
      rw [else_2_assume_25 n3, else_2_then_4_assume_24 n3 h4,
        else_2_then_4_call_vec_index_2_ensures_1 n3 h4, else_2_then_4_call_vec_index_3_ensures_1 n3 h4]
      constructor
      · intro h; exact Or.inr ⟨⟨hla, h2⟩, h⟩
      · rintro (⟨h, _⟩ | ⟨_, h⟩)
        · exact absurd h h1
        · exact h
    · have n4 : ¬ tmp__4 := fun h => h2 (t4.mp h)
      have n7 : ¬ tmp__7 := fun h => (else_2_else_4_assume_20 n3 n4).mp h
      have n8 : ¬ tmp__8 := fun h => n7 ((else_2_assume_25 n3).mp h)
      constructor
      · intro h; exact absurd h n8
      · rintro (⟨h, _⟩ | ⟨⟨_, h⟩, _⟩)
        · exact absurd h h1
        · exact absurd h h2
-- vrml:end reclaim_plan.key_lt.ensures_14

end reclaim_plan.key_lt

