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

theorem klt_irrefl (a : Vermilion.Seq Int) : ¬ reclaim_plan.key_lt_spec a a := by
  rintro ⟨p, _, hc⟩
  rcases hc with ⟨h1, h2⟩ | ⟨_, h3⟩
  · omega
  · exact lt_irrefl _ h3

theorem sorted_distinct (keys : Vermilion.Seq (Vermilion.Seq Int)) (hs : reclaim_plan.keys_sorted_spec keys)
    (i j : Int) (hi : 0 ≤ i ∧ i < Vermilion.Seq.len keys) (hj : 0 ≤ j ∧ j < Vermilion.Seq.len keys)
    (he : Vermilion.Seq.index keys i = Vermilion.Seq.index keys j) : i = j := by
  rcases lt_trichotomy i j with h | h | h
  · have := hs i j ⟨⟨hi.1, h⟩, hj.2⟩; rw [he] at this; exact absurd this (klt_irrefl _)
  · exact h
  · have := hs j i ⟨⟨hj.1, h⟩, hi.2⟩; rw [he] at this; exact absurd this (klt_irrefl _)

theorem krir (keys : Vermilion.Seq (Vermilion.Seq Int)) (refs : Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : Vermilion.Seq (vermilion.tuple_2 Int Int))
    (hs : reclaim_plan.keys_sorted_spec keys) (h4 : reclaim_plan.edges_match_refs_spec keys refs edges) :
    ∀ (n : Nat) (s : Int) (b : Vermilion.Seq Int), 0 ≤ s → s < Vermilion.Seq.len keys →
      reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index keys s) b n →
      ∃ t, ((0 ≤ t ∧ t < Vermilion.Seq.len keys) ∧ Vermilion.Seq.index keys t = b) ∧
        reclaim_plan.reachable_fuel edges s t n := by
  intro n
  induction n with
  | zero =>
    intro s b hs0 hs1 h
    rcases (kr_eq keys refs _ b 0 (le_refl _)).mp h with h | ⟨h, _⟩
    · exact ⟨s, ⟨⟨hs0, hs1⟩, h⟩, rf_refl edges s 0 (le_refl _)⟩
    · exact absurd rfl h
  | succ m ih =>
    intro s b hs0 hs1 h
    have hf : (0 : Int) ≤ ((m + 1 : Nat) : Int) := by omega
    rcases (kr_eq keys refs _ b _ hf).mp h with h | ⟨_, i, j, ⟨⟨⟨⟨hi0, hi1⟩, hi2⟩, hik⟩, hj⟩, hr⟩
    · exact ⟨s, ⟨⟨hs0, hs1⟩, h⟩, rf_refl edges s _ hf⟩
    · have his := sorted_distinct keys hs i s ⟨hi0, hi1⟩ ⟨hs0, hs1⟩ hik
      obtain ⟨t', ⟨⟨ht0, ht1⟩, htk⟩, hedge⟩ := h4.2 i j ⟨⟨hi0, hi2⟩, hj⟩
      have hm : ((m + 1 : Nat) : Int) - 1 = (m : Int) := by omega
      rw [hm, ← htk] at hr
      obtain ⟨t, ht, hreach⟩ := ih t' b ht0 ht1 hr
      refine ⟨t, ht, ?_⟩
      have := rf_step edges s t' t m (by omega) (by rw [← his]; exact hedge) hreach
      have hm2 : ((m : Int) + 1) = ((m + 1 : Nat) : Int) := by omega
      rw [hm2] at this; exact this
-- vrml:user:end

namespace reclaim_plan.key_live_matches_index_live

-- vrml:begin reclaim_plan.key_live_matches_index_live.call_requires_0_0 cc869d04c343cb3d
/--
Generated VC `reclaim_plan.key_live_matches_index_live.call_requires_0_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:965:9-965:83`
- Rust/SST construct: call index_reach_implies_key_reach
- AssertId: `0_0`
- Statement hash: `cc869d04c343cb3d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def call_requires_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 965
  startColumn := 9
  endLine := 965
  endColumn := 83
  assertId := "0_0"
  functionName := "reclaim_plan.key_live_matches_index_live"
  kind := "call_requires"
  statementHash := "cc869d04c343cb3d"
}
@[vrml_obligation] theorem call_requires_0_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (v : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : reclaim_plan.projection_valid_spec keys refs root_keys edges roots)
    (requires_6 : (0 ≤ v) ∧ (v < Vermilion.Seq.len keys))
    (branch_0 : reclaim_plan.live_spec edges roots v) :
    reclaim_plan.edges_match_refs_spec keys refs edges := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_live_matches_index_live.call_requires_0_0

-- vrml:begin reclaim_plan.key_live_matches_index_live.call_requires_0_1 c57c16f3d82df6cb
/--
Generated VC `reclaim_plan.key_live_matches_index_live.call_requires_0_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:965:9-965:83`
- Rust/SST construct: call index_reach_implies_key_reach
- AssertId: `0_1`
- Statement hash: `c57c16f3d82df6cb`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def call_requires_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 965
  startColumn := 9
  endLine := 965
  endColumn := 83
  assertId := "0_1"
  functionName := "reclaim_plan.key_live_matches_index_live"
  kind := "call_requires"
  statementHash := "c57c16f3d82df6cb"
}
@[vrml_obligation] theorem call_requires_0_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (v : Int)
    (choose_spec_0 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : reclaim_plan.projection_valid_spec keys refs root_keys edges roots)
    (requires_6 : (0 ≤ v) ∧ (v < Vermilion.Seq.len keys))
    (branch_0 : reclaim_plan.live_spec edges roots v) :
    (0 ≤ Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) ∧ (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))) < Vermilion.Seq.len keys) := by
  obtain ⟨⟨hsorted, hmatch⟩, hroots⟩ := requires_5
  obtain ⟨r0, f0, hf0, hr0, hreach0⟩ := branch_0
  have hR := choose_spec_0 ⟨r0, hr0, f0, hf0, hreach0⟩
  have hb := requires_4 _ hR.1
  unfold Vermilion.inUnsignedRange at hb
  exact ⟨hb.1, (hroots.2 _ hR.1).1⟩
-- vrml:end reclaim_plan.key_live_matches_index_live.call_requires_0_1

-- vrml:begin reclaim_plan.key_live_matches_index_live.call_requires_0_2 2aad0a85b1ae3f96
/--
Generated VC `reclaim_plan.key_live_matches_index_live.call_requires_0_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:965:9-965:83`
- Rust/SST construct: call index_reach_implies_key_reach
- AssertId: `0_2`
- Statement hash: `2aad0a85b1ae3f96`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def call_requires_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 965
  startColumn := 9
  endLine := 965
  endColumn := 83
  assertId := "0_2"
  functionName := "reclaim_plan.key_live_matches_index_live"
  kind := "call_requires"
  statementHash := "2aad0a85b1ae3f96"
}
@[vrml_obligation] theorem call_requires_0_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (v : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : reclaim_plan.projection_valid_spec keys refs root_keys edges roots)
    (requires_6 : (0 ≤ v) ∧ (v < Vermilion.Seq.len keys))
    (branch_0 : reclaim_plan.live_spec edges roots v) :
    (0 ≤ v) ∧ (v < Vermilion.Seq.len keys) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_live_matches_index_live.call_requires_0_2

-- vrml:begin reclaim_plan.key_live_matches_index_live.call_requires_0_3 c959fec6e69ef603
/--
Generated VC `reclaim_plan.key_live_matches_index_live.call_requires_0_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:965:9-965:83`
- Rust/SST construct: call index_reach_implies_key_reach
- AssertId: `0_3`
- Statement hash: `c959fec6e69ef603`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def call_requires_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 965
  startColumn := 9
  endLine := 965
  endColumn := 83
  assertId := "0_3"
  functionName := "reclaim_plan.key_live_matches_index_live"
  kind := "call_requires"
  statementHash := "c959fec6e69ef603"
}
@[vrml_obligation] theorem call_requires_0_3
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (v : Int)
    (choose_spec_0 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : reclaim_plan.projection_valid_spec keys refs root_keys edges roots)
    (requires_6 : (0 ≤ v) ∧ (v < Vermilion.Seq.len keys))
    (branch_0 : reclaim_plan.live_spec edges roots v) :
    reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))) := by
  obtain ⟨⟨hsorted, hmatch⟩, hroots⟩ := requires_5
  obtain ⟨r0, f0, hf0, hr0, hreach0⟩ := branch_0
  have hR := choose_spec_0 ⟨r0, hr0, f0, hf0, hreach0⟩
  exact (choose_spec_1 hR.2).2
-- vrml:end reclaim_plan.key_live_matches_index_live.call_requires_0_3

-- vrml:begin reclaim_plan.key_live_matches_index_live.assert_1 71331ab7cb1df13f
/--
Generated VC `reclaim_plan.key_live_matches_index_live.assert_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:966:16-966:73`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `71331ab7cb1df13f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 966
  startColumn := 16
  endLine := 966
  endColumn := 73
  assertId := "1"
  functionName := "reclaim_plan.key_live_matches_index_live"
  kind := "assert"
  statementHash := "71331ab7cb1df13f"
}
@[vrml_obligation] theorem assert_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (v : Int)
    (choose_spec_0 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : reclaim_plan.projection_valid_spec keys refs root_keys edges roots)
    (requires_6 : (0 ≤ v) ∧ (v < Vermilion.Seq.len keys))
    (branch_0 : reclaim_plan.live_spec edges roots v)
    (call_index_reach_implies_key_reach_ensures_0 : reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index keys (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))) (Vermilion.Seq.index keys v) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)))) :
    reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) (Vermilion.Seq.index keys v) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))) := by
  obtain ⟨⟨hsorted, hmatch⟩, hroots⟩ := requires_5
  obtain ⟨r0, f0, hf0, hr0, hreach0⟩ := branch_0
  have hR := choose_spec_0 ⟨r0, hr0, f0, hf0, hreach0⟩
  rw [← (hroots.2 _ hR.1).2]; exact call_index_reach_implies_key_reach_ensures_0
-- vrml:end reclaim_plan.key_live_matches_index_live.assert_1

-- vrml:begin reclaim_plan.key_live_matches_index_live.assert_2 997de8c6711bf5d2
/--
Generated VC `reclaim_plan.key_live_matches_index_live.assert_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:972:16-972:55`
- Rust/SST construct: Rust source assertion
- AssertId: `2`
- Statement hash: `997de8c6711bf5d2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 972
  startColumn := 16
  endLine := 972
  endColumn := 55
  assertId := "2"
  functionName := "reclaim_plan.key_live_matches_index_live"
  kind := "assert"
  statementHash := "997de8c6711bf5d2"
}
@[vrml_obligation] theorem assert_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (v : Int)
    (choose_spec_0 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel))))))
    (choose_spec_1 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))
    (choose_spec_2 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : reclaim_plan.projection_valid_spec keys refs root_keys edges roots)
    (requires_6 : (0 ≤ v) ∧ (v < Vermilion.Seq.len keys))
    (then_0_call_index_reach_implies_key_reach_ensures_0 : reclaim_plan.live_spec edges roots v → reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index keys (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))) (Vermilion.Seq.index keys v) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (then_0_assert_1 : reclaim_plan.live_spec edges roots v → reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) (Vermilion.Seq.index keys v) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (branch_1 : reclaim_plan.key_live_spec keys refs root_keys (Vermilion.Seq.index keys v)) :
    Vermilion.Seq.index keys (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) = Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel))))) := by
  obtain ⟨⟨hsorted, hmatch⟩, hroots⟩ := requires_5
  obtain ⟨r1, f1, hf1, hr1, hk1⟩ := branch_1
  have hR := choose_spec_0 ⟨r1, hr1, f1, hf1, hk1⟩
  exact (hroots.2 _ ⟨hR.1.1, by rw [hroots.1]; exact hR.1.2⟩).2
-- vrml:end reclaim_plan.key_live_matches_index_live.assert_2

-- vrml:begin reclaim_plan.key_live_matches_index_live.call_requires_3_0 54679ef1b57b2217
/--
Generated VC `reclaim_plan.key_live_matches_index_live.call_requires_3_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:973:17-973:98`
- Rust/SST construct: call key_reach_implies_index_reach
- AssertId: `3_0`
- Statement hash: `54679ef1b57b2217`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩
-/
def call_requires_3_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 973
  startColumn := 17
  endLine := 973
  endColumn := 98
  assertId := "3_0"
  functionName := "reclaim_plan.key_live_matches_index_live"
  kind := "call_requires"
  statementHash := "54679ef1b57b2217"
}
@[vrml_obligation] theorem call_requires_3_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (v : Int)
    (choose_spec_0 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (choose_spec_2 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : reclaim_plan.projection_valid_spec keys refs root_keys edges roots)
    (requires_6 : (0 ≤ v) ∧ (v < Vermilion.Seq.len keys))
    (then_0_call_index_reach_implies_key_reach_ensures_0 : reclaim_plan.live_spec edges roots v → reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index keys (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))) (Vermilion.Seq.index keys v) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (then_0_assert_1 : reclaim_plan.live_spec edges roots v → reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) (Vermilion.Seq.index keys v) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (branch_1 : reclaim_plan.key_live_spec keys refs root_keys (Vermilion.Seq.index keys v))
    (assert_2 : Vermilion.Seq.index keys (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) = Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) :
    reclaim_plan.keys_sorted_spec keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_live_matches_index_live.call_requires_3_0

-- vrml:begin reclaim_plan.key_live_matches_index_live.call_requires_3_1 4fd18a6044c43992
/--
Generated VC `reclaim_plan.key_live_matches_index_live.call_requires_3_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:973:17-973:98`
- Rust/SST construct: call key_reach_implies_index_reach
- AssertId: `3_1`
- Statement hash: `4fd18a6044c43992`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩
-/
def call_requires_3_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 973
  startColumn := 17
  endLine := 973
  endColumn := 98
  assertId := "3_1"
  functionName := "reclaim_plan.key_live_matches_index_live"
  kind := "call_requires"
  statementHash := "4fd18a6044c43992"
}
@[vrml_obligation] theorem call_requires_3_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (v : Int)
    (choose_spec_0 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (choose_spec_2 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel))))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : reclaim_plan.projection_valid_spec keys refs root_keys edges roots)
    (requires_6 : (0 ≤ v) ∧ (v < Vermilion.Seq.len keys))
    (then_0_call_index_reach_implies_key_reach_ensures_0 : reclaim_plan.live_spec edges roots v → reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index keys (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))) (Vermilion.Seq.index keys v) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (then_0_assert_1 : reclaim_plan.live_spec edges roots v → reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) (Vermilion.Seq.index keys v) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (branch_1 : reclaim_plan.key_live_spec keys refs root_keys (Vermilion.Seq.index keys v))
    (assert_2 : Vermilion.Seq.index keys (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) = Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) :
    reclaim_plan.edges_match_refs_spec keys refs edges := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_live_matches_index_live.call_requires_3_1

-- vrml:begin reclaim_plan.key_live_matches_index_live.call_requires_3_2 2be604bdb3a890a3
/--
Generated VC `reclaim_plan.key_live_matches_index_live.call_requires_3_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:973:17-973:98`
- Rust/SST construct: call key_reach_implies_index_reach
- AssertId: `3_2`
- Statement hash: `2be604bdb3a890a3`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩
-/
def call_requires_3_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 973
  startColumn := 17
  endLine := 973
  endColumn := 98
  assertId := "3_2"
  functionName := "reclaim_plan.key_live_matches_index_live"
  kind := "call_requires"
  statementHash := "2be604bdb3a890a3"
}
@[vrml_obligation] theorem call_requires_3_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (v : Int)
    (choose_spec_0 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel))))))
    (choose_spec_1 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))
    (choose_spec_2 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : reclaim_plan.projection_valid_spec keys refs root_keys edges roots)
    (requires_6 : (0 ≤ v) ∧ (v < Vermilion.Seq.len keys))
    (then_0_call_index_reach_implies_key_reach_ensures_0 : reclaim_plan.live_spec edges roots v → reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index keys (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))) (Vermilion.Seq.index keys v) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (then_0_assert_1 : reclaim_plan.live_spec edges roots v → reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) (Vermilion.Seq.index keys v) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (branch_1 : reclaim_plan.key_live_spec keys refs root_keys (Vermilion.Seq.index keys v))
    (assert_2 : Vermilion.Seq.index keys (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) = Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) :
    (0 ≤ Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) ∧ (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel))))) < Vermilion.Seq.len keys) := by
  obtain ⟨⟨hsorted, hmatch⟩, hroots⟩ := requires_5
  obtain ⟨r1, f1, hf1, hr1, hk1⟩ := branch_1
  have hR := choose_spec_0 ⟨r1, hr1, f1, hf1, hk1⟩
  have hb := requires_4 _ ⟨hR.1.1, by rw [hroots.1]; exact hR.1.2⟩
  unfold Vermilion.inUnsignedRange at hb
  exact ⟨hb.1, (hroots.2 _ ⟨hR.1.1, by rw [hroots.1]; exact hR.1.2⟩).1⟩
-- vrml:end reclaim_plan.key_live_matches_index_live.call_requires_3_2

-- vrml:begin reclaim_plan.key_live_matches_index_live.call_requires_3_3 78593df174500874
/--
Generated VC `reclaim_plan.key_live_matches_index_live.call_requires_3_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:973:17-973:98`
- Rust/SST construct: call key_reach_implies_index_reach
- AssertId: `3_3`
- Statement hash: `78593df174500874`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩
-/
def call_requires_3_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 973
  startColumn := 17
  endLine := 973
  endColumn := 98
  assertId := "3_3"
  functionName := "reclaim_plan.key_live_matches_index_live"
  kind := "call_requires"
  statementHash := "78593df174500874"
}
@[vrml_obligation] theorem call_requires_3_3
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (v : Int)
    (choose_spec_0 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0))))
    (choose_spec_2 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))
    (choose_spec_3 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : reclaim_plan.projection_valid_spec keys refs root_keys edges roots)
    (requires_6 : (0 ≤ v) ∧ (v < Vermilion.Seq.len keys))
    (then_0_call_index_reach_implies_key_reach_ensures_0 : reclaim_plan.live_spec edges roots v → reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index keys (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))) (Vermilion.Seq.index keys v) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (then_0_assert_1 : reclaim_plan.live_spec edges roots v → reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) (Vermilion.Seq.index keys v) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (branch_1 : reclaim_plan.key_live_spec keys refs root_keys (Vermilion.Seq.index keys v))
    (assert_2 : Vermilion.Seq.index keys (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) = Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) :
    reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index keys (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel))))))) (Vermilion.Seq.index keys v) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0))) := by
  obtain ⟨⟨hsorted, hmatch⟩, hroots⟩ := requires_5
  obtain ⟨r1, f1, hf1, hr1, hk1⟩ := branch_1
  have hR := choose_spec_0 ⟨r1, hr1, f1, hf1, hk1⟩
  have hF := choose_spec_1 hR.2
  rw [assert_2]
  exact hF.2
-- vrml:end reclaim_plan.key_live_matches_index_live.call_requires_3_3

-- vrml:begin reclaim_plan.key_live_matches_index_live.call_requires_4_0 26f9c1c6859a4dc9
/--
Generated VC `reclaim_plan.key_live_matches_index_live.call_requires_4_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:974:9-974:41`
- Rust/SST construct: call sorted_keys_distinct
- AssertId: `4_0`
- Statement hash: `26f9c1c6859a4dc9`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩
-/
def call_requires_4_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 974
  startColumn := 9
  endLine := 974
  endColumn := 41
  assertId := "4_0"
  functionName := "reclaim_plan.key_live_matches_index_live"
  kind := "call_requires"
  statementHash := "26f9c1c6859a4dc9"
}
@[vrml_obligation] theorem call_requires_4_0
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (v : Int)
    (t : Int)
    (choose_spec_0 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (choose_spec_2 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel))))))
    (choose_spec_3 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : reclaim_plan.projection_valid_spec keys refs root_keys edges roots)
    (requires_6 : (0 ≤ v) ∧ (v < Vermilion.Seq.len keys))
    (then_0_call_index_reach_implies_key_reach_ensures_0 : reclaim_plan.live_spec edges roots v → reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index keys (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))) (Vermilion.Seq.index keys v) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (then_0_assert_1 : reclaim_plan.live_spec edges roots v → reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) (Vermilion.Seq.index keys v) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (branch_1 : reclaim_plan.key_live_spec keys refs root_keys (Vermilion.Seq.index keys v))
    (assert_2 : Vermilion.Seq.index keys (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) = Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel))))))
    (call_key_reach_implies_index_reach_ensures_0 : (0 ≤ t) ∧ (t < Vermilion.Seq.len keys))
    (call_key_reach_implies_index_reach_ensures_1 : Vermilion.Seq.index keys t = Vermilion.Seq.index keys v)
    (call_key_reach_implies_index_reach_ensures_2 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) t (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0)))) :
    reclaim_plan.keys_sorted_spec keys := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_live_matches_index_live.call_requires_4_0

-- vrml:begin reclaim_plan.key_live_matches_index_live.call_requires_4_1 46ec5bec1902351b
/--
Generated VC `reclaim_plan.key_live_matches_index_live.call_requires_4_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:974:9-974:41`
- Rust/SST construct: call sorted_keys_distinct
- AssertId: `4_1`
- Statement hash: `46ec5bec1902351b`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩
-/
def call_requires_4_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 974
  startColumn := 9
  endLine := 974
  endColumn := 41
  assertId := "4_1"
  functionName := "reclaim_plan.key_live_matches_index_live"
  kind := "call_requires"
  statementHash := "46ec5bec1902351b"
}
@[vrml_obligation] theorem call_requires_4_1
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (v : Int)
    (t : Int)
    (choose_spec_0 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (choose_spec_2 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel))))))
    (choose_spec_3 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : reclaim_plan.projection_valid_spec keys refs root_keys edges roots)
    (requires_6 : (0 ≤ v) ∧ (v < Vermilion.Seq.len keys))
    (then_0_call_index_reach_implies_key_reach_ensures_0 : reclaim_plan.live_spec edges roots v → reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index keys (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))) (Vermilion.Seq.index keys v) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (then_0_assert_1 : reclaim_plan.live_spec edges roots v → reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) (Vermilion.Seq.index keys v) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (branch_1 : reclaim_plan.key_live_spec keys refs root_keys (Vermilion.Seq.index keys v))
    (assert_2 : Vermilion.Seq.index keys (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) = Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel))))))
    (call_key_reach_implies_index_reach_ensures_0 : (0 ≤ t) ∧ (t < Vermilion.Seq.len keys))
    (call_key_reach_implies_index_reach_ensures_1 : Vermilion.Seq.index keys t = Vermilion.Seq.index keys v)
    (call_key_reach_implies_index_reach_ensures_2 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) t (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0)))) :
    (0 ≤ t) ∧ (t < Vermilion.Seq.len keys) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_live_matches_index_live.call_requires_4_1

-- vrml:begin reclaim_plan.key_live_matches_index_live.call_requires_4_2 0d0f7fb3d0250ffb
/--
Generated VC `reclaim_plan.key_live_matches_index_live.call_requires_4_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:974:9-974:41`
- Rust/SST construct: call sorted_keys_distinct
- AssertId: `4_2`
- Statement hash: `0d0f7fb3d0250ffb`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩
-/
def call_requires_4_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 974
  startColumn := 9
  endLine := 974
  endColumn := 41
  assertId := "4_2"
  functionName := "reclaim_plan.key_live_matches_index_live"
  kind := "call_requires"
  statementHash := "0d0f7fb3d0250ffb"
}
@[vrml_obligation] theorem call_requires_4_2
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (v : Int)
    (t : Int)
    (choose_spec_0 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (choose_spec_2 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel))))))
    (choose_spec_3 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : reclaim_plan.projection_valid_spec keys refs root_keys edges roots)
    (requires_6 : (0 ≤ v) ∧ (v < Vermilion.Seq.len keys))
    (then_0_call_index_reach_implies_key_reach_ensures_0 : reclaim_plan.live_spec edges roots v → reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index keys (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))) (Vermilion.Seq.index keys v) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (then_0_assert_1 : reclaim_plan.live_spec edges roots v → reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) (Vermilion.Seq.index keys v) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (branch_1 : reclaim_plan.key_live_spec keys refs root_keys (Vermilion.Seq.index keys v))
    (assert_2 : Vermilion.Seq.index keys (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) = Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel))))))
    (call_key_reach_implies_index_reach_ensures_0 : (0 ≤ t) ∧ (t < Vermilion.Seq.len keys))
    (call_key_reach_implies_index_reach_ensures_1 : Vermilion.Seq.index keys t = Vermilion.Seq.index keys v)
    (call_key_reach_implies_index_reach_ensures_2 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) t (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0)))) :
    (0 ≤ v) ∧ (v < Vermilion.Seq.len keys) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_live_matches_index_live.call_requires_4_2

-- vrml:begin reclaim_plan.key_live_matches_index_live.call_requires_4_3 dc374f82a5568229
/--
Generated VC `reclaim_plan.key_live_matches_index_live.call_requires_4_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:974:9-974:41`
- Rust/SST construct: call sorted_keys_distinct
- AssertId: `4_3`
- Statement hash: `dc374f82a5568229`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩
-/
def call_requires_4_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 974
  startColumn := 9
  endLine := 974
  endColumn := 41
  assertId := "4_3"
  functionName := "reclaim_plan.key_live_matches_index_live"
  kind := "call_requires"
  statementHash := "dc374f82a5568229"
}
@[vrml_obligation] theorem call_requires_4_3
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (v : Int)
    (t : Int)
    (choose_spec_0 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (choose_spec_2 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel))))))
    (choose_spec_3 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : reclaim_plan.projection_valid_spec keys refs root_keys edges roots)
    (requires_6 : (0 ≤ v) ∧ (v < Vermilion.Seq.len keys))
    (then_0_call_index_reach_implies_key_reach_ensures_0 : reclaim_plan.live_spec edges roots v → reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index keys (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))) (Vermilion.Seq.index keys v) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (then_0_assert_1 : reclaim_plan.live_spec edges roots v → reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) (Vermilion.Seq.index keys v) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (branch_1 : reclaim_plan.key_live_spec keys refs root_keys (Vermilion.Seq.index keys v))
    (assert_2 : Vermilion.Seq.index keys (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) = Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel))))))
    (call_key_reach_implies_index_reach_ensures_0 : (0 ≤ t) ∧ (t < Vermilion.Seq.len keys))
    (call_key_reach_implies_index_reach_ensures_1 : Vermilion.Seq.index keys t = Vermilion.Seq.index keys v)
    (call_key_reach_implies_index_reach_ensures_2 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) t (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0)))) :
    Vermilion.Seq.index keys t = Vermilion.Seq.index keys v := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_live_matches_index_live.call_requires_4_3

-- vrml:begin reclaim_plan.key_live_matches_index_live.assert_5 4831508c0709e714
/--
Generated VC `reclaim_plan.key_live_matches_index_live.assert_5`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:975:16-975:87`
- Rust/SST construct: Rust source assertion
- AssertId: `5`
- Statement hash: `4831508c0709e714`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 975
  startColumn := 16
  endLine := 975
  endColumn := 87
  assertId := "5"
  functionName := "reclaim_plan.key_live_matches_index_live"
  kind := "assert"
  statementHash := "4831508c0709e714"
}
@[vrml_obligation] theorem assert_5
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (v : Int)
    (t : Int)
    (choose_spec_0 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0))))
    (choose_spec_2 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))
    (choose_spec_3 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : reclaim_plan.projection_valid_spec keys refs root_keys edges roots)
    (requires_6 : (0 ≤ v) ∧ (v < Vermilion.Seq.len keys))
    (then_0_call_index_reach_implies_key_reach_ensures_0 : reclaim_plan.live_spec edges roots v → reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index keys (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))) (Vermilion.Seq.index keys v) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (then_0_assert_1 : reclaim_plan.live_spec edges roots v → reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) (Vermilion.Seq.index keys v) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (branch_1 : reclaim_plan.key_live_spec keys refs root_keys (Vermilion.Seq.index keys v))
    (assert_2 : Vermilion.Seq.index keys (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) = Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel))))))
    (call_key_reach_implies_index_reach_ensures_0 : (0 ≤ t) ∧ (t < Vermilion.Seq.len keys))
    (call_key_reach_implies_index_reach_ensures_1 : Vermilion.Seq.index keys t = Vermilion.Seq.index keys v)
    (call_key_reach_implies_index_reach_ensures_2 : reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) t (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0))))
    (call_sorted_keys_distinct_ensures_0 : t = v) :
    ((0 ≤ Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel))))) ∧ (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))) < Vermilion.Seq.len roots)) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) v (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0))) := by
  obtain ⟨⟨hsorted, hmatch⟩, hroots⟩ := requires_5
  obtain ⟨r1, f1, hf1, hr1, hk1⟩ := branch_1
  have hR := choose_spec_0 ⟨r1, hr1, f1, hf1, hk1⟩
  have key : ∀ (x : Int) (R F : Int), x = v → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots R) x F →
      reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots R) v F := by
    intro x R F h1 h2; rw [← h1]; exact h2
  exact ⟨⟨hR.1.1, by rw [hroots.1]; exact hR.1.2⟩,
    key _ _ _ call_sorted_keys_distinct_ensures_0 call_key_reach_implies_index_reach_ensures_2⟩
-- vrml:end reclaim_plan.key_live_matches_index_live.assert_5

-- vrml:begin reclaim_plan.key_live_matches_index_live.ensures_6 a32f25bcaded3727
/--
Generated VC `reclaim_plan.key_live_matches_index_live.ensures_6`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:959:13-959:89`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `6`
- Statement hash: `a32f25bcaded3727`
- Triggers (Verus, for future e-matching): ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index refs vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2⟩ ⟨Vermilion.Seq.index root_keys vrml_i0⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1⟩ ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0⟩ ⟨Vermilion.Seq.index roots r⟩ ⟨reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0⟩ ⟨Vermilion.Seq.index root_keys r⟩ ⟨reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel⟩
-/
def ensures_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 959
  startColumn := 13
  endLine := 959
  endColumn := 89
  assertId := "6"
  functionName := "reclaim_plan.key_live_matches_index_live"
  kind := "ensures"
  statementHash := "a32f25bcaded3727"
}
@[vrml_obligation] theorem ensures_6
    (keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int))))
    (root_keys : (Vermilion.Seq (Vermilion.Seq Int)))
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (v : Int)
    (t : Int)
    (choose_spec_0 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))
    (choose_spec_1 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (choose_spec_2 : (∃ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))) → (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))) (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel))))))
    (choose_spec_3 : (∃ (fuel_vrml_0 : Int), ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0)) → (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0)) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0))))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index keys vrml_i0) vrml_i1)))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len refs)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index refs vrml_i0))) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1)) ∧ (∀ (vrml_i2 : Int), (((0 ≤ vrml_i2) ∧ (vrml_i2 < Vermilion.Seq.len (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index (Vermilion.Seq.index refs vrml_i0) vrml_i1) vrml_i2))))))))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len root_keys)) → (Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0)) ∧ (∀ (vrml_i1 : Int), (((0 ≤ vrml_i1) ∧ (vrml_i1 < Vermilion.Seq.len (Vermilion.Seq.index root_keys vrml_i0))) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index (Vermilion.Seq.index root_keys vrml_i0) vrml_i1)))))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_5 : reclaim_plan.projection_valid_spec keys refs root_keys edges roots)
    (requires_6 : (0 ≤ v) ∧ (v < Vermilion.Seq.len keys))
    (then_0_call_index_reach_implies_key_reach_ensures_0 : reclaim_plan.live_spec edges roots v → reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index keys (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel))))))) (Vermilion.Seq.index keys v) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (then_0_assert_1 : reclaim_plan.live_spec edges roots v → reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) (Vermilion.Seq.index keys v) (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))))) v fuel_vrml_0))))
    (then_1_assert_2 : reclaim_plan.key_live_spec keys refs root_keys (Vermilion.Seq.index keys v) → (Vermilion.Seq.index keys (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) = Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))))
    (then_1_call_key_reach_implies_index_reach_ensures_0 : reclaim_plan.key_live_spec keys refs root_keys (Vermilion.Seq.index keys v) → ((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)))
    (then_1_call_key_reach_implies_index_reach_ensures_1 : reclaim_plan.key_live_spec keys refs root_keys (Vermilion.Seq.index keys v) → (Vermilion.Seq.index keys t = Vermilion.Seq.index keys v))
    (then_1_call_key_reach_implies_index_reach_ensures_2 : reclaim_plan.key_live_spec keys refs root_keys (Vermilion.Seq.index keys v) → reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) t (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0))))
    (then_1_call_sorted_keys_distinct_ensures_0 : reclaim_plan.key_live_spec keys refs root_keys (Vermilion.Seq.index keys v) → (t = v))
    (then_1_assert_5 : reclaim_plan.key_live_spec keys refs root_keys (Vermilion.Seq.index keys v) → (((0 ≤ Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel))))) ∧ (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))) < Vermilion.Seq.len roots)) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) v (Vermilion.chooseSpec (fun (fuel_vrml_0 : Int) => ((0 ≤ fuel_vrml_0) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys (Vermilion.chooseSpec (fun (r : Int) => (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ (∃ (fuel : Int), ((0 ≤ fuel) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) (Vermilion.Seq.index keys v) fuel)))))) (Vermilion.Seq.index keys v) fuel_vrml_0))))) :
    reclaim_plan.live_spec edges roots v ↔ reclaim_plan.key_live_spec keys refs root_keys (Vermilion.Seq.index keys v) := by
  obtain ⟨⟨hsorted, hmatch⟩, hroots⟩ := requires_5
  constructor
  · rintro ⟨r, f, hf, hr, hreach⟩
    have hrk := hroots.2 r hr
    have hb := requires_4 r hr
    unfold Vermilion.inUnsignedRange at hb
    have := irkr keys refs edges requires_3 hmatch f.toNat _ v hb.1 hrk.1 requires_6.2
      (by rw [Int.toNat_of_nonneg hf]; exact hreach)
    rw [Int.toNat_of_nonneg hf, hrk.2] at this
    exact ⟨r, f, hf, ⟨hr.1, by rw [← hroots.1]; exact hr.2⟩, this⟩
  · rintro ⟨r, f, hf, hr, hreach⟩
    have hr' : 0 ≤ r ∧ r < Vermilion.Seq.len roots := ⟨hr.1, by rw [hroots.1]; exact hr.2⟩
    have hrk := hroots.2 r hr'
    have hb := requires_4 r hr'
    unfold Vermilion.inUnsignedRange at hb
    rw [← hrk.2] at hreach
    obtain ⟨t, ⟨ht, htk⟩, hreach'⟩ := krir keys refs edges hsorted hmatch f.toNat _ _ hb.1 hrk.1
      (by rw [Int.toNat_of_nonneg hf]; exact hreach)
    have := sorted_distinct keys hsorted t v ht requires_6 htk
    rw [this, Int.toNat_of_nonneg hf] at hreach'
    exact ⟨r, f, hf, hr', hreach'⟩
-- vrml:end reclaim_plan.key_live_matches_index_live.ensures_6

end reclaim_plan.key_live_matches_index_live

