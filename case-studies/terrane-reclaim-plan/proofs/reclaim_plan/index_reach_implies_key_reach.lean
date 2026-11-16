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

theorem kr_eq (keys : Vermilion.Seq (Vermilion.Seq Int)) (refs : Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int)))
    (a b : Vermilion.Seq Int) (f : Int) (hf : 0 ≤ f) :
    reclaim_plan.key_reach_fuel keys refs a b f ↔
      (a = b ∨ (f ≠ 0 ∧ ∃ i j, (((((0 ≤ i) ∧ (i < Vermilion.Seq.len keys)) ∧ (i < Vermilion.Seq.len refs)) ∧
        (Vermilion.Seq.index keys i = a)) ∧ ((0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index refs i)))) ∧
        reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index (Vermilion.Seq.index refs i) j) b (f - 1))) := by
  conv_lhs => unfold reclaim_plan.key_reach_fuel
  rw [dif_pos hf]
  by_cases hab : a = b
  · simp [hab]
  · by_cases hf0 : f = 0
    · simp [hab, hf0]
    · have hc : Vermilion.natClip (f - 1) = f - 1 := Vermilion.natClip_of_nonneg (by omega)
      rw [hc]
      constructor
      · intro h
        exact Or.inr ⟨hf0, (h.2 hab).2 hf0⟩
      · rintro (h | ⟨_, h⟩)
        · exact absurd h hab
        · exact ⟨fun _ => trivial, fun _ => ⟨fun h0 => hf0 h0, fun _ => h⟩⟩

theorem irkr (keys : Vermilion.Seq (Vermilion.Seq Int)) (refs : Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : Vermilion.Seq (vermilion.tuple_2 Int Int))
    (h2 : ∀ (k : Int), ((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) →
      (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k)) ∧
        Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k))))
    (h4 : reclaim_plan.edges_match_refs_spec keys refs edges) :
    ∀ (n : Nat) (s t : Int), 0 ≤ s → s < Vermilion.Seq.len keys → t < Vermilion.Seq.len keys →
      reclaim_plan.reachable_fuel edges s t n →
      reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index keys s) (Vermilion.Seq.index keys t) n := by
  intro n
  induction n with
  | zero =>
    intro s t _ _ _ h
    rcases (rf_eq edges s t 0 (le_refl _)).mp h with h | ⟨h, _⟩
    · rw [h]; exact (kr_eq keys refs _ _ 0 (le_refl _)).mpr (Or.inl rfl)
    · exact absurd rfl h
  | succ m ih =>
    intro s t hs0 hs1 ht1 h
    have hf : (0 : Int) ≤ ((m + 1 : Nat) : Int) := by omega
    by_cases hk : Vermilion.Seq.index keys s = Vermilion.Seq.index keys t
    · exact (kr_eq keys refs _ _ _ hf).mpr (Or.inl hk)
    · rcases (rf_eq edges s t _ hf).mp h with h | ⟨_, mid, ⟨k, ⟨⟨hk0, hk1⟩, he0⟩, he1⟩, hr⟩
      · exact absurd (by rw [h]) hk
      · obtain ⟨⟨⟨hb0, hb1⟩, hb2⟩, q, ⟨hq0, hq1⟩, hq⟩ := h4.1.2 k ⟨hk0, hk1⟩
        have hr2 := (h2 k ⟨hk0, hk1⟩).2
        unfold Vermilion.inUnsignedRange at hr2
        rw [he0] at hb2 hq hq1
        rw [he1] at hq hr2 hb1
        have ih' := ih mid t hr2.1 hb1 ht1 (by
          have : ((m + 1 : Nat) : Int) - 1 = (m : Int) := by omega
          rw [this] at hr; exact hr)
        refine (kr_eq keys refs _ _ _ hf).mpr (Or.inr ⟨by omega, s, q, ⟨⟨⟨⟨hs0, hs1⟩, hb2⟩, rfl⟩, ⟨hq0, hq1⟩⟩, ?_⟩)
        rw [hq]
        have : ((m + 1 : Nat) : Int) - 1 = (m : Int) := by omega
        rw [this]; exact ih'

theorem step3 (keys : Vermilion.Seq (Vermilion.Seq Int)) (refs : Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : Vermilion.Seq (vermilion.tuple_2 Int Int)) (s t K J M f : Int)
    (e0 : vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges K) = s)
    (e1 : vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges K) = M)
    (hJ : Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges K))) J =
      Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges K)))
    (hrec : reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index keys M) (Vermilion.Seq.index keys t) f) :
    Vermilion.Seq.index (Vermilion.Seq.index refs s) J = Vermilion.Seq.index keys M ∧
      reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index (Vermilion.Seq.index refs s) J) (Vermilion.Seq.index keys t) f := by
  rw [e0, e1] at hJ
  rw [hJ]
  exact ⟨rfl, hrec⟩
-- vrml:user:end

namespace reclaim_plan.index_reach_implies_key_reach

-- vrml:begin reclaim_plan.index_reach_implies_key_reach.assert_0 1c22405c5a28c5b0
/--
Generated VC `reclaim_plan.index_reach_implies_key_reach.assert_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:916:16-916:57`
- Rust/SST construct: Rust source assertion
- AssertId: `0`
- Statement hash: `1c22405c5a28c5b0`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 916
  startColumn := 16
  endLine := 916
  endColumn := 57
  assertId := "0"
  functionName := "reclaim_plan.index_reach_implies_key_reach"
  kind := "assert"
  statementHash := "1c22405c5a28c5b0"
}
@[vrml_obligation] theorem assert_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (s : Int)
    (t : Int)
    (fuel : Int)
    (choose_spec_0 : (∃ (k : Int), ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))) → (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))) (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))))))))
    (choose_spec_1 : (∃ (mid : Int), (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))) → (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))) (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : 0 ≤ fuel)
    (requires_4 : reclaim_plan.edges_match_refs_spec keys refs edges)
    (requires_5 : (0 ≤ s) ∧ (s < Vermilion.Seq.len keys))
    (requires_6 : (0 ≤ t) ∧ (t < Vermilion.Seq.len keys))
    (requires_7 : reclaim_plan.reachable_fuel edges s t fuel)
    (branch_0 : (¬ (s = t)) ∧ (¬ (Vermilion.Seq.index keys s = Vermilion.Seq.index keys t))) :
    reclaim_plan.edge_names_ref_spec keys refs (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))) := by
  have hf0 : fuel ≠ 0 := by
    intro h; subst h
    rcases (rf_eq edges s t 0 (le_refl _)).mp requires_7 with h | ⟨h, _⟩
    · exact branch_0.1 h
    · exact h rfl
  have hc : Vermilion.natClip (fuel - 1) = fuel - 1 := Vermilion.natClip_of_nonneg (by omega)
  obtain ⟨mid0, hm1, hm2⟩ : ∃ mid, reclaim_plan.has_edge_spec edges s mid ∧
      reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)) := by
    rcases (rf_eq edges s t fuel requires_3).mp requires_7 with h | ⟨_, mid, h1, h2⟩
    · exact absurd h branch_0.1
    · exact ⟨mid, h1, by rw [hc]; exact h2⟩
  have hM := choose_spec_1 ⟨mid0, hm1, hm2⟩
  have hK := choose_spec_0 hM.1
  exact requires_4.1.2 _ hK.1.1
-- vrml:end reclaim_plan.index_reach_implies_key_reach.assert_0

-- vrml:begin reclaim_plan.index_reach_implies_key_reach.assert_anonymous_0 35bdcf5c9f2b69db
/--
Generated VC `reclaim_plan.index_reach_implies_key_reach.assert_anonymous_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:919:9-919:84`
- Rust/SST construct: could not prove termination
- AssertId: `anonymous_0`
- Statement hash: `35bdcf5c9f2b69db`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩
-/
def assert_anonymous_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 919
  startColumn := 9
  endLine := 919
  endColumn := 84
  assertId := "anonymous_0"
  functionName := "reclaim_plan.index_reach_implies_key_reach"
  kind := "assert"
  statementHash := "35bdcf5c9f2b69db"
}
@[vrml_obligation] theorem assert_anonymous_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (s : Int)
    (t : Int)
    (fuel : Int)
    (choose_spec_0 : (∃ (k : Int), ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))) → (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))) (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))))))))
    (choose_spec_1 : (∃ (mid : Int), (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))) → (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))) (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : 0 ≤ fuel)
    (requires_4 : reclaim_plan.edges_match_refs_spec keys refs edges)
    (requires_5 : (0 ≤ s) ∧ (s < Vermilion.Seq.len keys))
    (requires_6 : (0 ≤ t) ∧ (t < Vermilion.Seq.len keys))
    (requires_7 : reclaim_plan.reachable_fuel edges s t fuel)
    (branch_0 : (¬ (s = t)) ∧ (¬ (Vermilion.Seq.index keys s = Vermilion.Seq.index keys t)))
    (assert_0 : reclaim_plan.edge_names_ref_spec keys refs (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))))))))) :
    ((0 ≤ Vermilion.natClip (fuel - 1)) ∧ (Vermilion.natClip (fuel - 1) < fuel)) ∨ ((Vermilion.natClip (fuel - 1) = fuel) ∧ False) := by
  have hf0 : fuel ≠ 0 := by
    intro h; subst h
    rcases (rf_eq edges s t 0 (le_refl _)).mp requires_7 with h | ⟨h, _⟩
    · exact branch_0.1 h
    · exact h rfl
  have hc : Vermilion.natClip (fuel - 1) = fuel - 1 := Vermilion.natClip_of_nonneg (by omega)
  obtain ⟨mid0, hm1, hm2⟩ : ∃ mid, reclaim_plan.has_edge_spec edges s mid ∧
      reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)) := by
    rcases (rf_eq edges s t fuel requires_3).mp requires_7 with h | ⟨_, mid, h1, h2⟩
    · exact absurd h branch_0.1
    · exact ⟨mid, h1, by rw [hc]; exact h2⟩
  have hM := choose_spec_1 ⟨mid0, hm1, hm2⟩
  have hK := choose_spec_0 hM.1
  left; rw [hc]; omega
-- vrml:end reclaim_plan.index_reach_implies_key_reach.assert_anonymous_0

-- vrml:begin reclaim_plan.index_reach_implies_key_reach.call_requires_1_0 93dd37b6e9d84173
/--
Generated VC `reclaim_plan.index_reach_implies_key_reach.call_requires_1_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:919:9-919:84`
- Rust/SST construct: call index_reach_implies_key_reach
- AssertId: `1_0`
- Statement hash: `93dd37b6e9d84173`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩
-/
def call_requires_1_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 919
  startColumn := 9
  endLine := 919
  endColumn := 84
  assertId := "1_0"
  functionName := "reclaim_plan.index_reach_implies_key_reach"
  kind := "call_requires"
  statementHash := "93dd37b6e9d84173"
}
@[vrml_obligation] theorem call_requires_1_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (s : Int)
    (t : Int)
    (fuel : Int)
    (choose_spec_0 : (∃ (k : Int), ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))) → (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))) (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))))))))
    (choose_spec_1 : (∃ (mid : Int), (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))) → (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))) (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : 0 ≤ fuel)
    (requires_4 : reclaim_plan.edges_match_refs_spec keys refs edges)
    (requires_5 : (0 ≤ s) ∧ (s < Vermilion.Seq.len keys))
    (requires_6 : (0 ≤ t) ∧ (t < Vermilion.Seq.len keys))
    (requires_7 : reclaim_plan.reachable_fuel edges s t fuel)
    (branch_0 : (¬ (s = t)) ∧ (¬ (Vermilion.Seq.index keys s = Vermilion.Seq.index keys t)))
    (assert_0 : reclaim_plan.edge_names_ref_spec keys refs (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))
    (assert_anonymous_0 : ((0 ≤ Vermilion.natClip (fuel - 1)) ∧ (Vermilion.natClip (fuel - 1) < fuel)) ∨ ((Vermilion.natClip (fuel - 1) = fuel) ∧ False)) :
    reclaim_plan.edges_match_refs_spec keys refs edges := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.index_reach_implies_key_reach.call_requires_1_0

-- vrml:begin reclaim_plan.index_reach_implies_key_reach.call_requires_1_1 e84dd07067aa6af4
/--
Generated VC `reclaim_plan.index_reach_implies_key_reach.call_requires_1_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:919:9-919:84`
- Rust/SST construct: call index_reach_implies_key_reach
- AssertId: `1_1`
- Statement hash: `e84dd07067aa6af4`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩
-/
def call_requires_1_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 919
  startColumn := 9
  endLine := 919
  endColumn := 84
  assertId := "1_1"
  functionName := "reclaim_plan.index_reach_implies_key_reach"
  kind := "call_requires"
  statementHash := "e84dd07067aa6af4"
}
@[vrml_obligation] theorem call_requires_1_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (s : Int)
    (t : Int)
    (fuel : Int)
    (choose_spec_0 : (∃ (mid : Int), (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))) → (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))) (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))
    (choose_spec_1 : (∃ (k : Int), ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))) → (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))) (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : 0 ≤ fuel)
    (requires_4 : reclaim_plan.edges_match_refs_spec keys refs edges)
    (requires_5 : (0 ≤ s) ∧ (s < Vermilion.Seq.len keys))
    (requires_6 : (0 ≤ t) ∧ (t < Vermilion.Seq.len keys))
    (requires_7 : reclaim_plan.reachable_fuel edges s t fuel)
    (branch_0 : (¬ (s = t)) ∧ (¬ (Vermilion.Seq.index keys s = Vermilion.Seq.index keys t)))
    (assert_0 : reclaim_plan.edge_names_ref_spec keys refs (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))
    (assert_anonymous_0 : ((0 ≤ Vermilion.natClip (fuel - 1)) ∧ (Vermilion.natClip (fuel - 1) < fuel)) ∨ ((Vermilion.natClip (fuel - 1) = fuel) ∧ False)) :
    (0 ≤ Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))) ∧ (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))) < Vermilion.Seq.len keys) := by
  have hf0 : fuel ≠ 0 := by
    intro h; subst h
    rcases (rf_eq edges s t 0 (le_refl _)).mp requires_7 with h | ⟨h, _⟩
    · exact branch_0.1 h
    · exact h rfl
  have hc : Vermilion.natClip (fuel - 1) = fuel - 1 := Vermilion.natClip_of_nonneg (by omega)
  obtain ⟨mid0, hm1, hm2⟩ : ∃ mid, reclaim_plan.has_edge_spec edges s mid ∧
      reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)) := by
    rcases (rf_eq edges s t fuel requires_3).mp requires_7 with h | ⟨_, mid, h1, h2⟩
    · exact absurd h branch_0.1
    · exact ⟨mid, h1, by rw [hc]; exact h2⟩
  have hM := choose_spec_0 ⟨mid0, hm1, hm2⟩
  have hK := choose_spec_1 hM.1
  have hb := (requires_2 _ hK.1.1).2
  unfold Vermilion.inUnsignedRange at hb
  have hn := assert_0.1.1.2
  rw [hK.2] at hb hn
  exact ⟨hb.1, hn⟩
-- vrml:end reclaim_plan.index_reach_implies_key_reach.call_requires_1_1

-- vrml:begin reclaim_plan.index_reach_implies_key_reach.call_requires_1_2 16bf03c00858fa74
/--
Generated VC `reclaim_plan.index_reach_implies_key_reach.call_requires_1_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:919:9-919:84`
- Rust/SST construct: call index_reach_implies_key_reach
- AssertId: `1_2`
- Statement hash: `16bf03c00858fa74`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩
-/
def call_requires_1_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 919
  startColumn := 9
  endLine := 919
  endColumn := 84
  assertId := "1_2"
  functionName := "reclaim_plan.index_reach_implies_key_reach"
  kind := "call_requires"
  statementHash := "16bf03c00858fa74"
}
@[vrml_obligation] theorem call_requires_1_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (s : Int)
    (t : Int)
    (fuel : Int)
    (choose_spec_0 : (∃ (k : Int), ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))) → (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))) (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))))))))
    (choose_spec_1 : (∃ (mid : Int), (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))) → (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))) (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : 0 ≤ fuel)
    (requires_4 : reclaim_plan.edges_match_refs_spec keys refs edges)
    (requires_5 : (0 ≤ s) ∧ (s < Vermilion.Seq.len keys))
    (requires_6 : (0 ≤ t) ∧ (t < Vermilion.Seq.len keys))
    (requires_7 : reclaim_plan.reachable_fuel edges s t fuel)
    (branch_0 : (¬ (s = t)) ∧ (¬ (Vermilion.Seq.index keys s = Vermilion.Seq.index keys t)))
    (assert_0 : reclaim_plan.edge_names_ref_spec keys refs (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))
    (assert_anonymous_0 : ((0 ≤ Vermilion.natClip (fuel - 1)) ∧ (Vermilion.natClip (fuel - 1) < fuel)) ∨ ((Vermilion.natClip (fuel - 1) = fuel) ∧ False)) :
    (0 ≤ t) ∧ (t < Vermilion.Seq.len keys) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.index_reach_implies_key_reach.call_requires_1_2

-- vrml:begin reclaim_plan.index_reach_implies_key_reach.call_requires_1_3 d94b8486ae23e056
/--
Generated VC `reclaim_plan.index_reach_implies_key_reach.call_requires_1_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:919:9-919:84`
- Rust/SST construct: call index_reach_implies_key_reach
- AssertId: `1_3`
- Statement hash: `d94b8486ae23e056`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩
-/
def call_requires_1_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 919
  startColumn := 9
  endLine := 919
  endColumn := 84
  assertId := "1_3"
  functionName := "reclaim_plan.index_reach_implies_key_reach"
  kind := "call_requires"
  statementHash := "d94b8486ae23e056"
}
@[vrml_obligation] theorem call_requires_1_3
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (s : Int)
    (t : Int)
    (fuel : Int)
    (choose_spec_0 : (∃ (mid : Int), (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))) → (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))) (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))
    (choose_spec_1 : (∃ (k : Int), ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))) → (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))) (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : 0 ≤ fuel)
    (requires_4 : reclaim_plan.edges_match_refs_spec keys refs edges)
    (requires_5 : (0 ≤ s) ∧ (s < Vermilion.Seq.len keys))
    (requires_6 : (0 ≤ t) ∧ (t < Vermilion.Seq.len keys))
    (requires_7 : reclaim_plan.reachable_fuel edges s t fuel)
    (branch_0 : (¬ (s = t)) ∧ (¬ (Vermilion.Seq.index keys s = Vermilion.Seq.index keys t)))
    (assert_0 : reclaim_plan.edge_names_ref_spec keys refs (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))
    (assert_anonymous_0 : ((0 ≤ Vermilion.natClip (fuel - 1)) ∧ (Vermilion.natClip (fuel - 1) < fuel)) ∨ ((Vermilion.natClip (fuel - 1) = fuel) ∧ False)) :
    reclaim_plan.reachable_fuel edges (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))) t (Vermilion.natClip (fuel - 1)) := by
  have hf0 : fuel ≠ 0 := by
    intro h; subst h
    rcases (rf_eq edges s t 0 (le_refl _)).mp requires_7 with h | ⟨h, _⟩
    · exact branch_0.1 h
    · exact h rfl
  have hc : Vermilion.natClip (fuel - 1) = fuel - 1 := Vermilion.natClip_of_nonneg (by omega)
  obtain ⟨mid0, hm1, hm2⟩ : ∃ mid, reclaim_plan.has_edge_spec edges s mid ∧
      reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)) := by
    rcases (rf_eq edges s t fuel requires_3).mp requires_7 with h | ⟨_, mid, h1, h2⟩
    · exact absurd h branch_0.1
    · exact ⟨mid, h1, by rw [hc]; exact h2⟩
  have hM := choose_spec_0 ⟨mid0, hm1, hm2⟩
  have hK := choose_spec_1 hM.1
  exact hM.2
-- vrml:end reclaim_plan.index_reach_implies_key_reach.call_requires_1_3

-- vrml:begin reclaim_plan.index_reach_implies_key_reach.assert_2 d743c02e71e9055e
/--
Generated VC `reclaim_plan.index_reach_implies_key_reach.assert_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:921:20-921:98`
- Rust/SST construct: Rust source assertion
- AssertId: `2`
- Statement hash: `d743c02e71e9055e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) j⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) j⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 921
  startColumn := 20
  endLine := 921
  endColumn := 98
  assertId := "2"
  functionName := "reclaim_plan.index_reach_implies_key_reach"
  kind := "assert"
  statementHash := "d743c02e71e9055e"
}
@[vrml_obligation] theorem assert_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (s : Int)
    (t : Int)
    (fuel : Int)
    (choose_spec_0 : (∃ (k : Int), ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))) → (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))) (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))))))))
    (choose_spec_1 : (∃ (mid : Int), (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))) → (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))) (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))
    (choose_spec_2 : (∃ (j : Int), (((0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))))) ∧ (Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))))) → (fun (j : Int) => (((0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))))) ∧ (Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))))) (Vermilion.chooseSpec (fun (j : Int) => (((0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))))) ∧ (Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))))))))))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : 0 ≤ fuel)
    (requires_4 : reclaim_plan.edges_match_refs_spec keys refs edges)
    (requires_5 : (0 ≤ s) ∧ (s < Vermilion.Seq.len keys))
    (requires_6 : (0 ≤ t) ∧ (t < Vermilion.Seq.len keys))
    (requires_7 : reclaim_plan.reachable_fuel edges s t fuel)
    (branch_0 : (¬ (s = t)) ∧ (¬ (Vermilion.Seq.index keys s = Vermilion.Seq.index keys t)))
    (assert_0 : reclaim_plan.edge_names_ref_spec keys refs (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))
    (assert_anonymous_0 : ((0 ≤ Vermilion.natClip (fuel - 1)) ∧ (Vermilion.natClip (fuel - 1) < fuel)) ∨ ((Vermilion.natClip (fuel - 1) = fuel) ∧ False))
    (call_index_reach_implies_key_reach_ensures_0 : reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index keys (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))))) (Vermilion.Seq.index keys t) (Vermilion.natClip (fuel - 1)))
    (assume_12 : True) :
    (Vermilion.Seq.index keys s = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) ∧ (Vermilion.Seq.index (Vermilion.Seq.index refs s) (Vermilion.chooseSpec (fun (j : Int) => (((0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))))) ∧ (Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))))))))))))) = Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) (Vermilion.chooseSpec (fun (j : Int) => (((0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))))) ∧ (Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))))))) := by
  have hf0 : fuel ≠ 0 := by
    intro h; subst h
    rcases (rf_eq edges s t 0 (le_refl _)).mp requires_7 with h | ⟨h, _⟩
    · exact branch_0.1 h
    · exact h rfl
  have hc : Vermilion.natClip (fuel - 1) = fuel - 1 := Vermilion.natClip_of_nonneg (by omega)
  obtain ⟨mid0, hm1, hm2⟩ : ∃ mid, reclaim_plan.has_edge_spec edges s mid ∧
      reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)) := by
    rcases (rf_eq edges s t fuel requires_3).mp requires_7 with h | ⟨_, mid, h1, h2⟩
    · exact absurd h branch_0.1
    · exact ⟨mid, h1, by rw [hc]; exact h2⟩
  have hM := choose_spec_1 ⟨mid0, hm1, hm2⟩
  have hK := choose_spec_0 hM.1
  rw [hK.1.2]
  exact ⟨rfl, rfl⟩
-- vrml:end reclaim_plan.index_reach_implies_key_reach.assert_2

-- vrml:begin reclaim_plan.index_reach_implies_key_reach.assert_3 9b57dfbaae681456
/--
Generated VC `reclaim_plan.index_reach_implies_key_reach.assert_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:920:16-920:113`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `9b57dfbaae681456`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) j⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) j⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) j⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) j⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 920
  startColumn := 16
  endLine := 920
  endColumn := 113
  assertId := "3"
  functionName := "reclaim_plan.index_reach_implies_key_reach"
  kind := "assert"
  statementHash := "9b57dfbaae681456"
}
@[vrml_obligation] theorem assert_3
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (s : Int)
    (t : Int)
    (fuel : Int)
    (choose_spec_0 : (∃ (j : Int), (((0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))))) ∧ (Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))))) → (fun (j : Int) => (((0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))))) ∧ (Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))))) (Vermilion.chooseSpec (fun (j : Int) => (((0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))))) ∧ (Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))))))))))))))
    (choose_spec_1 : (∃ (k : Int), ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))) → (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))) (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))))))))
    (choose_spec_2 : (∃ (mid : Int), (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))) → (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))) (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : 0 ≤ fuel)
    (requires_4 : reclaim_plan.edges_match_refs_spec keys refs edges)
    (requires_5 : (0 ≤ s) ∧ (s < Vermilion.Seq.len keys))
    (requires_6 : (0 ≤ t) ∧ (t < Vermilion.Seq.len keys))
    (requires_7 : reclaim_plan.reachable_fuel edges s t fuel)
    (branch_0 : (¬ (s = t)) ∧ (¬ (Vermilion.Seq.index keys s = Vermilion.Seq.index keys t)))
    (assert_0 : reclaim_plan.edge_names_ref_spec keys refs (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))
    (assert_anonymous_0 : ((0 ≤ Vermilion.natClip (fuel - 1)) ∧ (Vermilion.natClip (fuel - 1) < fuel)) ∨ ((Vermilion.natClip (fuel - 1) = fuel) ∧ False))
    (call_index_reach_implies_key_reach_ensures_0 : reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index keys (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))))) (Vermilion.Seq.index keys t) (Vermilion.natClip (fuel - 1)))
    (assume_12 : True)
    (assert_2 : (Vermilion.Seq.index keys s = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) ∧ (Vermilion.Seq.index (Vermilion.Seq.index refs s) (Vermilion.chooseSpec (fun (j : Int) => (((0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))))) ∧ (Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))))))))))))) = Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) (Vermilion.chooseSpec (fun (j : Int) => (((0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))))) ∧ (Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))))))))))))))) :
    (Vermilion.Seq.index (Vermilion.Seq.index refs s) (Vermilion.chooseSpec (fun (j : Int) => (((0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))))) ∧ (Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))))))))))))) = Vermilion.Seq.index keys (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))))) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index (Vermilion.Seq.index refs s) (Vermilion.chooseSpec (fun (j : Int) => (((0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))))) ∧ (Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))))))) (Vermilion.Seq.index keys t) (Vermilion.natClip (fuel - 1)) := by
  have hf0 : fuel ≠ 0 := by
    intro h; subst h
    rcases (rf_eq edges s t 0 (le_refl _)).mp requires_7 with h | ⟨h, _⟩
    · exact branch_0.1 h
    · exact h rfl
  have hc : Vermilion.natClip (fuel - 1) = fuel - 1 := Vermilion.natClip_of_nonneg (by omega)
  obtain ⟨mid0, hm1, hm2⟩ : ∃ mid, reclaim_plan.has_edge_spec edges s mid ∧
      reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)) := by
    rcases (rf_eq edges s t fuel requires_3).mp requires_7 with h | ⟨_, mid, h1, h2⟩
    · exact absurd h branch_0.1
    · exact ⟨mid, h1, by rw [hc]; exact h2⟩
  have hM := choose_spec_2 ⟨mid0, hm1, hm2⟩
  have hK := choose_spec_1 hM.1
  have hJ := choose_spec_0 assert_0.2
  exact step3 keys refs edges s t _ _ _ _ hK.1.2 hK.2 hJ.2 call_index_reach_implies_key_reach_ensures_0
-- vrml:end reclaim_plan.index_reach_implies_key_reach.assert_3

-- vrml:begin reclaim_plan.index_reach_implies_key_reach.ensures_4 3c1af5a09f97615f
/--
Generated VC `reclaim_plan.index_reach_implies_key_reach.ensures_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:909:13-909:65`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `4`
- Statement hash: `3c1af5a09f97615f`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) j⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) j⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩ ⟨Vermilion.Seq.index edges k⟩ ⟨reclaim_plan.has_edge_spec edges s mid⟩
-/
def ensures_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 909
  startColumn := 13
  endLine := 909
  endColumn := 65
  assertId := "4"
  functionName := "reclaim_plan.index_reach_implies_key_reach"
  kind := "ensures"
  statementHash := "3c1af5a09f97615f"
}
@[vrml_obligation] theorem ensures_4
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (s : Int)
    (t : Int)
    (fuel : Int)
    (choose_spec_0 : (∃ (k : Int), ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))) → (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))) (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))))))))
    (choose_spec_1 : (∃ (mid : Int), (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))) → (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))) (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))
    (choose_spec_2 : (∃ (j : Int), (((0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))))) ∧ (Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))))) → (fun (j : Int) => (((0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))))) ∧ (Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))))) (Vermilion.chooseSpec (fun (j : Int) => (((0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))))) ∧ (Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))))))))))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_3 : 0 ≤ fuel)
    (requires_4 : reclaim_plan.edges_match_refs_spec keys refs edges)
    (requires_5 : (0 ≤ s) ∧ (s < Vermilion.Seq.len keys))
    (requires_6 : (0 ≤ t) ∧ (t < Vermilion.Seq.len keys))
    (requires_7 : reclaim_plan.reachable_fuel edges s t fuel)
    (then_0_assert_0 : ((¬ (s = t)) ∧ (¬ (Vermilion.Seq.index keys s = Vermilion.Seq.index keys t))) → reclaim_plan.edge_names_ref_spec keys refs (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))
    (then_0_assert_anonymous_0 : ((¬ (s = t)) ∧ (¬ (Vermilion.Seq.index keys s = Vermilion.Seq.index keys t))) → (((0 ≤ Vermilion.natClip (fuel - 1)) ∧ (Vermilion.natClip (fuel - 1) < fuel)) ∨ ((Vermilion.natClip (fuel - 1) = fuel) ∧ False)))
    (then_0_call_index_reach_implies_key_reach_ensures_0 : ((¬ (s = t)) ∧ (¬ (Vermilion.Seq.index keys s = Vermilion.Seq.index keys t))) → reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index keys (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))))) (Vermilion.Seq.index keys t) (Vermilion.natClip (fuel - 1)))
    (then_0_assume_12 : ((¬ (s = t)) ∧ (¬ (Vermilion.Seq.index keys s = Vermilion.Seq.index keys t))) → (True → ((Vermilion.Seq.index (Vermilion.Seq.index refs s) (Vermilion.chooseSpec (fun (j : Int) => (((0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))))) ∧ (Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))))))))))))) = Vermilion.Seq.index keys (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1)))))) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index (Vermilion.Seq.index refs s) (Vermilion.chooseSpec (fun (j : Int) => (((0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))))) ∧ (Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))) j = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (k : Int) => ((((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges k) = s)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges k) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges s mid ∧ reclaim_plan.reachable_fuel edges mid t (Vermilion.natClip (fuel - 1))))))))))))))) (Vermilion.Seq.index keys t) (Vermilion.natClip (fuel - 1))))) :
    reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index keys s) (Vermilion.Seq.index keys t) fuel := by
  have := irkr keys refs edges requires_2 requires_4 fuel.toNat s t requires_5.1 requires_5.2 requires_6.2
    (by rw [Int.toNat_of_nonneg requires_3]; exact requires_7)
  rw [Int.toNat_of_nonneg requires_3] at this
  exact this
-- vrml:end reclaim_plan.index_reach_implies_key_reach.ensures_4

end reclaim_plan.index_reach_implies_key_reach

