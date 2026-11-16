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

namespace reclaim_plan.reachable_edges_mono

-- vrml:begin reclaim_plan.reachable_edges_mono.assert_0 6c7f734bcc477d86
/--
Generated VC `reclaim_plan.reachable_edges_mono.assert_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:619:16-619:75`
- Rust/SST construct: Rust source assertion
- AssertId: `0`
- Statement hash: `6c7f734bcc477d86`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges2 vrml_i0⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 619
  startColumn := 16
  endLine := 619
  endColumn := 75
  assertId := "0"
  functionName := "reclaim_plan.reachable_edges_mono"
  kind := "assert"
  statementHash := "6c7f734bcc477d86"
}
@[vrml_obligation] theorem assert_0
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges2 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (src : Int)
    (dst : Int)
    (fuel : Int)
    (choose_spec_0 : (∃ (i : Int), ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) → (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))
    (choose_spec_1 : (∃ (mid : Int), (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) → (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges2)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges2 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges2 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges2 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges2 vrml_i0) < Vermilion.usizeMod))))))
    (requires_2 : 0 ≤ fuel)
    (requires_3 : reclaim_plan.edges_subset_spec edges edges2)
    (requires_4 : reclaim_plan.reachable_fuel edges src dst fuel)
    (branch_0 : (¬ (src = dst))) :
    reclaim_plan.has_edge_spec edges2 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))) (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))) := by
  have hf0 : fuel ≠ 0 := by
    intro h; subst h
    rcases (rf_eq edges src dst 0 (le_refl _)).mp requires_4 with h | ⟨h, _⟩
    · exact branch_0 h
    · exact h rfl
  have hc : Vermilion.natClip (fuel - 1) = fuel - 1 := Vermilion.natClip_of_nonneg (by omega)
  obtain ⟨mid0, hm1, hm2⟩ : ∃ mid, reclaim_plan.has_edge_spec edges src mid ∧
      reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)) := by
    rcases (rf_eq edges src dst fuel requires_2).mp requires_4 with h | ⟨_, mid, h1, h2⟩
    · exact absurd h branch_0
    · exact ⟨mid, h1, by rw [hc]; exact h2⟩
  obtain ⟨hMe, hMr⟩ := choose_spec_1 ⟨mid0, hm1, hm2⟩
  exact requires_3 _ (choose_spec_0 hMe).1.1
-- vrml:end reclaim_plan.reachable_edges_mono.assert_0

-- vrml:begin reclaim_plan.reachable_edges_mono.assert_anonymous_0 8799cd10b0dec9ff
/--
Generated VC `reclaim_plan.reachable_edges_mono.assert_anonymous_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:620:9-620:73`
- Rust/SST construct: could not prove termination
- AssertId: `anonymous_0`
- Statement hash: `8799cd10b0dec9ff`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges2 vrml_i0⟩ ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩
-/
def assert_anonymous_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 620
  startColumn := 9
  endLine := 620
  endColumn := 73
  assertId := "anonymous_0"
  functionName := "reclaim_plan.reachable_edges_mono"
  kind := "assert"
  statementHash := "8799cd10b0dec9ff"
}
@[vrml_obligation] theorem assert_anonymous_0
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges2 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (src : Int)
    (dst : Int)
    (fuel : Int)
    (choose_spec_0 : (∃ (i : Int), ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) → (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))
    (choose_spec_1 : (∃ (mid : Int), (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) → (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges2)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges2 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges2 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges2 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges2 vrml_i0) < Vermilion.usizeMod))))))
    (requires_2 : 0 ≤ fuel)
    (requires_3 : reclaim_plan.edges_subset_spec edges edges2)
    (requires_4 : reclaim_plan.reachable_fuel edges src dst fuel)
    (branch_0 : (¬ (src = dst)))
    (assert_0 : reclaim_plan.has_edge_spec edges2 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))) (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))))))) :
    ((0 ≤ Vermilion.natClip (fuel - 1)) ∧ (Vermilion.natClip (fuel - 1) < fuel)) ∨ ((Vermilion.natClip (fuel - 1) = fuel) ∧ False) := by
  have hf0 : fuel ≠ 0 := by
    intro h; subst h
    rcases (rf_eq edges src dst 0 (le_refl _)).mp requires_4 with h | ⟨h, _⟩
    · exact branch_0 h
    · exact h rfl
  have hc : Vermilion.natClip (fuel - 1) = fuel - 1 := Vermilion.natClip_of_nonneg (by omega)
  obtain ⟨mid0, hm1, hm2⟩ : ∃ mid, reclaim_plan.has_edge_spec edges src mid ∧
      reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)) := by
    rcases (rf_eq edges src dst fuel requires_2).mp requires_4 with h | ⟨_, mid, h1, h2⟩
    · exact absurd h branch_0
    · exact ⟨mid, h1, by rw [hc]; exact h2⟩
  left; rw [hc]; omega
-- vrml:end reclaim_plan.reachable_edges_mono.assert_anonymous_0

-- vrml:begin reclaim_plan.reachable_edges_mono.call_requires_1_0 6722fabf604c9781
/--
Generated VC `reclaim_plan.reachable_edges_mono.call_requires_1_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:620:9-620:73`
- Rust/SST construct: call reachable_edges_mono
- AssertId: `1_0`
- Statement hash: `6722fabf604c9781`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges2 vrml_i0⟩ ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩
-/
def call_requires_1_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 620
  startColumn := 9
  endLine := 620
  endColumn := 73
  assertId := "1_0"
  functionName := "reclaim_plan.reachable_edges_mono"
  kind := "call_requires"
  statementHash := "6722fabf604c9781"
}
@[vrml_obligation] theorem call_requires_1_0
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges2 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (src : Int)
    (dst : Int)
    (fuel : Int)
    (choose_spec_0 : (∃ (i : Int), ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) → (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))
    (choose_spec_1 : (∃ (mid : Int), (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) → (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges2)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges2 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges2 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges2 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges2 vrml_i0) < Vermilion.usizeMod))))))
    (requires_2 : 0 ≤ fuel)
    (requires_3 : reclaim_plan.edges_subset_spec edges edges2)
    (requires_4 : reclaim_plan.reachable_fuel edges src dst fuel)
    (branch_0 : (¬ (src = dst)))
    (assert_0 : reclaim_plan.has_edge_spec edges2 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))) (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))))
    (assert_anonymous_0 : ((0 ≤ Vermilion.natClip (fuel - 1)) ∧ (Vermilion.natClip (fuel - 1) < fuel)) ∨ ((Vermilion.natClip (fuel - 1) = fuel) ∧ False)) :
    reclaim_plan.edges_subset_spec edges edges2 := by
  vrml_first
    | ((iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | (vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 1 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
    | ((iterate 2 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))); vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec])
-- vrml:end reclaim_plan.reachable_edges_mono.call_requires_1_0

-- vrml:begin reclaim_plan.reachable_edges_mono.call_requires_1_1 fe6a0bd6fc4e9e87
/--
Generated VC `reclaim_plan.reachable_edges_mono.call_requires_1_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:620:9-620:73`
- Rust/SST construct: call reachable_edges_mono
- AssertId: `1_1`
- Statement hash: `fe6a0bd6fc4e9e87`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges2 vrml_i0⟩ ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩
-/
def call_requires_1_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 620
  startColumn := 9
  endLine := 620
  endColumn := 73
  assertId := "1_1"
  functionName := "reclaim_plan.reachable_edges_mono"
  kind := "call_requires"
  statementHash := "fe6a0bd6fc4e9e87"
}
@[vrml_obligation] theorem call_requires_1_1
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges2 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (src : Int)
    (dst : Int)
    (fuel : Int)
    (choose_spec_0 : (∃ (mid : Int), (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) → (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))
    (choose_spec_1 : (∃ (i : Int), ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) → (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges2)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges2 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges2 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges2 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges2 vrml_i0) < Vermilion.usizeMod))))))
    (requires_2 : 0 ≤ fuel)
    (requires_3 : reclaim_plan.edges_subset_spec edges edges2)
    (requires_4 : reclaim_plan.reachable_fuel edges src dst fuel)
    (branch_0 : (¬ (src = dst)))
    (assert_0 : reclaim_plan.has_edge_spec edges2 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))) (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))))
    (assert_anonymous_0 : ((0 ≤ Vermilion.natClip (fuel - 1)) ∧ (Vermilion.natClip (fuel - 1) < fuel)) ∨ ((Vermilion.natClip (fuel - 1) = fuel) ∧ False)) :
    reclaim_plan.reachable_fuel edges (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))) dst (Vermilion.natClip (fuel - 1)) := by
  have hf0 : fuel ≠ 0 := by
    intro h; subst h
    rcases (rf_eq edges src dst 0 (le_refl _)).mp requires_4 with h | ⟨h, _⟩
    · exact branch_0 h
    · exact h rfl
  have hc : Vermilion.natClip (fuel - 1) = fuel - 1 := Vermilion.natClip_of_nonneg (by omega)
  obtain ⟨mid0, hm1, hm2⟩ : ∃ mid, reclaim_plan.has_edge_spec edges src mid ∧
      reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)) := by
    rcases (rf_eq edges src dst fuel requires_2).mp requires_4 with h | ⟨_, mid, h1, h2⟩
    · exact absurd h branch_0
    · exact ⟨mid, h1, by rw [hc]; exact h2⟩
  first
    | exact (choose_spec_0 ⟨mid0, hm1, hm2⟩).2
    | exact (choose_spec_1 ⟨mid0, hm1, hm2⟩).2
-- vrml:end reclaim_plan.reachable_edges_mono.call_requires_1_1

-- vrml:begin reclaim_plan.reachable_edges_mono.assert_2 a3242631a0166ff4
/--
Generated VC `reclaim_plan.reachable_edges_mono.assert_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:621:16-621:102`
- Rust/SST construct: Rust source assertion
- AssertId: `2`
- Statement hash: `a3242631a0166ff4`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges2 vrml_i0⟩ ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 621
  startColumn := 16
  endLine := 621
  endColumn := 102
  assertId := "2"
  functionName := "reclaim_plan.reachable_edges_mono"
  kind := "assert"
  statementHash := "a3242631a0166ff4"
}
@[vrml_obligation] theorem assert_2
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges2 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (src : Int)
    (dst : Int)
    (fuel : Int)
    (choose_spec_0 : (∃ (mid : Int), (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) → (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))
    (choose_spec_1 : (∃ (i : Int), ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) → (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges2)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges2 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges2 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges2 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges2 vrml_i0) < Vermilion.usizeMod))))))
    (requires_2 : 0 ≤ fuel)
    (requires_3 : reclaim_plan.edges_subset_spec edges edges2)
    (requires_4 : reclaim_plan.reachable_fuel edges src dst fuel)
    (branch_0 : (¬ (src = dst)))
    (assert_0 : reclaim_plan.has_edge_spec edges2 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))) (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))))
    (assert_anonymous_0 : ((0 ≤ Vermilion.natClip (fuel - 1)) ∧ (Vermilion.natClip (fuel - 1) < fuel)) ∨ ((Vermilion.natClip (fuel - 1) = fuel) ∧ False))
    (call_reachable_edges_mono_ensures_0 : reclaim_plan.reachable_fuel edges2 (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))) dst (Vermilion.natClip (fuel - 1))) :
    reclaim_plan.has_edge_spec edges2 src (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))) ∧ reclaim_plan.reachable_fuel edges2 (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))) dst (Vermilion.natClip (fuel - 1)) := by
  have hf0 : fuel ≠ 0 := by
    intro h; subst h
    rcases (rf_eq edges src dst 0 (le_refl _)).mp requires_4 with h | ⟨h, _⟩
    · exact branch_0 h
    · exact h rfl
  have hc : Vermilion.natClip (fuel - 1) = fuel - 1 := Vermilion.natClip_of_nonneg (by omega)
  obtain ⟨mid0, hm1, hm2⟩ : ∃ mid, reclaim_plan.has_edge_spec edges src mid ∧
      reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)) := by
    rcases (rf_eq edges src dst fuel requires_2).mp requires_4 with h | ⟨_, mid, h1, h2⟩
    · exact absurd h branch_0
    · exact ⟨mid, h1, by rw [hc]; exact h2⟩
  first
    | (obtain ⟨hMe, hMr⟩ := choose_spec_1 ⟨mid0, hm1, hm2⟩
       obtain ⟨⟨_, hs⟩, hm⟩ := choose_spec_0 hMe
       rw [hs, hm] at assert_0
       exact ⟨assert_0, call_reachable_edges_mono_ensures_0⟩)
    | (obtain ⟨hMe, hMr⟩ := choose_spec_0 ⟨mid0, hm1, hm2⟩
       obtain ⟨⟨_, hs⟩, hm⟩ := choose_spec_1 hMe
       rw [hs, hm] at assert_0
       exact ⟨assert_0, call_reachable_edges_mono_ensures_0⟩)
-- vrml:end reclaim_plan.reachable_edges_mono.assert_2

-- vrml:begin reclaim_plan.reachable_edges_mono.ensures_3 9cdad71a1994e6f0
/--
Generated VC `reclaim_plan.reachable_edges_mono.ensures_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:611:13-611:51`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3`
- Statement hash: `9cdad71a1994e6f0`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index edges2 vrml_i0⟩ ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨Vermilion.Seq.index edges i⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩ ⟨reclaim_plan.has_edge_spec edges src mid⟩
-/
def ensures_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 611
  startColumn := 13
  endLine := 611
  endColumn := 51
  assertId := "3"
  functionName := "reclaim_plan.reachable_edges_mono"
  kind := "ensures"
  statementHash := "9cdad71a1994e6f0"
}
@[vrml_obligation] theorem ensures_3
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (edges2 : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (src : Int)
    (dst : Int)
    (fuel : Int)
    (choose_spec_0 : (∃ (i : Int), ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) → (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))) (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))
    (choose_spec_1 : (∃ (mid : Int), (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) → (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))) (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0) < Vermilion.usizeMod))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges2)) → (((0 ≤ vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges2 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges2 vrml_i0) < Vermilion.usizeMod)) ∧ ((0 ≤ vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges2 vrml_i0)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges2 vrml_i0) < Vermilion.usizeMod))))))
    (requires_2 : 0 ≤ fuel)
    (requires_3 : reclaim_plan.edges_subset_spec edges edges2)
    (requires_4 : reclaim_plan.reachable_fuel edges src dst fuel)
    (then_0_assert_0 : (¬ (src = dst)) → reclaim_plan.has_edge_spec edges2 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))) (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges (Vermilion.chooseSpec (fun (i : Int) => ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = src)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1)))))))))))
    (then_0_assert_anonymous_0 : (¬ (src = dst)) → (((0 ≤ Vermilion.natClip (fuel - 1)) ∧ (Vermilion.natClip (fuel - 1) < fuel)) ∨ ((Vermilion.natClip (fuel - 1) = fuel) ∧ False)))
    (then_0_call_reachable_edges_mono_ensures_0 : (¬ (src = dst)) → reclaim_plan.reachable_fuel edges2 (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))) dst (Vermilion.natClip (fuel - 1)))
    (then_0_assert_2 : (¬ (src = dst)) → (reclaim_plan.has_edge_spec edges2 src (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))) ∧ reclaim_plan.reachable_fuel edges2 (Vermilion.chooseSpec (fun (mid : Int) => (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))) dst (Vermilion.natClip (fuel - 1)))) :
    reclaim_plan.reachable_fuel edges2 src dst fuel := by
  by_cases h : src = dst
  · rw [h]; exact rf_refl edges2 dst fuel requires_2
  · obtain ⟨he, hr⟩ := then_0_assert_2 h
    have hf0 : fuel ≠ 0 := by
      intro h0; subst h0
      rcases (rf_eq edges src dst 0 (le_refl _)).mp requires_4 with h' | ⟨h', _⟩
      · exact h h'
      · exact h' rfl
    refine (rf_eq edges2 src dst fuel requires_2).mpr (Or.inr ⟨hf0, _, he, ?_⟩)
    convert hr using 1
    exact (Vermilion.natClip_of_nonneg (by omega)).symm
-- vrml:end reclaim_plan.reachable_edges_mono.ensures_3

end reclaim_plan.reachable_edges_mono

