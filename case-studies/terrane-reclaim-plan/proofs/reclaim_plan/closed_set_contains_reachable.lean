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

namespace reclaim_plan.closed_set_contains_reachable

-- vrml:begin reclaim_plan.closed_set_contains_reachable.assert_0 bc37ed8519bdb139
/--
Generated VC `reclaim_plan.closed_set_contains_reachable.assert_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:150:16-150:75`
- Rust/SST construct: Rust source assertion
- AssertId: `0`
- Statement hash: `bc37ed8519bdb139`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 150
  startColumn := 16
  endLine := 150
  endColumn := 75
  assertId := "0"
  functionName := "reclaim_plan.closed_set_contains_reachable"
  kind := "assert"
  statementHash := "bc37ed8519bdb139"
}
@[vrml_obligation] theorem assert_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (retained : (Vermilion.Seq Prop))
    (src : Int)
    (dst : Int)
    (fuel : Int)
    (choose_spec_0 : (∃ (i : Int), ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) → (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))
    (choose_spec_1 : (∃ (mid : Int), (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) → (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : 0 ≤ fuel)
    (requires_2 : Vermilion.Seq.len retained = n)
    (requires_3 : reclaim_plan.edges_in_range_spec n edges)
    (requires_4 : reclaim_plan.closed_spec edges retained)
    (requires_5 : (0 ≤ src) ∧ (src < n))
    (requires_6 : Vermilion.Seq.index retained src)
    (requires_7 : reclaim_plan.reachable_fuel edges src dst fuel)
    (branch_0 : (¬ (src = dst))) :
    Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))) := by
  have hf0 : fuel ≠ 0 := by
    intro h; subst h
    rcases (rf_eq edges src dst 0 (le_refl _)).mp requires_7 with h | ⟨h, _⟩
    · exact branch_0 h
    · exact h rfl
  have hc : Vermilion.natClip (fuel - 1) = fuel - 1 := Vermilion.natClip_of_nonneg (by omega)
  obtain ⟨mid0, hm1, hm2⟩ : ∃ mid, reclaim_plan.has_edge_spec edges src mid ∧
      reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)) := by
    rcases (rf_eq edges src dst fuel requires_1).mp requires_7 with h | ⟨_, mid, h1, h2⟩
    · exact absurd h branch_0
    · exact ⟨mid, h1, by rw [hc]; exact h2⟩
  obtain ⟨hMe, hMr⟩ := choose_spec_1 ⟨mid0, hm1, hm2⟩
  exact requires_4 _ (choose_spec_0 hMe).1.1
-- vrml:end reclaim_plan.closed_set_contains_reachable.assert_0

-- vrml:begin reclaim_plan.closed_set_contains_reachable.assert_anonymous_0 8610492eee8f15dc
/--
Generated VC `reclaim_plan.closed_set_contains_reachable.assert_anonymous_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:151:9-151:87`
- Rust/SST construct: could not prove termination
- AssertId: `anonymous_0`
- Statement hash: `8610492eee8f15dc`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩
-/
def assert_anonymous_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 151
  startColumn := 9
  endLine := 151
  endColumn := 87
  assertId := "anonymous_0"
  functionName := "reclaim_plan.closed_set_contains_reachable"
  kind := "assert"
  statementHash := "8610492eee8f15dc"
}
@[vrml_obligation] theorem assert_anonymous_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (retained : (Vermilion.Seq Prop))
    (src : Int)
    (dst : Int)
    (fuel : Int)
    (choose_spec_0 : (∃ (i : Int), ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) → (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))
    (choose_spec_1 : (∃ (mid : Int), (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) → (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : 0 ≤ fuel)
    (requires_2 : Vermilion.Seq.len retained = n)
    (requires_3 : reclaim_plan.edges_in_range_spec n edges)
    (requires_4 : reclaim_plan.closed_spec edges retained)
    (requires_5 : (0 ≤ src) ∧ (src < n))
    (requires_6 : Vermilion.Seq.index retained src)
    (requires_7 : reclaim_plan.reachable_fuel edges src dst fuel)
    (branch_0 : (¬ (src = dst)))
    (assert_0 : Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))))))) :
    ((0 ≤ Vermilion.natClip (fuel - 1)) ∧ (Vermilion.natClip (fuel - 1) < fuel)) ∨ ((Vermilion.natClip (fuel - 1) = fuel) ∧ False) := by
  have hf0 : fuel ≠ 0 := by
    intro h; subst h
    rcases (rf_eq edges src dst 0 (le_refl _)).mp requires_7 with h | ⟨h, _⟩
    · exact branch_0 h
    · exact h rfl
  have hc : Vermilion.natClip (fuel - 1) = fuel - 1 := Vermilion.natClip_of_nonneg (by omega)
  obtain ⟨mid0, hm1, hm2⟩ : ∃ mid, reclaim_plan.has_edge_spec edges src mid ∧
      reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)) := by
    rcases (rf_eq edges src dst fuel requires_1).mp requires_7 with h | ⟨_, mid, h1, h2⟩
    · exact absurd h branch_0
    · exact ⟨mid, h1, by rw [hc]; exact h2⟩
  left; rw [hc]; omega
-- vrml:end reclaim_plan.closed_set_contains_reachable.assert_anonymous_0

-- vrml:begin reclaim_plan.closed_set_contains_reachable.call_requires_1_0 3bbd1bd2f4c0b518
/--
Generated VC `reclaim_plan.closed_set_contains_reachable.call_requires_1_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:151:9-151:87`
- Rust/SST construct: call closed_set_contains_reachable
- AssertId: `1_0`
- Statement hash: `3bbd1bd2f4c0b518`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩
-/
def call_requires_1_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 151
  startColumn := 9
  endLine := 151
  endColumn := 87
  assertId := "1_0"
  functionName := "reclaim_plan.closed_set_contains_reachable"
  kind := "call_requires"
  statementHash := "3bbd1bd2f4c0b518"
}
@[vrml_obligation] theorem call_requires_1_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (retained : (Vermilion.Seq Prop))
    (src : Int)
    (dst : Int)
    (fuel : Int)
    (choose_spec_0 : (∃ (i : Int), ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) → (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))
    (choose_spec_1 : (∃ (mid : Int), (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) → (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : 0 ≤ fuel)
    (requires_2 : Vermilion.Seq.len retained = n)
    (requires_3 : reclaim_plan.edges_in_range_spec n edges)
    (requires_4 : reclaim_plan.closed_spec edges retained)
    (requires_5 : (0 ≤ src) ∧ (src < n))
    (requires_6 : Vermilion.Seq.index retained src)
    (requires_7 : reclaim_plan.reachable_fuel edges src dst fuel)
    (branch_0 : (¬ (src = dst)))
    (assert_0 : Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))))
    (assert_anonymous_0 : ((0 ≤ Vermilion.natClip (fuel - 1)) ∧ (Vermilion.natClip (fuel - 1) < fuel)) ∨ ((Vermilion.natClip (fuel - 1) = fuel) ∧ False)) :
    Vermilion.Seq.len retained = n := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.closed_set_contains_reachable.call_requires_1_0

-- vrml:begin reclaim_plan.closed_set_contains_reachable.call_requires_1_1 f7a2b6747af0e26f
/--
Generated VC `reclaim_plan.closed_set_contains_reachable.call_requires_1_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:151:9-151:87`
- Rust/SST construct: call closed_set_contains_reachable
- AssertId: `1_1`
- Statement hash: `f7a2b6747af0e26f`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩
-/
def call_requires_1_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 151
  startColumn := 9
  endLine := 151
  endColumn := 87
  assertId := "1_1"
  functionName := "reclaim_plan.closed_set_contains_reachable"
  kind := "call_requires"
  statementHash := "f7a2b6747af0e26f"
}
@[vrml_obligation] theorem call_requires_1_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (retained : (Vermilion.Seq Prop))
    (src : Int)
    (dst : Int)
    (fuel : Int)
    (choose_spec_0 : (∃ (i : Int), ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) → (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))
    (choose_spec_1 : (∃ (mid : Int), (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) → (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : 0 ≤ fuel)
    (requires_2 : Vermilion.Seq.len retained = n)
    (requires_3 : reclaim_plan.edges_in_range_spec n edges)
    (requires_4 : reclaim_plan.closed_spec edges retained)
    (requires_5 : (0 ≤ src) ∧ (src < n))
    (requires_6 : Vermilion.Seq.index retained src)
    (requires_7 : reclaim_plan.reachable_fuel edges src dst fuel)
    (branch_0 : (¬ (src = dst)))
    (assert_0 : Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))))
    (assert_anonymous_0 : ((0 ≤ Vermilion.natClip (fuel - 1)) ∧ (Vermilion.natClip (fuel - 1) < fuel)) ∨ ((Vermilion.natClip (fuel - 1) = fuel) ∧ False)) :
    reclaim_plan.edges_in_range_spec n edges := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.closed_set_contains_reachable.call_requires_1_1

-- vrml:begin reclaim_plan.closed_set_contains_reachable.call_requires_1_2 4029a52027831849
/--
Generated VC `reclaim_plan.closed_set_contains_reachable.call_requires_1_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:151:9-151:87`
- Rust/SST construct: call closed_set_contains_reachable
- AssertId: `1_2`
- Statement hash: `4029a52027831849`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩
-/
def call_requires_1_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 151
  startColumn := 9
  endLine := 151
  endColumn := 87
  assertId := "1_2"
  functionName := "reclaim_plan.closed_set_contains_reachable"
  kind := "call_requires"
  statementHash := "4029a52027831849"
}
@[vrml_obligation] theorem call_requires_1_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (retained : (Vermilion.Seq Prop))
    (src : Int)
    (dst : Int)
    (fuel : Int)
    (choose_spec_0 : (∃ (i : Int), ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) → (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))
    (choose_spec_1 : (∃ (mid : Int), (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) → (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : 0 ≤ fuel)
    (requires_2 : Vermilion.Seq.len retained = n)
    (requires_3 : reclaim_plan.edges_in_range_spec n edges)
    (requires_4 : reclaim_plan.closed_spec edges retained)
    (requires_5 : (0 ≤ src) ∧ (src < n))
    (requires_6 : Vermilion.Seq.index retained src)
    (requires_7 : reclaim_plan.reachable_fuel edges src dst fuel)
    (branch_0 : (¬ (src = dst)))
    (assert_0 : Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))))
    (assert_anonymous_0 : ((0 ≤ Vermilion.natClip (fuel - 1)) ∧ (Vermilion.natClip (fuel - 1) < fuel)) ∨ ((Vermilion.natClip (fuel - 1) = fuel) ∧ False)) :
    reclaim_plan.closed_spec edges retained := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.closed_set_contains_reachable.call_requires_1_2

-- vrml:begin reclaim_plan.closed_set_contains_reachable.call_requires_1_3 9eeb6191c2adf9aa
/--
Generated VC `reclaim_plan.closed_set_contains_reachable.call_requires_1_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:151:9-151:87`
- Rust/SST construct: call closed_set_contains_reachable
- AssertId: `1_3`
- Statement hash: `9eeb6191c2adf9aa`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩
-/
def call_requires_1_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 151
  startColumn := 9
  endLine := 151
  endColumn := 87
  assertId := "1_3"
  functionName := "reclaim_plan.closed_set_contains_reachable"
  kind := "call_requires"
  statementHash := "9eeb6191c2adf9aa"
}
@[vrml_obligation] theorem call_requires_1_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (retained : (Vermilion.Seq Prop))
    (src : Int)
    (dst : Int)
    (fuel : Int)
    (choose_spec_0 : (∃ (mid : Int), (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) → (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))
    (choose_spec_1 : (∃ (i : Int), ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) → (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : 0 ≤ fuel)
    (requires_2 : Vermilion.Seq.len retained = n)
    (requires_3 : reclaim_plan.edges_in_range_spec n edges)
    (requires_4 : reclaim_plan.closed_spec edges retained)
    (requires_5 : (0 ≤ src) ∧ (src < n))
    (requires_6 : Vermilion.Seq.index retained src)
    (requires_7 : reclaim_plan.reachable_fuel edges src dst fuel)
    (branch_0 : (¬ (src = dst)))
    (assert_0 : Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))))
    (assert_anonymous_0 : ((0 ≤ Vermilion.natClip (fuel - 1)) ∧ (Vermilion.natClip (fuel - 1) < fuel)) ∨ ((Vermilion.natClip (fuel - 1) = fuel) ∧ False)) :
    (0 ≤ Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))) ∧ (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) < n) := by
  have hf0 : fuel ≠ 0 := by
    intro h; subst h
    rcases (rf_eq edges src dst 0 (le_refl _)).mp requires_7 with h | ⟨h, _⟩
    · exact branch_0 h
    · exact h rfl
  have hc : Vermilion.natClip (fuel - 1) = fuel - 1 := Vermilion.natClip_of_nonneg (by omega)
  obtain ⟨mid0, hm1, hm2⟩ : ∃ mid, reclaim_plan.has_edge_spec edges src mid ∧
      reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)) := by
    rcases (rf_eq edges src dst fuel requires_1).mp requires_7 with h | ⟨_, mid, h1, h2⟩
    · exact absurd h branch_0
    · exact ⟨mid, h1, by rw [hc]; exact h2⟩
  obtain ⟨hMe, hMr⟩ := choose_spec_0 ⟨mid0, hm1, hm2⟩
  obtain ⟨⟨⟨hi0, hi1⟩, hs⟩, hm⟩ := choose_spec_1 hMe
  have r := requires_3 _ ⟨hi0, hi1⟩
  have b := (requires_0 _ ⟨hi0, hi1⟩).2
  unfold Vermilion.inUnsignedRange at b
  rw [hm] at r b
  exact ⟨b.1, r.2⟩
-- vrml:end reclaim_plan.closed_set_contains_reachable.call_requires_1_3

-- vrml:begin reclaim_plan.closed_set_contains_reachable.call_requires_1_4 0a7c781046633400
/--
Generated VC `reclaim_plan.closed_set_contains_reachable.call_requires_1_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:151:9-151:87`
- Rust/SST construct: call closed_set_contains_reachable
- AssertId: `1_4`
- Statement hash: `0a7c781046633400`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩
-/
def call_requires_1_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 151
  startColumn := 9
  endLine := 151
  endColumn := 87
  assertId := "1_4"
  functionName := "reclaim_plan.closed_set_contains_reachable"
  kind := "call_requires"
  statementHash := "0a7c781046633400"
}
@[vrml_obligation] theorem call_requires_1_4
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (retained : (Vermilion.Seq Prop))
    (src : Int)
    (dst : Int)
    (fuel : Int)
    (choose_spec_0 : (∃ (mid : Int), (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) → (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))
    (choose_spec_1 : (∃ (i : Int), ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) → (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : 0 ≤ fuel)
    (requires_2 : Vermilion.Seq.len retained = n)
    (requires_3 : reclaim_plan.edges_in_range_spec n edges)
    (requires_4 : reclaim_plan.closed_spec edges retained)
    (requires_5 : (0 ≤ src) ∧ (src < n))
    (requires_6 : Vermilion.Seq.index retained src)
    (requires_7 : reclaim_plan.reachable_fuel edges src dst fuel)
    (branch_0 : (¬ (src = dst)))
    (assert_0 : Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))))
    (assert_anonymous_0 : ((0 ≤ Vermilion.natClip (fuel - 1)) ∧ (Vermilion.natClip (fuel - 1) < fuel)) ∨ ((Vermilion.natClip (fuel - 1) = fuel) ∧ False)) :
    Vermilion.Seq.index retained (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))) := by
  have hf0 : fuel ≠ 0 := by
    intro h; subst h
    rcases (rf_eq edges src dst 0 (le_refl _)).mp requires_7 with h | ⟨h, _⟩
    · exact branch_0 h
    · exact h rfl
  have hc : Vermilion.natClip (fuel - 1) = fuel - 1 := Vermilion.natClip_of_nonneg (by omega)
  obtain ⟨mid0, hm1, hm2⟩ : ∃ mid, reclaim_plan.has_edge_spec edges src mid ∧
      reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)) := by
    rcases (rf_eq edges src dst fuel requires_1).mp requires_7 with h | ⟨_, mid, h1, h2⟩
    · exact absurd h branch_0
    · exact ⟨mid, h1, by rw [hc]; exact h2⟩
  obtain ⟨hMe, hMr⟩ := choose_spec_0 ⟨mid0, hm1, hm2⟩
  obtain ⟨⟨⟨hi0, hi1⟩, hs⟩, hm⟩ := choose_spec_1 hMe
  have c := requires_4 _ ⟨hi0, hi1⟩
  rw [hs, hm] at c
  exact c requires_6
-- vrml:end reclaim_plan.closed_set_contains_reachable.call_requires_1_4

-- vrml:begin reclaim_plan.closed_set_contains_reachable.call_requires_1_5 7e74b81a6a24539c
/--
Generated VC `reclaim_plan.closed_set_contains_reachable.call_requires_1_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:151:9-151:87`
- Rust/SST construct: call closed_set_contains_reachable
- AssertId: `1_5`
- Statement hash: `7e74b81a6a24539c`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩
-/
def call_requires_1_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 151
  startColumn := 9
  endLine := 151
  endColumn := 87
  assertId := "1_5"
  functionName := "reclaim_plan.closed_set_contains_reachable"
  kind := "call_requires"
  statementHash := "7e74b81a6a24539c"
}
@[vrml_obligation] theorem call_requires_1_5
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (retained : (Vermilion.Seq Prop))
    (src : Int)
    (dst : Int)
    (fuel : Int)
    (choose_spec_0 : (∃ (mid : Int), (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) → (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))
    (choose_spec_1 : (∃ (i : Int), ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) → (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : 0 ≤ fuel)
    (requires_2 : Vermilion.Seq.len retained = n)
    (requires_3 : reclaim_plan.edges_in_range_spec n edges)
    (requires_4 : reclaim_plan.closed_spec edges retained)
    (requires_5 : (0 ≤ src) ∧ (src < n))
    (requires_6 : Vermilion.Seq.index retained src)
    (requires_7 : reclaim_plan.reachable_fuel edges src dst fuel)
    (branch_0 : (¬ (src = dst)))
    (assert_0 : Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))))
    (assert_anonymous_0 : ((0 ≤ Vermilion.natClip (fuel - 1)) ∧ (Vermilion.natClip (fuel - 1) < fuel)) ∨ ((Vermilion.natClip (fuel - 1) = fuel) ∧ False)) :
    reclaim_plan.reachable_fuel edges (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))) dst (Vermilion.natClip (fuel - 1)) := by
  have hf0 : fuel ≠ 0 := by
    intro h; subst h
    rcases (rf_eq edges src dst 0 (le_refl _)).mp requires_7 with h | ⟨h, _⟩
    · exact branch_0 h
    · exact h rfl
  have hc : Vermilion.natClip (fuel - 1) = fuel - 1 := Vermilion.natClip_of_nonneg (by omega)
  obtain ⟨mid0, hm1, hm2⟩ : ∃ mid, reclaim_plan.has_edge_spec edges src mid ∧
      reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)) := by
    rcases (rf_eq edges src dst fuel requires_1).mp requires_7 with h | ⟨_, mid, h1, h2⟩
    · exact absurd h branch_0
    · exact ⟨mid, h1, by rw [hc]; exact h2⟩
  exact (choose_spec_0 ⟨mid0, hm1, hm2⟩).2
-- vrml:end reclaim_plan.closed_set_contains_reachable.call_requires_1_5

-- vrml:begin reclaim_plan.closed_set_contains_reachable.ensures_2 5920df4276af65e7
/--
Generated VC `reclaim_plan.closed_set_contains_reachable.ensures_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:142:13-142:26`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2`
- Statement hash: `5920df4276af65e7`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩
-/
def ensures_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 142
  startColumn := 13
  endLine := 142
  endColumn := 26
  assertId := "2"
  functionName := "reclaim_plan.closed_set_contains_reachable"
  kind := "ensures"
  statementHash := "5920df4276af65e7"
}
@[vrml_obligation] theorem ensures_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (retained : (Vermilion.Seq Prop))
    (src : Int)
    (dst : Int)
    (fuel : Int)
    (choose_spec_0 : (∃ (i : Int), ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) → (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))
    (choose_spec_1 : (∃ (mid : Int), (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) → (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : 0 ≤ fuel)
    (requires_2 : Vermilion.Seq.len retained = n)
    (requires_3 : reclaim_plan.edges_in_range_spec n edges)
    (requires_4 : reclaim_plan.closed_spec edges retained)
    (requires_5 : (0 ≤ src) ∧ (src < n))
    (requires_6 : Vermilion.Seq.index retained src)
    (requires_7 : reclaim_plan.reachable_fuel edges src dst fuel)
    (then_0_assert_0 : (¬ (src = dst)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))))))))
    (then_0_assert_anonymous_0 : (¬ (src = dst)) → (((0 ≤ Vermilion.natClip (fuel - 1)) ∧ (Vermilion.natClip (fuel - 1) < fuel)) ∨ ((Vermilion.natClip (fuel - 1) = fuel) ∧ False)))
    (then_0_call_closed_set_contains_reachable_ensures_0 : (¬ (src = dst)) → Vermilion.Seq.index retained dst) :
    Vermilion.Seq.index retained dst := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.closed_set_contains_reachable.ensures_2

end reclaim_plan.closed_set_contains_reachable

