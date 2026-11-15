import Vermilion.Obligations

/-!
`vrml_first` (docs/vcgen.md, recursive unfolds): the attempt combinator for
obligations that unfold recursive spec fns. Each alternative runs against a
fresh heartbeat baseline and heartbeat exhaustion counts as that
alternative's failure; the last alternative's error is the one reported.
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

-- A later alternative closes the goal after an earlier one fails.
example (a b : Int) (h : a ≤ b) : a ≤ b := by
  vrml_first
    | exact absurd h (by omega)
    | exact h

-- An alternative that leaves goals open counts as failed, not as success.
example (p q : Prop) (hp : p) (hq : q) : p ∧ q := by
  vrml_first
    | constructor
    | exact ⟨hp, hq⟩

-- A heartbeat-exhausting alternative does not starve the next one: core
-- `first` would rethrow the deterministic timeout and abort here.
set_option maxHeartbeats 2000 in
example : (2 : Nat) ^ 10 = 1024 := by
  vrml_first
    | (repeat (first | rfl | simp only [Nat.pow_succ]); fail)
    | (iterate 400 (try simp only [Nat.add_zero]); fail)
    | decide

-- When every alternative fails, the last one's own error is reported (not a
-- bare "unsolved goals" from a rolled-back recovery).
/--
error: omega could not prove the goal:
No usable constraints found. You may need to unfold definitions so `omega` can see linear arithmetic facts about `Nat` and `Int`, which may also involve multiplication, division, and modular remainder by constants.
-/
#guard_msgs in
example (p : Prop) : p := by
  vrml_first
    | exact absurd trivial (by trivial)
    | omega
