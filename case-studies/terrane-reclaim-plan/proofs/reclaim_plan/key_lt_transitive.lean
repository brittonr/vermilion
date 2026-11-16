import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

-- vrml:user:begin
theorem klt_at_trans (a b c : Vermilion.Seq Int) (p q : Int)
    (hp : reclaim_plan.key_lt_at_spec a b p) (hq : reclaim_plan.key_lt_at_spec b c q) :
    (p ≤ q → reclaim_plan.key_lt_at_spec a c p) ∧ (q < p → reclaim_plan.key_lt_at_spec a c q) := by
  unfold reclaim_plan.key_lt_at_spec reclaim_plan.prefix_eq_spec at *
  obtain ⟨⟨⟨⟨hp0, hpa⟩, hpb⟩, hpre⟩, hpc⟩ := hp
  obtain ⟨⟨⟨⟨hq0, hqb⟩, hqc⟩, hqre⟩, hqd⟩ := hq
  constructor
  · intro hpq
    have hplb : p < Vermilion.Seq.len b := by
      rcases hpc with ⟨_, h⟩ | ⟨⟨_, h⟩, _⟩ <;> exact h
    refine ⟨⟨⟨⟨hp0, hpa⟩, by omega⟩, fun k hk => ?_⟩, ?_⟩
    · rw [hpre k hk, hqre k ⟨hk.1, by omega⟩]
    · rcases lt_or_eq_of_le hpq with hlt | heq
      · have e := hqre p ⟨hp0, hlt⟩
        rcases hpc with ⟨h1, _⟩ | ⟨⟨h1, _⟩, h3⟩
        · exact Or.inl ⟨h1, by omega⟩
        · exact Or.inr ⟨⟨h1, by omega⟩, by rw [← e]; exact h3⟩
      · subst heq
        rcases hqd with ⟨h1, _⟩ | ⟨⟨_, h2⟩, h3⟩
        · omega
        · rcases hpc with ⟨h4, _⟩ | ⟨⟨h4, _⟩, h5⟩
          · exact Or.inl ⟨h4, h2⟩
          · exact Or.inr ⟨⟨h4, h2⟩, lt_trans h5 h3⟩
  · intro hqp
    have e := hpre q ⟨hq0, hqp⟩
    refine ⟨⟨⟨⟨hq0, by omega⟩, hqc⟩, fun k hk => ?_⟩, ?_⟩
    · rw [hpre k ⟨hk.1, by omega⟩, hqre k hk]
    · rcases hqd with ⟨h1, _⟩ | ⟨⟨_, h2⟩, h3⟩
      · omega
      · exact Or.inr ⟨⟨by omega, h2⟩, by rw [e]; exact h3⟩
-- vrml:user:end

namespace reclaim_plan.key_lt_transitive

-- vrml:begin reclaim_plan.key_lt_transitive.assert_0 49093674ffbf1fb2
/--
Generated VC `reclaim_plan.key_lt_transitive.assert_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:815:16-815:97`
- Rust/SST construct: Rust source assertion
- AssertId: `0`
- Statement hash: `49093674ffbf1fb2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a k, Vermilion.Seq.index c k⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩ ⟨Vermilion.Seq.index c vrml_i0⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 815
  startColumn := 16
  endLine := 815
  endColumn := 97
  assertId := "0"
  functionName := "reclaim_plan.key_lt_transitive"
  kind := "assert"
  statementHash := "49093674ffbf1fb2"
}
@[vrml_obligation] theorem assert_0
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (c : (Vermilion.Seq Int))
    (choose_spec_0 : (∃ (p : Int), reclaim_plan.key_lt_at_spec a b p) → (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)))
    (choose_spec_1 : (∃ (q : Int), reclaim_plan.key_lt_at_spec b c q) → (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q) (Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q)))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len c)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index c vrml_i0))))
    (requires_3 : reclaim_plan.key_lt_spec a b)
    (requires_4 : reclaim_plan.key_lt_spec b c)
    (branch_0 : Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) < Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q)) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p))) → ((Vermilion.Seq.index a k = Vermilion.Seq.index b k) ∧ (Vermilion.Seq.index b k = Vermilion.Seq.index c k)))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_lt_transitive.assert_0

-- vrml:begin reclaim_plan.key_lt_transitive.assert_1 338a43e2cd0593e9
/--
Generated VC `reclaim_plan.key_lt_transitive.assert_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:817:20-817:32`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `338a43e2cd0593e9`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩ ⟨Vermilion.Seq.index c vrml_i0⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨Vermilion.Seq.index a k, Vermilion.Seq.index c k⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 817
  startColumn := 20
  endLine := 817
  endColumn := 32
  assertId := "1"
  functionName := "reclaim_plan.key_lt_transitive"
  kind := "assert"
  statementHash := "338a43e2cd0593e9"
}
@[vrml_obligation] theorem assert_1
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (c : (Vermilion.Seq Int))
    (choose_spec_0 : (∃ (p : Int), reclaim_plan.key_lt_at_spec a b p) → (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)))
    (choose_spec_1 : (∃ (q : Int), reclaim_plan.key_lt_at_spec b c q) → (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q) (Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q)))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len c)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index c vrml_i0))))
    (requires_3 : reclaim_plan.key_lt_spec a b)
    (requires_4 : reclaim_plan.key_lt_spec b c)
    (branch_0 : Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) < Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q))
    (assert_0 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p))) → ((Vermilion.Seq.index a k = Vermilion.Seq.index b k) ∧ (Vermilion.Seq.index b k = Vermilion.Seq.index c k)))))
    (branch_1 : Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) < Vermilion.Seq.len a) :
    Vermilion.Seq.index b (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)) = Vermilion.Seq.index c (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_lt_transitive.assert_1

-- vrml:begin reclaim_plan.key_lt_transitive.assert_2 6a3e5b7523b869e5
/--
Generated VC `reclaim_plan.key_lt_transitive.assert_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:819:16-819:39`
- Rust/SST construct: Rust source assertion
- AssertId: `2`
- Statement hash: `6a3e5b7523b869e5`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩ ⟨Vermilion.Seq.index c vrml_i0⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨Vermilion.Seq.index a k, Vermilion.Seq.index c k⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 819
  startColumn := 16
  endLine := 819
  endColumn := 39
  assertId := "2"
  functionName := "reclaim_plan.key_lt_transitive"
  kind := "assert"
  statementHash := "6a3e5b7523b869e5"
}
@[vrml_obligation] theorem assert_2
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (c : (Vermilion.Seq Int))
    (choose_spec_0 : (∃ (p : Int), reclaim_plan.key_lt_at_spec a b p) → (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)))
    (choose_spec_1 : (∃ (q : Int), reclaim_plan.key_lt_at_spec b c q) → (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q) (Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q)))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len c)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index c vrml_i0))))
    (requires_3 : reclaim_plan.key_lt_spec a b)
    (requires_4 : reclaim_plan.key_lt_spec b c)
    (branch_0 : Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) < Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q))
    (assert_0 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p))) → ((Vermilion.Seq.index a k = Vermilion.Seq.index b k) ∧ (Vermilion.Seq.index b k = Vermilion.Seq.index c k)))))
    (then_1_assert_1 : (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) < Vermilion.Seq.len a) → (Vermilion.Seq.index b (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)) = Vermilion.Seq.index c (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)))) :
    reclaim_plan.key_lt_at_spec a c (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)) := by
  exact (klt_at_trans a b c _ _ (choose_spec_0 requires_3) (choose_spec_1 requires_4)).1 (le_of_lt branch_0)
-- vrml:end reclaim_plan.key_lt_transitive.assert_2

-- vrml:begin reclaim_plan.key_lt_transitive.assert_3 a66e04cc6c5479fa
/--
Generated VC `reclaim_plan.key_lt_transitive.assert_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:821:16-821:97`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `a66e04cc6c5479fa`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a k, Vermilion.Seq.index c k⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩ ⟨Vermilion.Seq.index c vrml_i0⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 821
  startColumn := 16
  endLine := 821
  endColumn := 97
  assertId := "3"
  functionName := "reclaim_plan.key_lt_transitive"
  kind := "assert"
  statementHash := "a66e04cc6c5479fa"
}
@[vrml_obligation] theorem assert_3
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (c : (Vermilion.Seq Int))
    (choose_spec_0 : (∃ (q : Int), reclaim_plan.key_lt_at_spec b c q) → (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q) (Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q)))
    (choose_spec_1 : (∃ (p : Int), reclaim_plan.key_lt_at_spec a b p) → (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len c)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index c vrml_i0))))
    (requires_3 : reclaim_plan.key_lt_spec a b)
    (requires_4 : reclaim_plan.key_lt_spec b c)
    (branch_0 : (¬ (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) < Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q))))
    (branch_2 : Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q) < Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q))) → ((Vermilion.Seq.index a k = Vermilion.Seq.index b k) ∧ (Vermilion.Seq.index b k = Vermilion.Seq.index c k)))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_lt_transitive.assert_3

-- vrml:begin reclaim_plan.key_lt_transitive.assert_4 0f416830cfb1a255
/--
Generated VC `reclaim_plan.key_lt_transitive.assert_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:822:16-822:28`
- Rust/SST construct: Rust source assertion
- AssertId: `4`
- Statement hash: `0f416830cfb1a255`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩ ⟨Vermilion.Seq.index c vrml_i0⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨Vermilion.Seq.index a k, Vermilion.Seq.index c k⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 822
  startColumn := 16
  endLine := 822
  endColumn := 28
  assertId := "4"
  functionName := "reclaim_plan.key_lt_transitive"
  kind := "assert"
  statementHash := "0f416830cfb1a255"
}
@[vrml_obligation] theorem assert_4
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (c : (Vermilion.Seq Int))
    (choose_spec_0 : (∃ (q : Int), reclaim_plan.key_lt_at_spec b c q) → (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q) (Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q)))
    (choose_spec_1 : (∃ (p : Int), reclaim_plan.key_lt_at_spec a b p) → (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len c)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index c vrml_i0))))
    (requires_3 : reclaim_plan.key_lt_spec a b)
    (requires_4 : reclaim_plan.key_lt_spec b c)
    (branch_0 : (¬ (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) < Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q))))
    (branch_2 : Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q) < Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p))
    (assert_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q))) → ((Vermilion.Seq.index a k = Vermilion.Seq.index b k) ∧ (Vermilion.Seq.index b k = Vermilion.Seq.index c k))))) :
    Vermilion.Seq.index a (Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q)) = Vermilion.Seq.index b (Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_lt_transitive.assert_4

-- vrml:begin reclaim_plan.key_lt_transitive.assert_5 1e71cb0917d0e3fb
/--
Generated VC `reclaim_plan.key_lt_transitive.assert_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:823:16-823:39`
- Rust/SST construct: Rust source assertion
- AssertId: `5`
- Statement hash: `1e71cb0917d0e3fb`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩ ⟨Vermilion.Seq.index c vrml_i0⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨Vermilion.Seq.index a k, Vermilion.Seq.index c k⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 823
  startColumn := 16
  endLine := 823
  endColumn := 39
  assertId := "5"
  functionName := "reclaim_plan.key_lt_transitive"
  kind := "assert"
  statementHash := "1e71cb0917d0e3fb"
}
@[vrml_obligation] theorem assert_5
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (c : (Vermilion.Seq Int))
    (choose_spec_0 : (∃ (q : Int), reclaim_plan.key_lt_at_spec b c q) → (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q) (Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q)))
    (choose_spec_1 : (∃ (p : Int), reclaim_plan.key_lt_at_spec a b p) → (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len c)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index c vrml_i0))))
    (requires_3 : reclaim_plan.key_lt_spec a b)
    (requires_4 : reclaim_plan.key_lt_spec b c)
    (branch_0 : (¬ (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) < Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q))))
    (branch_2 : Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q) < Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p))
    (assert_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q))) → ((Vermilion.Seq.index a k = Vermilion.Seq.index b k) ∧ (Vermilion.Seq.index b k = Vermilion.Seq.index c k)))))
    (assert_4 : Vermilion.Seq.index a (Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q)) = Vermilion.Seq.index b (Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q))) :
    reclaim_plan.key_lt_at_spec a c (Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q)) := by
  exact (klt_at_trans a b c _ _ (choose_spec_1 requires_3) (choose_spec_0 requires_4)).2 branch_2
-- vrml:end reclaim_plan.key_lt_transitive.assert_5

-- vrml:begin reclaim_plan.key_lt_transitive.assert_6 ff9a8c1447da7122
/--
Generated VC `reclaim_plan.key_lt_transitive.assert_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:825:16-825:97`
- Rust/SST construct: Rust source assertion
- AssertId: `6`
- Statement hash: `ff9a8c1447da7122`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a k, Vermilion.Seq.index c k⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩ ⟨Vermilion.Seq.index c vrml_i0⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩
-/
def assert_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 825
  startColumn := 16
  endLine := 825
  endColumn := 97
  assertId := "6"
  functionName := "reclaim_plan.key_lt_transitive"
  kind := "assert"
  statementHash := "ff9a8c1447da7122"
}
@[vrml_obligation] theorem assert_6
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (c : (Vermilion.Seq Int))
    (choose_spec_0 : (∃ (p : Int), reclaim_plan.key_lt_at_spec a b p) → (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)))
    (choose_spec_1 : (∃ (q : Int), reclaim_plan.key_lt_at_spec b c q) → (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q) (Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q)))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len c)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index c vrml_i0))))
    (requires_3 : reclaim_plan.key_lt_spec a b)
    (requires_4 : reclaim_plan.key_lt_spec b c)
    (branch_0 : (¬ (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) < Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q))))
    (branch_2 : (¬ (Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q) < Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)))) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p))) → ((Vermilion.Seq.index a k = Vermilion.Seq.index b k) ∧ (Vermilion.Seq.index b k = Vermilion.Seq.index c k)))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_lt_transitive.assert_6

-- vrml:begin reclaim_plan.key_lt_transitive.assert_7 ee9030d6053d7454
/--
Generated VC `reclaim_plan.key_lt_transitive.assert_7`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:826:16-826:39`
- Rust/SST construct: Rust source assertion
- AssertId: `7`
- Statement hash: `ee9030d6053d7454`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩ ⟨Vermilion.Seq.index c vrml_i0⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨Vermilion.Seq.index a k, Vermilion.Seq.index c k⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩
-/
def assert_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 826
  startColumn := 16
  endLine := 826
  endColumn := 39
  assertId := "7"
  functionName := "reclaim_plan.key_lt_transitive"
  kind := "assert"
  statementHash := "ee9030d6053d7454"
}
@[vrml_obligation] theorem assert_7
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (c : (Vermilion.Seq Int))
    (choose_spec_0 : (∃ (p : Int), reclaim_plan.key_lt_at_spec a b p) → (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)))
    (choose_spec_1 : (∃ (q : Int), reclaim_plan.key_lt_at_spec b c q) → (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q) (Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q)))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len c)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index c vrml_i0))))
    (requires_3 : reclaim_plan.key_lt_spec a b)
    (requires_4 : reclaim_plan.key_lt_spec b c)
    (branch_0 : (¬ (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) < Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q))))
    (branch_2 : (¬ (Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q) < Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p))))
    (assert_6 : (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p))) → ((Vermilion.Seq.index a k = Vermilion.Seq.index b k) ∧ (Vermilion.Seq.index b k = Vermilion.Seq.index c k))))) :
    reclaim_plan.key_lt_at_spec a c (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)) := by
  exact (klt_at_trans a b c _ _ (choose_spec_0 requires_3) (choose_spec_1 requires_4)).1 (by omega)
-- vrml:end reclaim_plan.key_lt_transitive.assert_7

-- vrml:begin reclaim_plan.key_lt_transitive.ensures_8 0152664fa90c8185
/--
Generated VC `reclaim_plan.key_lt_transitive.ensures_8`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:810:13-810:30`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `8`
- Statement hash: `0152664fa90c8185`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩ ⟨Vermilion.Seq.index c vrml_i0⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨Vermilion.Seq.index a k, Vermilion.Seq.index c k⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨Vermilion.Seq.index a k, Vermilion.Seq.index c k⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨Vermilion.Seq.index a k, Vermilion.Seq.index c k⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec b c q⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩ ⟨reclaim_plan.key_lt_at_spec a b p⟩
-/
def ensures_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 810
  startColumn := 13
  endLine := 810
  endColumn := 30
  assertId := "8"
  functionName := "reclaim_plan.key_lt_transitive"
  kind := "ensures"
  statementHash := "0152664fa90c8185"
}
@[vrml_obligation] theorem ensures_8
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (c : (Vermilion.Seq Int))
    (choose_spec_0 : (∃ (p : Int), reclaim_plan.key_lt_at_spec a b p) → (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)))
    (choose_spec_1 : (∃ (q : Int), reclaim_plan.key_lt_at_spec b c q) → (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q) (Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q)))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len c)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index c vrml_i0))))
    (requires_3 : reclaim_plan.key_lt_spec a b)
    (requires_4 : reclaim_plan.key_lt_spec b c)
    (then_0_assert_0 : (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) < Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q)) → (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p))) → ((Vermilion.Seq.index a k = Vermilion.Seq.index b k) ∧ (Vermilion.Seq.index b k = Vermilion.Seq.index c k)))))
    (then_0_then_1_assert_1 : (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) < Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q)) → ((Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) < Vermilion.Seq.len a) → (Vermilion.Seq.index b (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)) = Vermilion.Seq.index c (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)))))
    (then_0_assert_2 : (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) < Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q)) → reclaim_plan.key_lt_at_spec a c (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)))
    (else_0_then_2_assert_3 : (¬ (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) < Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q))) → ((Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q) < Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)) → (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q))) → ((Vermilion.Seq.index a k = Vermilion.Seq.index b k) ∧ (Vermilion.Seq.index b k = Vermilion.Seq.index c k))))))
    (else_0_then_2_assert_4 : (¬ (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) < Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q))) → ((Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q) < Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)) → (Vermilion.Seq.index a (Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q)) = Vermilion.Seq.index b (Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q)))))
    (else_0_then_2_assert_5 : (¬ (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) < Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q))) → ((Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q) < Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)) → reclaim_plan.key_lt_at_spec a c (Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q))))
    (else_0_else_2_assert_6 : (¬ (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) < Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q))) → ((¬ (Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q) < Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p))) → (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p))) → ((Vermilion.Seq.index a k = Vermilion.Seq.index b k) ∧ (Vermilion.Seq.index b k = Vermilion.Seq.index c k))))))
    (else_0_else_2_assert_7 : (¬ (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p) < Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q))) → ((¬ (Vermilion.chooseSpec (fun (q : Int) => reclaim_plan.key_lt_at_spec b c q) < Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p))) → reclaim_plan.key_lt_at_spec a c (Vermilion.chooseSpec (fun (p : Int) => reclaim_plan.key_lt_at_spec a b p)))) :
    reclaim_plan.key_lt_spec a c := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_lt_transitive.ensures_8

end reclaim_plan.key_lt_transitive

