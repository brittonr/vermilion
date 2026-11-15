import Vermilion.Obligations
import reclaim_plan.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

-- vrml:begin reclaim_plan.key_lt.evidence_decidable_prop dc622666a109ee0a
/--
Generated typeclass evidence obligation `reclaim_plan.key_lt.evidence_decidable_prop`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:1006:12-1006:16`
- Evidence origin: Rust `bool` represented as Lean `Prop` requires explicit decision evidence
- Target: `Decidable p`
- Consumers: reclaim_plan.key_lt.call_requires_2, reclaim_plan.key_lt.call_requires_3, reclaim_plan.key_lt.assert_4, reclaim_plan.key_lt.invariant_preserve_0_0, reclaim_plan.key_lt.invariant_preserve_0_1, reclaim_plan.key_lt.invariant_preserve_0_2, reclaim_plan.key_lt.invariant_preserve_0_3, reclaim_plan.key_lt.assert_0_decreases, reclaim_plan.key_lt.call_requires_9, reclaim_plan.key_lt.call_requires_10, reclaim_plan.key_lt.assert_11, reclaim_plan.key_lt.assert_12, reclaim_plan.key_lt.assert_13, reclaim_plan.key_lt.ensures_14
- Statement hash: `dc622666a109ee0a`
-/
def reclaim_plan_key_lt_evidence_decidable_prop_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 1006
  startColumn := 12
  endLine := 1006
  endColumn := 16
  assertId := "typeclass-evidence"
  functionName := "reclaim_plan.key_lt"
  kind := "typeclass_evidence"
  statementHash := "dc622666a109ee0a"
}
@[vrml_evidence] noncomputable instance reclaim_plan_key_lt_evidence_decidable_prop
    (p : Prop) :
    Decidable p := by
  -- TODO(vermilion): provide this class dictionary interactively.
  sorry
-- vrml:end reclaim_plan.key_lt.evidence_decidable_prop

