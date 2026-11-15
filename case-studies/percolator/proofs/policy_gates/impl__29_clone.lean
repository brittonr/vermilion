import Vermilion.Obligations
import policy_gates.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace policy_gates.impl__29.clone

-- vrml:begin policy_gates.impl__29.clone.ensures_0 21179ae86b055d0e
/--
Generated VC `policy_gates.impl__29.clone.ensures_0`.

- Rust source: `case-studies/percolator/policy_gates.rs:46:10-46:15`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `21179ae86b055d0e`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/policy_gates.rs"
  startLine := 46
  startColumn := 10
  endLine := 46
  endColumn := 15
  assertId := "0"
  functionName := "policy_gates.impl__29.clone"
  kind := "ensures"
  statementHash := "21179ae86b055d0e"
}
@[vrml_obligation] theorem ensures_0
    (self : policy_gates.AutoCrankPlanV16)
    (requires_0 : (0 ≤ core.option.Option.get_Some__0 (policy_gates.AutoCrankPlanV16.get_RefreshAccount_asset_index self)) ∧ (core.option.Option.get_Some__0 (policy_gates.AutoCrankPlanV16.get_RefreshAccount_asset_index self) < Vermilion.usizeMod))
    (requires_1 : (0 ≤ policy_gates.AutoCrankPlanV16.get_SettleBChunk_asset_index self) ∧ (policy_gates.AutoCrankPlanV16.get_SettleBChunk_asset_index self < Vermilion.usizeMod))
    (requires_2 : (0 ≤ policy_gates.AutoCrankPlanV16.get_Liquidate_asset_index self) ∧ (policy_gates.AutoCrankPlanV16.get_Liquidate_asset_index self < Vermilion.usizeMod)) :
    self = self := by
  vrml
-- vrml:end policy_gates.impl__29.clone.ensures_0

end policy_gates.impl__29.clone

