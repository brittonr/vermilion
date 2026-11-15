import Vermilion.Obligations
import active_bitmap_set.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace active_bitmap_set.active_bitmap_set

-- vrml:begin active_bitmap_set.active_bitmap_set.ensures_0_0 cf1e634a5522d0fa
/--
Generated VC `active_bitmap_set.active_bitmap_set.ensures_0_0`.

- Rust source: `case-studies/percolator/active_bitmap_set.rs:37:9-37:25`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0_0`
- Statement hash: `cf1e634a5522d0fa`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩
-/
def ensures_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_set.rs"
  startLine := 37
  startColumn := 9
  endLine := 37
  endColumn := 25
  assertId := "0_0"
  functionName := "active_bitmap_set.active_bitmap_set"
  kind := "ensures"
  statementHash := "cf1e634a5522d0fa"
}
@[vrml_obligation] theorem ensures_0_0
    (bitmap : (Vermilion.Seq Int))
    (leg_slot_index : Int)
    (requires_0 : Vermilion.Seq.len bitmap = 1)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (requires_2 : (0 ≤ leg_slot_index) ∧ (leg_slot_index < Vermilion.usizeMod))
    (requires_3 : leg_slot_index < active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N)
    (branch_0 : leg_slot_index ≥ active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N) :
    core.result.Result.Err (T := vermilion.tuple_0) active_bitmap_set.V16Error.InvalidConfig = core.result.Result.Ok (E := active_bitmap_set.V16Error) vermilion.tuple_0.tuple_0 := by
  vrml [active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N]
-- vrml:end active_bitmap_set.active_bitmap_set.ensures_0_0

-- vrml:begin active_bitmap_set.active_bitmap_set.ensures_0_1 a2178a392bb8dea3
/--
Generated VC `active_bitmap_set.active_bitmap_set.ensures_0_1`.

- Rust source: `case-studies/percolator/active_bitmap_set.rs:38:9-38:70`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0_1`
- Statement hash: `a2178a392bb8dea3`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩
-/
def ensures_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_set.rs"
  startLine := 38
  startColumn := 9
  endLine := 38
  endColumn := 70
  assertId := "0_1"
  functionName := "active_bitmap_set.active_bitmap_set"
  kind := "ensures"
  statementHash := "a2178a392bb8dea3"
}
@[vrml_obligation] theorem ensures_0_1
    (bitmap : (Vermilion.Seq Int))
    (leg_slot_index : Int)
    (requires_0 : Vermilion.Seq.len bitmap = 1)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (requires_2 : (0 ≤ leg_slot_index) ∧ (leg_slot_index < Vermilion.usizeMod))
    (requires_3 : leg_slot_index < active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N)
    (branch_0 : leg_slot_index ≥ active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N) :
    Vermilion.Seq.index bitmap 0 = Vermilion.Bits.bor 64 (Vermilion.Seq.index bitmap 0) (Vermilion.Bits.shl 64 1 leg_slot_index) := by
  vrml [active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N]
-- vrml:end active_bitmap_set.active_bitmap_set.ensures_0_1

-- vrml:begin active_bitmap_set.active_bitmap_set.assert_1 712dc16014510dd0
/--
Generated VC `active_bitmap_set.active_bitmap_set.assert_1`.

- Rust source: `case-studies/percolator/active_bitmap_set.rs:43:16-43:35`
- Rust/SST construct: possible division by zero
- AssertId: `1`
- Statement hash: `712dc16014510dd0`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_set.rs"
  startLine := 43
  startColumn := 16
  endLine := 43
  endColumn := 35
  assertId := "1"
  functionName := "active_bitmap_set.active_bitmap_set"
  kind := "assert"
  statementHash := "712dc16014510dd0"
}
@[vrml_obligation] theorem assert_1
    (bitmap : (Vermilion.Seq Int))
    (leg_slot_index : Int)
    (requires_0 : Vermilion.Seq.len bitmap = 1)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (requires_2 : (0 ≤ leg_slot_index) ∧ (leg_slot_index < Vermilion.usizeMod))
    (requires_3 : leg_slot_index < active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N)
    (then_0_assume_5 : (leg_slot_index ≥ active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (then_0_assume_6 : (leg_slot_index ≥ active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N) → False) :
    64 ≠ 0 := by
  vrml [active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N]
-- vrml:end active_bitmap_set.active_bitmap_set.assert_1

-- vrml:begin active_bitmap_set.active_bitmap_set.assert_2 6e3754bf7bf8d158
/--
Generated VC `active_bitmap_set.active_bitmap_set.assert_2`.

- Rust source: `case-studies/percolator/active_bitmap_set.rs:44:15-44:34`
- Rust/SST construct: possible division by zero
- AssertId: `2`
- Statement hash: `6e3754bf7bf8d158`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_set.rs"
  startLine := 44
  startColumn := 15
  endLine := 44
  endColumn := 34
  assertId := "2"
  functionName := "active_bitmap_set.active_bitmap_set"
  kind := "assert"
  statementHash := "6e3754bf7bf8d158"
}
@[vrml_obligation] theorem assert_2
    (bitmap : (Vermilion.Seq Int))
    (leg_slot_index : Int)
    (requires_0 : Vermilion.Seq.len bitmap = 1)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (requires_2 : (0 ≤ leg_slot_index) ∧ (leg_slot_index < Vermilion.usizeMod))
    (requires_3 : leg_slot_index < active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N)
    (then_0_assume_5 : (leg_slot_index ≥ active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (then_0_assume_6 : (leg_slot_index ≥ active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (assert_1 : 64 ≠ 0) :
    64 ≠ 0 := by
  vrml [active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N]
-- vrml:end active_bitmap_set.active_bitmap_set.assert_2

-- vrml:begin active_bitmap_set.active_bitmap_set.assert_3 e2f07b50b6bcfca4
/--
Generated VC `active_bitmap_set.active_bitmap_set.assert_3`.

- Rust source: `case-studies/percolator/active_bitmap_set.rs:45:21-45:32`
- Rust/SST construct: possible bit shift underflow/overflow
- AssertId: `3`
- Statement hash: `e2f07b50b6bcfca4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_set.rs"
  startLine := 45
  startColumn := 21
  endLine := 45
  endColumn := 32
  assertId := "3"
  functionName := "active_bitmap_set.active_bitmap_set"
  kind := "assert"
  statementHash := "e2f07b50b6bcfca4"
}
@[vrml_obligation] theorem assert_3
    (bitmap : (Vermilion.Seq Int))
    (leg_slot_index : Int)
    (requires_0 : Vermilion.Seq.len bitmap = 1)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (requires_2 : (0 ≤ leg_slot_index) ∧ (leg_slot_index < Vermilion.usizeMod))
    (requires_3 : leg_slot_index < active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N)
    (then_0_assume_5 : (leg_slot_index ≥ active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (then_0_assume_6 : (leg_slot_index ≥ active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (assert_1 : 64 ≠ 0)
    (assert_2 : 64 ≠ 0) :
    (0 ≤ (Vermilion.emod (leg_slot_index % 64) Vermilion.usizeMod)) ∧ ((Vermilion.emod (leg_slot_index % 64) Vermilion.usizeMod) < 64) := by
  vrml [active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N]
-- vrml:end active_bitmap_set.active_bitmap_set.assert_3

-- vrml:begin active_bitmap_set.active_bitmap_set.assert_4 ed037a16df17ad07
/--
Generated VC `active_bitmap_set.active_bitmap_set.assert_4`.

- Rust source: `case-studies/percolator/active_bitmap_set.rs:45:5-45:17`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `4`
- Statement hash: `ed037a16df17ad07`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_set.rs"
  startLine := 45
  startColumn := 5
  endLine := 45
  endColumn := 17
  assertId := "4"
  functionName := "active_bitmap_set.active_bitmap_set"
  kind := "assert"
  statementHash := "ed037a16df17ad07"
}
@[vrml_obligation] theorem assert_4
    (bitmap : (Vermilion.Seq Int))
    (leg_slot_index : Int)
    (requires_0 : Vermilion.Seq.len bitmap = 1)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (requires_2 : (0 ≤ leg_slot_index) ∧ (leg_slot_index < Vermilion.usizeMod))
    (requires_3 : leg_slot_index < active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N)
    (then_0_assume_5 : (leg_slot_index ≥ active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (then_0_assume_6 : (leg_slot_index ≥ active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (assert_1 : 64 ≠ 0)
    (assert_2 : 64 ≠ 0)
    (assert_3 : (0 ≤ (Vermilion.emod (leg_slot_index % 64) Vermilion.usizeMod)) ∧ ((Vermilion.emod (leg_slot_index % 64) Vermilion.usizeMod) < 64)) :
    (0 ≤ (Vermilion.emod (leg_slot_index / 64) Vermilion.usizeMod)) ∧ ((Vermilion.emod (leg_slot_index / 64) Vermilion.usizeMod) < Vermilion.Seq.len bitmap) := by
  vrml [active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N]
-- vrml:end active_bitmap_set.active_bitmap_set.assert_4

-- vrml:begin active_bitmap_set.active_bitmap_set.ensures_5_0 12dae4b8cbac22da
/--
Generated VC `active_bitmap_set.active_bitmap_set.ensures_5_0`.

- Rust source: `case-studies/percolator/active_bitmap_set.rs:37:9-37:25`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `5_0`
- Statement hash: `12dae4b8cbac22da`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩
-/
def ensures_5_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_set.rs"
  startLine := 37
  startColumn := 9
  endLine := 37
  endColumn := 25
  assertId := "5_0"
  functionName := "active_bitmap_set.active_bitmap_set"
  kind := "ensures"
  statementHash := "12dae4b8cbac22da"
}
@[vrml_obligation] theorem ensures_5_0
    (bitmap : (Vermilion.Seq Int))
    (leg_slot_index : Int)
    (requires_0 : Vermilion.Seq.len bitmap = 1)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (requires_2 : (0 ≤ leg_slot_index) ∧ (leg_slot_index < Vermilion.usizeMod))
    (requires_3 : leg_slot_index < active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N)
    (then_0_assume_5 : (leg_slot_index ≥ active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (then_0_assume_6 : (leg_slot_index ≥ active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (assert_1 : 64 ≠ 0)
    (assert_2 : 64 ≠ 0)
    (assert_3 : (0 ≤ (Vermilion.emod (leg_slot_index % 64) Vermilion.usizeMod)) ∧ ((Vermilion.emod (leg_slot_index % 64) Vermilion.usizeMod) < 64))
    (assert_4 : (0 ≤ (Vermilion.emod (leg_slot_index / 64) Vermilion.usizeMod)) ∧ ((Vermilion.emod (leg_slot_index / 64) Vermilion.usizeMod) < Vermilion.Seq.len bitmap)) :
    core.result.Result.Ok (E := active_bitmap_set.V16Error) vermilion.tuple_0.tuple_0 = core.result.Result.Ok (E := active_bitmap_set.V16Error) vermilion.tuple_0.tuple_0 := by
  vrml [active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N]
-- vrml:end active_bitmap_set.active_bitmap_set.ensures_5_0

-- vrml:begin active_bitmap_set.active_bitmap_set.ensures_5_1 232d7e49ecb0f15c
/--
Generated VC `active_bitmap_set.active_bitmap_set.ensures_5_1`.

- Rust source: `case-studies/percolator/active_bitmap_set.rs:38:9-38:70`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `5_1`
- Statement hash: `232d7e49ecb0f15c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩
-/
def ensures_5_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_set.rs"
  startLine := 38
  startColumn := 9
  endLine := 38
  endColumn := 70
  assertId := "5_1"
  functionName := "active_bitmap_set.active_bitmap_set"
  kind := "ensures"
  statementHash := "232d7e49ecb0f15c"
}
@[vrml_obligation] theorem ensures_5_1
    (bitmap : (Vermilion.Seq Int))
    (leg_slot_index : Int)
    (requires_0 : Vermilion.Seq.len bitmap = 1)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (requires_2 : (0 ≤ leg_slot_index) ∧ (leg_slot_index < Vermilion.usizeMod))
    (requires_3 : leg_slot_index < active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N)
    (then_0_assume_5 : (leg_slot_index ≥ active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (then_0_assume_6 : (leg_slot_index ≥ active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (assert_1 : 64 ≠ 0)
    (assert_2 : 64 ≠ 0)
    (assert_3 : (0 ≤ (Vermilion.emod (leg_slot_index % 64) Vermilion.usizeMod)) ∧ ((Vermilion.emod (leg_slot_index % 64) Vermilion.usizeMod) < 64))
    (assert_4 : (0 ≤ (Vermilion.emod (leg_slot_index / 64) Vermilion.usizeMod)) ∧ ((Vermilion.emod (leg_slot_index / 64) Vermilion.usizeMod) < Vermilion.Seq.len bitmap)) :
    Vermilion.Seq.index (Vermilion.Seq.update bitmap (Vermilion.emod (leg_slot_index / 64) Vermilion.usizeMod) (Vermilion.Bits.bor 64 (Vermilion.Seq.index bitmap (Vermilion.emod (leg_slot_index / 64) Vermilion.usizeMod)) (Vermilion.Bits.shl 64 1 (Vermilion.emod (leg_slot_index % 64) Vermilion.usizeMod)))) 0 = Vermilion.Bits.bor 64 (Vermilion.Seq.index bitmap 0) (Vermilion.Bits.shl 64 1 leg_slot_index) := by
  -- Interactive discharge (first-class per project policy): the slot
  -- index is below V16_MAX_PORTFOLIO_ASSETS_N = 16 < 64, so the limb
  -- index is 0 and both machine-width wraps are identities; the update
  -- is then read back at the written position.
  have hlt : leg_slot_index < 16 := by
    simpa [active_bitmap_set.V16_MAX_PORTFOLIO_ASSETS_N] using requires_3
  obtain ⟨hlo, -⟩ := requires_2
  have h0 : leg_slot_index / 64 = 0 := by omega
  have hw := Vermilion.usizeMod_cases'
  have h1 : Vermilion.emod (leg_slot_index % 64) Vermilion.usizeMod = leg_slot_index := by
    rw [Vermilion.emod_usizeMod_of_lt (by omega) (by omega)]; omega
  have h2 : Vermilion.emod 0 Vermilion.usizeMod = 0 :=
    Vermilion.emod_usizeMod_of_lt le_rfl Vermilion.usizeMod_pos
  simp only [h0, h1, h2]
  norm_num
  exact Vermilion.Seq.index_update_same _ _ _ (by omega) (by omega)
-- vrml:end active_bitmap_set.active_bitmap_set.ensures_5_1

end active_bitmap_set.active_bitmap_set

