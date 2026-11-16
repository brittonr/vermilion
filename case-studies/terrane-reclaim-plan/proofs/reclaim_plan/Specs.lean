import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

inductive vermilion.tuple_2 (T_0 : Type) (T_1 : Type) where
  | tuple_2 (_0 : T_0) (_1 : T_1)
deriving Inhabited

@[simp, grind] def vermilion.tuple_2.is_tuple_2 {T_0 : Type} {T_1 : Type} : (vermilion.tuple_2 T_0 T_1) → Prop
  | .tuple_2 _ _ => True
instance {T_0 : Type} {T_1 : Type} (x : (vermilion.tuple_2 T_0 T_1)) : Decidable (vermilion.tuple_2.is_tuple_2 x) := by
  cases x
  exact isTrue trivial

@[simp, grind] def vermilion.tuple_2.get_tuple_2__0 {T_0 : Type} [Inhabited T_0] {T_1 : Type} [Inhabited T_1] : (vermilion.tuple_2 T_0 T_1) → T_0
  | .tuple_2 _0 _ => _0

@[simp, grind] def vermilion.tuple_2.get_tuple_2__1 {T_0 : Type} [Inhabited T_0] {T_1 : Type} [Inhabited T_1] : (vermilion.tuple_2 T_0 T_1) → T_1
  | .tuple_2 _ _1 => _1

inductive reclaim_plan.ReclaimPlan where
  | ReclaimPlan (status : Int) (retained : (Vermilion.Seq Prop)) (candidate : (Vermilion.Seq Prop))
deriving Inhabited

@[simp, grind] def reclaim_plan.ReclaimPlan.is_ReclaimPlan : reclaim_plan.ReclaimPlan → Prop
  | .ReclaimPlan _ _ _ => True
instance (x : reclaim_plan.ReclaimPlan) : Decidable (reclaim_plan.ReclaimPlan.is_ReclaimPlan x) := by
  cases x
  exact isTrue trivial

@[simp, grind] def reclaim_plan.ReclaimPlan.get_ReclaimPlan_status : reclaim_plan.ReclaimPlan → Int
  | .ReclaimPlan status _ _ => status

@[simp, grind] def reclaim_plan.ReclaimPlan.get_ReclaimPlan_retained : reclaim_plan.ReclaimPlan → (Vermilion.Seq Prop)
  | .ReclaimPlan _ retained _ => retained

@[simp, grind] def reclaim_plan.ReclaimPlan.get_ReclaimPlan_candidate : reclaim_plan.ReclaimPlan → (Vermilion.Seq Prop)
  | .ReclaimPlan _ _ candidate => candidate

inductive reclaim_plan.RowProjection where
  | RowProjection (ok : Prop) (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
deriving Inhabited

@[simp, grind] def reclaim_plan.RowProjection.is_RowProjection : reclaim_plan.RowProjection → Prop
  | .RowProjection _ _ => True
instance (x : reclaim_plan.RowProjection) : Decidable (reclaim_plan.RowProjection.is_RowProjection x) := by
  cases x
  exact isTrue trivial

@[simp, grind] def reclaim_plan.RowProjection.get_RowProjection_ok : reclaim_plan.RowProjection → Prop
  | .RowProjection ok _ => ok

@[simp, grind] def reclaim_plan.RowProjection.get_RowProjection_edges : reclaim_plan.RowProjection → (Vermilion.Seq (vermilion.tuple_2 Int Int))
  | .RowProjection _ edges => edges

inductive reclaim_plan.KeyProjection where
  | KeyProjection (ok : Prop) (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
deriving Inhabited

@[simp, grind] def reclaim_plan.KeyProjection.is_KeyProjection : reclaim_plan.KeyProjection → Prop
  | .KeyProjection _ _ => True
instance (x : reclaim_plan.KeyProjection) : Decidable (reclaim_plan.KeyProjection.is_KeyProjection x) := by
  cases x
  exact isTrue trivial

@[simp, grind] def reclaim_plan.KeyProjection.get_KeyProjection_ok : reclaim_plan.KeyProjection → Prop
  | .KeyProjection ok _ => ok

@[simp, grind] def reclaim_plan.KeyProjection.get_KeyProjection_edges : reclaim_plan.KeyProjection → (Vermilion.Seq (vermilion.tuple_2 Int Int))
  | .KeyProjection _ edges => edges

inductive core.option.Option (V : Type) where
  | None
  | Some (_0 : V)
deriving Inhabited

@[simp, grind] def core.option.Option.is_None {V : Type} : (core.option.Option V) → Prop
  | .None => True
  | .Some _ => False
instance {V : Type} (x : (core.option.Option V)) : Decidable (core.option.Option.is_None x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def core.option.Option.is_Some {V : Type} : (core.option.Option V) → Prop
  | .None => False
  | .Some _ => True
instance {V : Type} (x : (core.option.Option V)) : Decidable (core.option.Option.is_Some x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def core.option.Option.get_Some__0 {V : Type} [Inhabited V] : (core.option.Option V) → V
  | .None => default
  | .Some _0 => _0

-- vrml:spec reclaim_plan.edges_in_range_spec case-studies/terrane-reclaim-plan/reclaim_plan.rs:84:1
def reclaim_plan.edges_in_range_spec (n : Int) (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int))) : Prop :=
  (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) → ((vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) < n) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) < n))))

-- vrml:spec reclaim_plan.closed_spec case-studies/terrane-reclaim-plan/reclaim_plan.rs:107:1
def reclaim_plan.closed_spec (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int))) (retained : (Vermilion.Seq Prop)) : Prop :=
  (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) → (Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i)))))

-- vrml:spec reclaim_plan.has_edge_spec case-studies/terrane-reclaim-plan/reclaim_plan.rs:53:1
def reclaim_plan.has_edge_spec (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int))) (u : Int) (v : Int) : Prop :=
  (∃ (i : Int), ((((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) ∧ (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i) = u)) ∧ (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i) = v)))

-- vrml:spec reclaim_plan.reachable_fuel case-studies/terrane-reclaim-plan/reclaim_plan.rs:58:1
def reclaim_plan.reachable_fuel (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int))) (src : Int) (dst : Int) (fuel : Int) : Prop :=
  if _h_range : 0 ≤ (fuel) then
    (((src = dst) → True) ∧ ((¬ (src = dst)) → (((fuel = 0) → False) ∧ ((¬ (fuel = 0)) → (∃ (mid : Int), (reclaim_plan.has_edge_spec edges src mid ∧ reclaim_plan.reachable_fuel edges mid dst (Vermilion.natClip (fuel - 1))))))))
  else default
termination_by (fuel).toNat
decreasing_by all_goals first | omega | (simp_all; omega) | (simp_all; exact ⟨Int.emod_lt_of_pos _ (by omega), by omega⟩) | (simp_all [Vermilion.iteP]; split_ifs <;> omega) | simp_all

-- vrml:spec reclaim_plan.MAX_NODES case-studies/terrane-reclaim-plan/reclaim_plan.rs:39:1
def reclaim_plan.MAX_NODES : Int :=
  1000000

-- vrml:spec reclaim_plan.MAX_EDGES case-studies/terrane-reclaim-plan/reclaim_plan.rs:40:1
def reclaim_plan.MAX_EDGES : Int :=
  4000000

-- vrml:spec reclaim_plan.MAX_ROOTS case-studies/terrane-reclaim-plan/reclaim_plan.rs:41:1
def reclaim_plan.MAX_ROOTS : Int :=
  65536

-- vrml:spec reclaim_plan.roots_in_range_spec case-studies/terrane-reclaim-plan/reclaim_plan.rs:80:1
def reclaim_plan.roots_in_range_spec (n : Int) (roots : (Vermilion.Seq Int)) : Prop :=
  (∀ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) → (Vermilion.Seq.index roots r < n)))

-- vrml:spec reclaim_plan.protected_closed_spec case-studies/terrane-reclaim-plan/reclaim_plan.rs:90:1
def reclaim_plan.protected_closed_spec (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int))) (reclaimable : (Vermilion.Seq Prop)) : Prop :=
  (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len edges)) → ((¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i))) → (¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i))))))

-- vrml:spec reclaim_plan.admissible_spec case-studies/terrane-reclaim-plan/reclaim_plan.rs:97:1
def reclaim_plan.admissible_spec (n : Int) (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int))) (roots : (Vermilion.Seq Int)) (reclaimable : (Vermilion.Seq Prop)) : Prop :=
  ((((((Vermilion.Seq.len reclaimable = n) ∧ (n ≤ reclaim_plan.MAX_NODES)) ∧ (Vermilion.Seq.len edges ≤ reclaim_plan.MAX_EDGES)) ∧ (Vermilion.Seq.len roots ≤ reclaim_plan.MAX_ROOTS)) ∧ reclaim_plan.roots_in_range_spec n roots) ∧ reclaim_plan.edges_in_range_spec n edges) ∧ reclaim_plan.protected_closed_spec edges reclaimable

-- vrml:spec reclaim_plan.roots_retained_spec case-studies/terrane-reclaim-plan/reclaim_plan.rs:103:1
def reclaim_plan.roots_retained_spec (roots : (Vermilion.Seq Int)) (retained : (Vermilion.Seq Prop)) : Prop :=
  (∀ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) → Vermilion.Seq.index retained (Vermilion.Seq.index roots r)))

-- vrml:spec reclaim_plan.candidates_exact_spec case-studies/terrane-reclaim-plan/reclaim_plan.rs:112:1
def reclaim_plan.candidates_exact_spec (reclaimable : (Vermilion.Seq Prop)) (retained : (Vermilion.Seq Prop)) (candidate : (Vermilion.Seq Prop)) : Prop :=
  (∀ (v : Int), (((0 ≤ v) ∧ (v < Vermilion.Seq.len candidate)) → (Vermilion.Seq.index candidate v ↔ (Vermilion.Seq.index reclaimable v ∧ (¬ Vermilion.Seq.index retained v)))))

-- vrml:spec reclaim_plan.plan_valid_spec case-studies/terrane-reclaim-plan/reclaim_plan.rs:123:1
def reclaim_plan.plan_valid_spec (n : Int) (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int))) (roots : (Vermilion.Seq Int)) (reclaimable : (Vermilion.Seq Prop)) (retained : (Vermilion.Seq Prop)) (candidate : (Vermilion.Seq Prop)) : Prop :=
  ((((reclaim_plan.admissible_spec n edges roots reclaimable ∧ (Vermilion.Seq.len retained = n)) ∧ (Vermilion.Seq.len candidate = n)) ∧ reclaim_plan.roots_retained_spec roots retained) ∧ reclaim_plan.closed_spec edges retained) ∧ reclaim_plan.candidates_exact_spec reclaimable retained candidate

-- vrml:spec reclaim_plan.live_spec case-studies/terrane-reclaim-plan/reclaim_plan.rs:73:1
def reclaim_plan.live_spec (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int))) (roots : (Vermilion.Seq Int)) (v : Int) : Prop :=
  (∃ (r : Int) (fuel : Int), ((0 ≤ fuel) ∧ (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) ∧ reclaim_plan.reachable_fuel edges (Vermilion.Seq.index roots r) v fuel)))

-- vrml:spec reclaim_plan.count_true_upto case-studies/terrane-reclaim-plan/reclaim_plan.rs:346:1
open Classical in
noncomputable def reclaim_plan.count_true_upto (s : (Vermilion.Seq Prop)) (k : Int) : Int :=
  if _h_range : 0 ≤ (k) then
    (if _h : (k ≤ 0) then 0 else Vermilion.natClip ((if _h : Vermilion.Seq.index s (k - 1) then 1 else 0) + reclaim_plan.count_true_upto s (k - 1)))
  else default
termination_by (k).toNat
decreasing_by all_goals first | omega | (simp_all; omega) | (simp_all; exact ⟨Int.emod_lt_of_pos _ (by omega), by omega⟩) | (simp_all [Vermilion.iteP]; split_ifs <;> omega) | simp_all

-- vrml:spec reclaim_plan.count_true case-studies/terrane-reclaim-plan/reclaim_plan.rs:356:1
noncomputable def reclaim_plan.count_true (s : (Vermilion.Seq Prop)) : Int :=
  reclaim_plan.count_true_upto s (Vermilion.Seq.len s)

-- vrml:spec reclaim_plan.LENGTH_MISMATCH case-studies/terrane-reclaim-plan/reclaim_plan.rs:44:1
def reclaim_plan.LENGTH_MISMATCH : Int :=
  1

-- vrml:spec reclaim_plan.PLANNED case-studies/terrane-reclaim-plan/reclaim_plan.rs:43:1
def reclaim_plan.PLANNED : Int :=
  0

-- vrml:spec reclaim_plan.TOO_LARGE case-studies/terrane-reclaim-plan/reclaim_plan.rs:45:1
def reclaim_plan.TOO_LARGE : Int :=
  2

-- vrml:spec reclaim_plan.ROOT_OUT_OF_RANGE case-studies/terrane-reclaim-plan/reclaim_plan.rs:46:1
def reclaim_plan.ROOT_OUT_OF_RANGE : Int :=
  3

-- vrml:spec reclaim_plan.EDGE_OUT_OF_RANGE case-studies/terrane-reclaim-plan/reclaim_plan.rs:47:1
def reclaim_plan.EDGE_OUT_OF_RANGE : Int :=
  4

-- vrml:spec reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE case-studies/terrane-reclaim-plan/reclaim_plan.rs:48:1
def reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE : Int :=
  5

-- vrml:spec reclaim_plan.retained_sound_spec case-studies/terrane-reclaim-plan/reclaim_plan.rs:406:1
def reclaim_plan.retained_sound_spec (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int))) (roots : (Vermilion.Seq Int)) (retained : (Vermilion.Seq Prop)) : Prop :=
  (∀ (v : Int), ((((0 ≤ v) ∧ (v < Vermilion.Seq.len retained)) ∧ Vermilion.Seq.index retained v) → reclaim_plan.live_spec edges roots v))

-- vrml:spec reclaim_plan.ROUND_LIMIT case-studies/terrane-reclaim-plan/reclaim_plan.rs:49:1
def reclaim_plan.ROUND_LIMIT : Int :=
  6

-- vrml:spec reclaim_plan.edges_subset_spec case-studies/terrane-reclaim-plan/reclaim_plan.rs:589:1
def reclaim_plan.edges_subset_spec (a : (Vermilion.Seq (vermilion.tuple_2 Int Int))) (b : (Vermilion.Seq (vermilion.tuple_2 Int Int))) : Prop :=
  (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len a)) → reclaim_plan.has_edge_spec b (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index a i)) (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index a i))))

-- vrml:spec reclaim_plan.roots_subset_spec case-studies/terrane-reclaim-plan/reclaim_plan.rs:596:1
def reclaim_plan.roots_subset_spec (a : (Vermilion.Seq Int)) (b : (Vermilion.Seq Int)) : Prop :=
  (∀ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len a)) → (∃ (s : Int), (((0 ≤ s) ∧ (s < Vermilion.Seq.len b)) ∧ (Vermilion.Seq.index b s = Vermilion.Seq.index a r)))))

-- vrml:spec reclaim_plan.reclaimable_subset_spec case-studies/terrane-reclaim-plan/reclaim_plan.rs:602:1
def reclaim_plan.reclaimable_subset_spec (b : (Vermilion.Seq Prop)) (a : (Vermilion.Seq Prop)) : Prop :=
  (Vermilion.Seq.len b = Vermilion.Seq.len a) ∧ (∀ (v : Int), ((((0 ≤ v) ∧ (v < Vermilion.Seq.len b)) ∧ Vermilion.Seq.index b v) → Vermilion.Seq.index a v))

-- vrml:spec reclaim_plan.prefix_eq_spec case-studies/terrane-reclaim-plan/reclaim_plan.rs:786:1
def reclaim_plan.prefix_eq_spec (a : (Vermilion.Seq Int)) (b : (Vermilion.Seq Int)) (p : Int) : Prop :=
  (∀ (k : Int), (((0 ≤ k) ∧ (k < p)) → (Vermilion.Seq.index a k = Vermilion.Seq.index b k)))

-- vrml:spec reclaim_plan.key_lt_at_spec case-studies/terrane-reclaim-plan/reclaim_plan.rs:792:1
def reclaim_plan.key_lt_at_spec (a : (Vermilion.Seq Int)) (b : (Vermilion.Seq Int)) (p : Int) : Prop :=
  ((((0 ≤ p) ∧ (p ≤ Vermilion.Seq.len a)) ∧ (p ≤ Vermilion.Seq.len b)) ∧ reclaim_plan.prefix_eq_spec a b p) ∧ (((p = Vermilion.Seq.len a) ∧ (p < Vermilion.Seq.len b)) ∨ (((p < Vermilion.Seq.len a) ∧ (p < Vermilion.Seq.len b)) ∧ (Vermilion.Seq.index a p < Vermilion.Seq.index b p)))

-- vrml:spec reclaim_plan.key_lt_spec case-studies/terrane-reclaim-plan/reclaim_plan.rs:799:1
def reclaim_plan.key_lt_spec (a : (Vermilion.Seq Int)) (b : (Vermilion.Seq Int)) : Prop :=
  (∃ (p : Int), reclaim_plan.key_lt_at_spec a b p)

-- vrml:spec reclaim_plan.keys_sorted_spec case-studies/terrane-reclaim-plan/reclaim_plan.rs:840:1
def reclaim_plan.keys_sorted_spec (keys : (Vermilion.Seq (Vermilion.Seq Int))) : Prop :=
  (∀ (i : Int) (j : Int), ((((0 ≤ i) ∧ (i < j)) ∧ (j < Vermilion.Seq.len keys)) → reclaim_plan.key_lt_spec (Vermilion.Seq.index keys i) (Vermilion.Seq.index keys j)))

-- vrml:spec reclaim_plan.edge_names_ref_spec case-studies/terrane-reclaim-plan/reclaim_plan.rs:1080:1
def reclaim_plan.edge_names_ref_spec (keys : (Vermilion.Seq (Vermilion.Seq Int))) (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int)))) (e : (vermilion.tuple_2 Int Int)) : Prop :=
  (((vermilion.tuple_2.get_tuple_2__0 e < Vermilion.Seq.len keys) ∧ (vermilion.tuple_2.get_tuple_2__1 e < Vermilion.Seq.len keys)) ∧ (vermilion.tuple_2.get_tuple_2__0 e < Vermilion.Seq.len refs)) ∧ (∃ (q : Int), (((0 ≤ q) ∧ (q < Vermilion.Seq.len (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 e)))) ∧ (Vermilion.Seq.index (Vermilion.Seq.index refs (vermilion.tuple_2.get_tuple_2__0 e)) q = Vermilion.Seq.index keys (vermilion.tuple_2.get_tuple_2__1 e))))

-- vrml:spec reclaim_plan.ref_resolved_spec case-studies/terrane-reclaim-plan/reclaim_plan.rs:1086:1
def reclaim_plan.ref_resolved_spec (keys : (Vermilion.Seq (Vermilion.Seq Int))) (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int)))) (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int))) (i : Int) (j : Int) : Prop :=
  (∃ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (Vermilion.Seq.index keys t = Vermilion.Seq.index (Vermilion.Seq.index refs i) j)) ∧ reclaim_plan.has_edge_spec edges i t))

-- vrml:spec reclaim_plan.edges_match_refs_spec case-studies/terrane-reclaim-plan/reclaim_plan.rs:881:1
def reclaim_plan.edges_match_refs_spec (keys : (Vermilion.Seq (Vermilion.Seq Int))) (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int)))) (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int))) : Prop :=
  ((Vermilion.Seq.len refs = Vermilion.Seq.len keys) ∧ (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len edges)) → reclaim_plan.edge_names_ref_spec keys refs (Vermilion.Seq.index edges k)))) ∧ (∀ (i : Int) (j : Int), ((((0 ≤ i) ∧ (i < Vermilion.Seq.len refs)) ∧ ((0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index refs i)))) → reclaim_plan.ref_resolved_spec keys refs edges i j))

-- vrml:spec reclaim_plan.key_reach_fuel case-studies/terrane-reclaim-plan/reclaim_plan.rs:856:1
def reclaim_plan.key_reach_fuel (keys : (Vermilion.Seq (Vermilion.Seq Int))) (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int)))) (a : (Vermilion.Seq Int)) (b : (Vermilion.Seq Int)) (fuel : Int) : Prop :=
  if _h_range : 0 ≤ (fuel) then
    (((a = b) → True) ∧ ((¬ (a = b)) → (((fuel = 0) → False) ∧ ((¬ (fuel = 0)) → (∃ (i : Int) (j : Int), ((((((0 ≤ i) ∧ (i < Vermilion.Seq.len keys)) ∧ (i < Vermilion.Seq.len refs)) ∧ (Vermilion.Seq.index keys i = a)) ∧ ((0 ≤ j) ∧ (j < Vermilion.Seq.len (Vermilion.Seq.index refs i)))) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index (Vermilion.Seq.index refs i) j) b (Vermilion.natClip (fuel - 1))))))))
  else default
termination_by (fuel).toNat
decreasing_by all_goals first | omega | (simp_all; omega) | (simp_all; exact ⟨Int.emod_lt_of_pos _ (by omega), by omega⟩) | (simp_all [Vermilion.iteP]; split_ifs <;> omega) | simp_all

-- vrml:spec reclaim_plan.roots_match_keys_spec case-studies/terrane-reclaim-plan/reclaim_plan.rs:890:1
def reclaim_plan.roots_match_keys_spec (keys : (Vermilion.Seq (Vermilion.Seq Int))) (root_keys : (Vermilion.Seq (Vermilion.Seq Int))) (roots : (Vermilion.Seq Int)) : Prop :=
  (Vermilion.Seq.len roots = Vermilion.Seq.len root_keys) ∧ (∀ (r : Int), (((0 ≤ r) ∧ (r < Vermilion.Seq.len roots)) → ((Vermilion.Seq.index roots r < Vermilion.Seq.len keys) ∧ (Vermilion.Seq.index keys (Vermilion.Seq.index roots r) = Vermilion.Seq.index root_keys r))))

-- vrml:spec reclaim_plan.projection_valid_spec case-studies/terrane-reclaim-plan/reclaim_plan.rs:896:1
def reclaim_plan.projection_valid_spec (keys : (Vermilion.Seq (Vermilion.Seq Int))) (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int)))) (root_keys : (Vermilion.Seq (Vermilion.Seq Int))) (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int))) (roots : (Vermilion.Seq Int)) : Prop :=
  (reclaim_plan.keys_sorted_spec keys ∧ reclaim_plan.edges_match_refs_spec keys refs edges) ∧ reclaim_plan.roots_match_keys_spec keys root_keys roots

-- vrml:spec reclaim_plan.key_live_spec case-studies/terrane-reclaim-plan/reclaim_plan.rs:872:1
def reclaim_plan.key_live_spec (keys : (Vermilion.Seq (Vermilion.Seq Int))) (refs : (Vermilion.Seq (Vermilion.Seq (Vermilion.Seq Int)))) (root_keys : (Vermilion.Seq (Vermilion.Seq Int))) (b : (Vermilion.Seq Int)) : Prop :=
  (∃ (r : Int) (fuel : Int), ((0 ≤ fuel) ∧ (((0 ≤ r) ∧ (r < Vermilion.Seq.len root_keys)) ∧ reclaim_plan.key_reach_fuel keys refs (Vermilion.Seq.index root_keys r) b fuel)))

-- vrml:spec reclaim_plan.prefix_of_spec case-studies/terrane-reclaim-plan/reclaim_plan.rs:1090:1
def reclaim_plan.prefix_of_spec (a : (Vermilion.Seq (vermilion.tuple_2 Int Int))) (b : (Vermilion.Seq (vermilion.tuple_2 Int Int))) : Prop :=
  (Vermilion.Seq.len a ≤ Vermilion.Seq.len b) ∧ (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len a)) → (Vermilion.Seq.index b k = Vermilion.Seq.index a k)))

-- vrml:spec reclaim_plan.key_marked_spec case-studies/terrane-reclaim-plan/reclaim_plan.rs:1254:1
def reclaim_plan.key_marked_spec (keys : (Vermilion.Seq (Vermilion.Seq Int))) (mask : (Vermilion.Seq Prop)) (p : (Vermilion.Seq Int)) : Prop :=
  (∃ (t : Int), (((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ (t < Vermilion.Seq.len mask)) ∧ Vermilion.Seq.index mask t) ∧ (Vermilion.Seq.index keys t = p)))

-- vrml:spec reclaim_plan.mask_matches_paths_spec case-studies/terrane-reclaim-plan/reclaim_plan.rs:1246:1
def reclaim_plan.mask_matches_paths_spec (keys : (Vermilion.Seq (Vermilion.Seq Int))) (paths : (Vermilion.Seq (Vermilion.Seq Int))) (mask : (Vermilion.Seq Prop)) : Prop :=
  ((Vermilion.Seq.len mask = Vermilion.Seq.len keys) ∧ (∀ (t : Int), ((((0 ≤ t) ∧ (t < Vermilion.Seq.len keys)) ∧ Vermilion.Seq.index mask t) → (∃ (s : Int), (((0 ≤ s) ∧ (s < Vermilion.Seq.len paths)) ∧ (Vermilion.Seq.index paths s = Vermilion.Seq.index keys t)))))) ∧ (∀ (s : Int), (((0 ≤ s) ∧ (s < Vermilion.Seq.len paths)) → reclaim_plan.key_marked_spec keys mask (Vermilion.Seq.index paths s)))

