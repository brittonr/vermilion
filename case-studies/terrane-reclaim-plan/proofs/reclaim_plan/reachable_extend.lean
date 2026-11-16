import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

-- vrml:user:begin
theorem rf_eq (e : Vermilion.Seq (vermilion.tuple_2 Int Int)) (s d f : Int) (hf : 0 ≤ f) :
    reclaim_plan.reachable_fuel e s d f ↔
      (s = d ∨ (f ≠ 0 ∧ ∃ mid, reclaim_plan.has_edge_spec e s mid ∧
        reclaim_plan.reachable_fuel e mid d (f - 1))) := by
  conv_lhs => unfold reclaim_plan.reachable_fuel
  rw [dif_pos hf]
  by_cases hsd : s = d
  · simp [hsd]
  · by_cases hf0 : f = 0
    · simp [hsd, hf0]
    · have hc : Vermilion.natClip (f - 1) = f - 1 := Vermilion.natClip_of_nonneg (by omega)
      rw [hc]
      constructor
      · intro h
        exact Or.inr ⟨hf0, (h.2 hsd).2 hf0⟩
      · rintro (h | ⟨_, h⟩)
        · exact absurd h hsd
        · exact ⟨fun _ => trivial, fun _ => ⟨fun h0 => hf0 h0, fun _ => h⟩⟩

theorem rf_step (e : Vermilion.Seq (vermilion.tuple_2 Int Int)) (s m d f : Int) (hf : 0 ≤ f)
    (h1 : reclaim_plan.has_edge_spec e s m) (h2 : reclaim_plan.reachable_fuel e m d f) :
    reclaim_plan.reachable_fuel e s d (f + 1) :=
  (rf_eq e s d (f + 1) (by omega)).mpr
    (Or.inr ⟨by omega, m, h1, by rw [show f + 1 - 1 = f by omega]; exact h2⟩)

theorem rf_refl (e : Vermilion.Seq (vermilion.tuple_2 Int Int)) (s f : Int) (hf : 0 ≤ f) :
    reclaim_plan.reachable_fuel e s s f :=
  (rf_eq e s s f hf).mpr (Or.inl rfl)
-- vrml:user:end

namespace reclaim_plan.reachable_extend

-- vrml:begin reclaim_plan.reachable_extend.assert_0 0a65f3fd0b53f3da
/--
Generated VC `reclaim_plan.reachable_extend.assert_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:163:16-163:46`
- Rust/SST construct: Rust source assertion
- AssertId: `0`
- Statement hash: `0a65f3fd0b53f3da`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 163
  startColumn := 16
  endLine := 163
  endColumn := 46
  assertId := "0"
  functionName := "reclaim_plan.reachable_extend"
  kind := "assert"
  statementHash := "0a65f3fd0b53f3da"
}
@[vrml_obligation] theorem assert_0
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (src : Int)
    (u : Int)
    (v : Int)
    (fuel : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_1 : 0 ≤ fuel)
    (requires_2 : reclaim_plan.reachable_fuel edges src u fuel)
    (requires_3 : reclaim_plan.has_edge_spec edges u v)
    (branch_0 : (¬ (src = v)))
    (branch_1 : src = u) :
    reclaim_plan.reachable_fuel edges v v 0 := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.reachable_extend.assert_0

-- vrml:begin reclaim_plan.reachable_extend.assert_1 504844d6ec455351
/--
Generated VC `reclaim_plan.reachable_extend.assert_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:164:16-164:81`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `504844d6ec455351`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 164
  startColumn := 16
  endLine := 164
  endColumn := 81
  assertId := "1"
  functionName := "reclaim_plan.reachable_extend"
  kind := "assert"
  statementHash := "504844d6ec455351"
}
@[vrml_obligation] theorem assert_1
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (src : Int)
    (u : Int)
    (v : Int)
    (fuel : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_1 : 0 ≤ fuel)
    (requires_2 : reclaim_plan.reachable_fuel edges src u fuel)
    (requires_3 : reclaim_plan.has_edge_spec edges u v)
    (branch_0 : (¬ (src = v)))
    (branch_1 : src = u)
    (assert_0 : reclaim_plan.reachable_fuel edges v v 0) :
    reclaim_plan.has_edge_spec edges src v ∧ reclaim_plan.reachable_fuel edges v v fuel := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.reachable_extend.assert_1

-- vrml:begin reclaim_plan.reachable_extend.assert_anonymous_0 760451ae7619641e
/--
Generated VC `reclaim_plan.reachable_extend.assert_anonymous_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:168:9-168:62`
- Rust/SST construct: could not prove termination
- AssertId: `anonymous_0`
- Statement hash: `760451ae7619641e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩
-/
def assert_anonymous_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 168
  startColumn := 9
  endLine := 168
  endColumn := 62
  assertId := "anonymous_0"
  functionName := "reclaim_plan.reachable_extend"
  kind := "assert"
  statementHash := "760451ae7619641e"
}
@[vrml_obligation] theorem assert_anonymous_0
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (src : Int)
    (u : Int)
    (v : Int)
    (fuel : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_1 : 0 ≤ fuel)
    (requires_2 : reclaim_plan.reachable_fuel edges src u fuel)
    (requires_3 : reclaim_plan.has_edge_spec edges u v)
    (branch_0 : (¬ (src = v)))
    (branch_1 : (¬ (src = u))) :
    ((0 ≤ Vermilion.natClip (fuel - 1)) ∧ (Vermilion.natClip (fuel - 1) < fuel)) ∨ ((Vermilion.natClip (fuel - 1) = fuel) ∧ False) := by
  have hf0 : fuel ≠ 0 := by
    intro h; subst h
    rcases (rf_eq edges src u 0 (le_refl _)).mp requires_2 with h | ⟨h, _⟩
    · exact branch_1 h
    · exact h rfl
  left
  rw [Vermilion.natClip_of_nonneg (by omega)]
  omega
-- vrml:end reclaim_plan.reachable_extend.assert_anonymous_0

-- vrml:begin reclaim_plan.reachable_extend.call_requires_2_0 91b5609762f0b244
/--
Generated VC `reclaim_plan.reachable_extend.call_requires_2_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:168:9-168:62`
- Rust/SST construct: call reachable_extend
- AssertId: `2_0`
- Statement hash: `91b5609762f0b244`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩
-/
def call_requires_2_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 168
  startColumn := 9
  endLine := 168
  endColumn := 62
  assertId := "2_0"
  functionName := "reclaim_plan.reachable_extend"
  kind := "call_requires"
  statementHash := "91b5609762f0b244"
}
@[vrml_obligation] theorem call_requires_2_0
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (src : Int)
    (u : Int)
    (v : Int)
    (fuel : Int)
    (choose_spec_0 : (∃ (mid : Int), (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid u (Vermilion.natClip (fuel - 1)))) → (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid u (Vermilion.natClip (fuel - 1)))) (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid u (Vermilion.natClip (fuel - 1))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_1 : 0 ≤ fuel)
    (requires_2 : reclaim_plan.reachable_fuel edges src u fuel)
    (requires_3 : reclaim_plan.has_edge_spec edges u v)
    (branch_0 : (¬ (src = v)))
    (branch_1 : (¬ (src = u)))
    (assert_anonymous_0 : ((0 ≤ Vermilion.natClip (fuel - 1)) ∧ (Vermilion.natClip (fuel - 1) < fuel)) ∨ ((Vermilion.natClip (fuel - 1) = fuel) ∧ False)) :
    reclaim_plan.reachable_fuel edges (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid u (Vermilion.natClip (fuel - 1))))) u (Vermilion.natClip (fuel - 1)) := by
  have hf0 : fuel ≠ 0 := by
    intro h; subst h
    rcases (rf_eq edges src u 0 (le_refl _)).mp requires_2 with h | ⟨h, _⟩
    · exact branch_1 h
    · exact h rfl
  have hc : Vermilion.natClip (fuel - 1) = fuel - 1 := Vermilion.natClip_of_nonneg (by omega)
  rcases (rf_eq edges src u fuel requires_1).mp requires_2 with h | ⟨_, mid, h1, h2⟩
  · exact absurd h branch_1
  · have := choose_spec_0 ⟨mid, h1, by rw [hc]; exact h2⟩
    exact this.2
-- vrml:end reclaim_plan.reachable_extend.call_requires_2_0

-- vrml:begin reclaim_plan.reachable_extend.call_requires_2_1 11e273db8ed49d00
/--
Generated VC `reclaim_plan.reachable_extend.call_requires_2_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:168:9-168:62`
- Rust/SST construct: call reachable_extend
- AssertId: `2_1`
- Statement hash: `11e273db8ed49d00`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩
-/
def call_requires_2_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 168
  startColumn := 9
  endLine := 168
  endColumn := 62
  assertId := "2_1"
  functionName := "reclaim_plan.reachable_extend"
  kind := "call_requires"
  statementHash := "11e273db8ed49d00"
}
@[vrml_obligation] theorem call_requires_2_1
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (src : Int)
    (u : Int)
    (v : Int)
    (fuel : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_1 : 0 ≤ fuel)
    (requires_2 : reclaim_plan.reachable_fuel edges src u fuel)
    (requires_3 : reclaim_plan.has_edge_spec edges u v)
    (branch_0 : (¬ (src = v)))
    (branch_1 : (¬ (src = u)))
    (assert_anonymous_0 : ((0 ≤ Vermilion.natClip (fuel - 1)) ∧ (Vermilion.natClip (fuel - 1) < fuel)) ∨ ((Vermilion.natClip (fuel - 1) = fuel) ∧ False)) :
    reclaim_plan.has_edge_spec edges u v := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.reachable_extend.call_requires_2_1

-- vrml:begin reclaim_plan.reachable_extend.assert_3 7567127949ea19da
/--
Generated VC `reclaim_plan.reachable_extend.assert_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:169:16-169:85`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `7567127949ea19da`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 169
  startColumn := 16
  endLine := 169
  endColumn := 85
  assertId := "3"
  functionName := "reclaim_plan.reachable_extend"
  kind := "assert"
  statementHash := "7567127949ea19da"
}
@[vrml_obligation] theorem assert_3
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (src : Int)
    (u : Int)
    (v : Int)
    (fuel : Int)
    (choose_spec_0 : (∃ (mid : Int), (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid u (Vermilion.natClip (fuel - 1)))) → (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid u (Vermilion.natClip (fuel - 1)))) (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid u (Vermilion.natClip (fuel - 1))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_1 : 0 ≤ fuel)
    (requires_2 : reclaim_plan.reachable_fuel edges src u fuel)
    (requires_3 : reclaim_plan.has_edge_spec edges u v)
    (branch_0 : (¬ (src = v)))
    (branch_1 : (¬ (src = u)))
    (assert_anonymous_0 : ((0 ≤ Vermilion.natClip (fuel - 1)) ∧ (Vermilion.natClip (fuel - 1) < fuel)) ∨ ((Vermilion.natClip (fuel - 1) = fuel) ∧ False))
    (call_reachable_extend_ensures_0 : reclaim_plan.reachable_fuel edges (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid u (Vermilion.natClip (fuel - 1))))) v (Vermilion.natClip (Vermilion.natClip (fuel - 1) + 1))) :
    reclaim_plan.has_edge_spec edges src (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid u (Vermilion.natClip (fuel - 1))))) ∧ reclaim_plan.reachable_fuel edges (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid u (Vermilion.natClip (fuel - 1))))) v fuel := by
  have hf0 : fuel ≠ 0 := by
    intro h; subst h
    rcases (rf_eq edges src u 0 (le_refl _)).mp requires_2 with h | ⟨h, _⟩
    · exact branch_1 h
    · exact h rfl
  have hc : Vermilion.natClip (fuel - 1) = fuel - 1 := Vermilion.natClip_of_nonneg (by omega)
  have hc2 : Vermilion.natClip (Vermilion.natClip (fuel - 1) + 1) = fuel := by
    rw [hc, Vermilion.natClip_of_nonneg (by omega)]; omega
  rcases (rf_eq edges src u fuel requires_1).mp requires_2 with h | ⟨_, mid, h1, h2⟩
  · exact absurd h branch_1
  · have := choose_spec_0 ⟨mid, h1, by rw [hc]; exact h2⟩
    refine ⟨this.1, ?_⟩
    rw [hc2] at call_reachable_extend_ensures_0
    exact call_reachable_extend_ensures_0
-- vrml:end reclaim_plan.reachable_extend.assert_3

-- vrml:begin reclaim_plan.reachable_extend.ensures_4 2e7995a3e8eab029
/--
Generated VC `reclaim_plan.reachable_extend.ensures_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:158:13-158:52`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `4`
- Statement hash: `2e7995a3e8eab029`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩
-/
def ensures_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 158
  startColumn := 13
  endLine := 158
  endColumn := 52
  assertId := "4"
  functionName := "reclaim_plan.reachable_extend"
  kind := "ensures"
  statementHash := "2e7995a3e8eab029"
}
@[vrml_obligation] theorem ensures_4
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (src : Int)
    (u : Int)
    (v : Int)
    (fuel : Int)
    (choose_spec_0 : (∃ (mid : Int), (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid u (Vermilion.natClip (fuel - 1)))) → (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid u (Vermilion.natClip (fuel - 1)))) (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid u (Vermilion.natClip (fuel - 1))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_1 : 0 ≤ fuel)
    (requires_2 : reclaim_plan.reachable_fuel edges src u fuel)
    (requires_3 : reclaim_plan.has_edge_spec edges u v)
    (else_0_then_1_assert_0 : (¬ (src = v)) → ((src = u) → reclaim_plan.reachable_fuel edges v v 0))
    (else_0_then_1_assert_1 : (¬ (src = v)) → ((src = u) → (reclaim_plan.has_edge_spec edges src v ∧ reclaim_plan.reachable_fuel edges v v fuel)))
    (else_0_else_1_assert_anonymous_0 : (¬ (src = v)) → ((¬ (src = u)) → (((0 ≤ Vermilion.natClip (fuel - 1)) ∧ (Vermilion.natClip (fuel - 1) < fuel)) ∨ ((Vermilion.natClip (fuel - 1) = fuel) ∧ False))))
    (else_0_else_1_call_reachable_extend_ensures_0 : (¬ (src = v)) → ((¬ (src = u)) → reclaim_plan.reachable_fuel edges (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid u (Vermilion.natClip (fuel - 1))))) v (Vermilion.natClip (Vermilion.natClip (fuel - 1) + 1))))
    (else_0_else_1_assert_3 : (¬ (src = v)) → ((¬ (src = u)) → (reclaim_plan.has_edge_spec edges src (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid u (Vermilion.natClip (fuel - 1))))) ∧ reclaim_plan.reachable_fuel edges (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid u (Vermilion.natClip (fuel - 1))))) v fuel))) :
    reclaim_plan.reachable_fuel edges src v (Vermilion.natClip (fuel + 1)) := by
  rw [Vermilion.natClip_of_nonneg (by omega)]
  by_cases h1 : src = v
  · rw [h1]; exact rf_refl edges v (fuel + 1) (by omega)
  · by_cases h2 : src = u
    · obtain ⟨he, hr⟩ := else_0_then_1_assert_1 h1 h2
      exact rf_step edges src v v fuel requires_1 he hr
    · obtain ⟨he, hr⟩ := else_0_else_1_assert_3 h1 h2
      exact rf_step edges src _ v fuel requires_1 he hr
-- vrml:end reclaim_plan.reachable_extend.ensures_4

end reclaim_plan.reachable_extend

