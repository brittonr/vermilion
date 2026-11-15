import Vermilion.Obligations
import active_bitmap_get.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace active_bitmap_get.active_bitmap_get

-- vrml:begin active_bitmap_get.active_bitmap_get.ensures_0_0 b3fee5fa54072c2b
/--
Generated VC `active_bitmap_get.active_bitmap_get.ensures_0_0`.

- Rust source: `case-studies/percolator/active_bitmap_get.rs:36:9-36:65`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0_0`
- Statement hash: `b3fee5fa54072c2b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩
-/
def ensures_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_get.rs"
  startLine := 36
  startColumn := 9
  endLine := 36
  endColumn := 65
  assertId := "0_0"
  functionName := "active_bitmap_get.active_bitmap_get"
  kind := "ensures"
  statementHash := "b3fee5fa54072c2b"
}
@[vrml_obligation] theorem ensures_0_0
    (bitmap : (Vermilion.Seq Int))
    (leg_slot_index : Int)
    (requires_0 : Vermilion.Seq.len bitmap = 1)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (requires_2 : (0 ≤ leg_slot_index) ∧ (leg_slot_index < Vermilion.usizeMod))
    (branch_0 : leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) :
    (leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → (¬ False) := by
  vrml [active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N, active_bitmap_get.V16_ACTIVE_BITMAP_WORDS]
-- vrml:end active_bitmap_get.active_bitmap_get.ensures_0_0

-- vrml:begin active_bitmap_get.active_bitmap_get.ensures_0_1 e4a013f2dcd06c2a
/--
Generated VC `active_bitmap_get.active_bitmap_get.ensures_0_1`.

- Rust source: `case-studies/percolator/active_bitmap_get.rs:37:9-39:10`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0_1`
- Statement hash: `e4a013f2dcd06c2a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩
-/
def ensures_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_get.rs"
  startLine := 37
  startColumn := 9
  endLine := 39
  endColumn := 10
  assertId := "0_1"
  functionName := "active_bitmap_get.active_bitmap_get"
  kind := "ensures"
  statementHash := "e4a013f2dcd06c2a"
}
@[vrml_obligation] theorem ensures_0_1
    (bitmap : (Vermilion.Seq Int))
    (leg_slot_index : Int)
    (requires_0 : Vermilion.Seq.len bitmap = 1)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (requires_2 : (0 ≤ leg_slot_index) ∧ (leg_slot_index < Vermilion.usizeMod))
    (branch_0 : leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) :
    (leg_slot_index < active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → (False ↔ (¬ (Vermilion.Bits.band 64 (Vermilion.Bits.shr 64 (Vermilion.Seq.index bitmap (leg_slot_index / 64)) (leg_slot_index % 64)) 1 = 0))) := by
  vrml [active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N, active_bitmap_get.V16_ACTIVE_BITMAP_WORDS]
-- vrml:end active_bitmap_get.active_bitmap_get.ensures_0_1

-- vrml:begin active_bitmap_get.active_bitmap_get.assert_1 c23b369077bb8562
/--
Generated VC `active_bitmap_get.active_bitmap_get.assert_1`.

- Rust source: `case-studies/percolator/active_bitmap_get.rs:44:16-44:35`
- Rust/SST construct: possible division by zero
- AssertId: `1`
- Statement hash: `c23b369077bb8562`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_get.rs"
  startLine := 44
  startColumn := 16
  endLine := 44
  endColumn := 35
  assertId := "1"
  functionName := "active_bitmap_get.active_bitmap_get"
  kind := "assert"
  statementHash := "c23b369077bb8562"
}
@[vrml_obligation] theorem assert_1
    (bitmap : (Vermilion.Seq Int))
    (leg_slot_index : Int)
    (requires_0 : Vermilion.Seq.len bitmap = 1)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (requires_2 : (0 ≤ leg_slot_index) ∧ (leg_slot_index < Vermilion.usizeMod))
    (then_0_assume_4 : (leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (then_0_assume_5 : (leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → False) :
    64 ≠ 0 := by
  vrml [active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N, active_bitmap_get.V16_ACTIVE_BITMAP_WORDS]
-- vrml:end active_bitmap_get.active_bitmap_get.assert_1

-- vrml:begin active_bitmap_get.active_bitmap_get.assert_2 67eb9d4d5d3be616
/--
Generated VC `active_bitmap_get.active_bitmap_get.assert_2`.

- Rust source: `case-studies/percolator/active_bitmap_get.rs:45:15-45:34`
- Rust/SST construct: possible division by zero
- AssertId: `2`
- Statement hash: `67eb9d4d5d3be616`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_get.rs"
  startLine := 45
  startColumn := 15
  endLine := 45
  endColumn := 34
  assertId := "2"
  functionName := "active_bitmap_get.active_bitmap_get"
  kind := "assert"
  statementHash := "67eb9d4d5d3be616"
}
@[vrml_obligation] theorem assert_2
    (bitmap : (Vermilion.Seq Int))
    (leg_slot_index : Int)
    (requires_0 : Vermilion.Seq.len bitmap = 1)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (requires_2 : (0 ≤ leg_slot_index) ∧ (leg_slot_index < Vermilion.usizeMod))
    (then_0_assume_4 : (leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (then_0_assume_5 : (leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (assert_1 : 64 ≠ 0) :
    64 ≠ 0 := by
  vrml [active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N, active_bitmap_get.V16_ACTIVE_BITMAP_WORDS]
-- vrml:end active_bitmap_get.active_bitmap_get.assert_2

-- vrml:begin active_bitmap_get.active_bitmap_get.assert_3 23f3a72f15dfc2ac
/--
Generated VC `active_bitmap_get.active_bitmap_get.assert_3`.

- Rust source: `case-studies/percolator/active_bitmap_get.rs:46:7-46:19`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `3`
- Statement hash: `23f3a72f15dfc2ac`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_get.rs"
  startLine := 46
  startColumn := 7
  endLine := 46
  endColumn := 19
  assertId := "3"
  functionName := "active_bitmap_get.active_bitmap_get"
  kind := "assert"
  statementHash := "23f3a72f15dfc2ac"
}
@[vrml_obligation] theorem assert_3
    (bitmap : (Vermilion.Seq Int))
    (leg_slot_index : Int)
    (requires_0 : Vermilion.Seq.len bitmap = 1)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (requires_2 : (0 ≤ leg_slot_index) ∧ (leg_slot_index < Vermilion.usizeMod))
    (then_0_assume_4 : (leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (then_0_assume_5 : (leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (assert_1 : 64 ≠ 0)
    (assert_2 : 64 ≠ 0) :
    (0 ≤ (Vermilion.emod (leg_slot_index / 64) Vermilion.usizeMod)) ∧ ((Vermilion.emod (leg_slot_index / 64) Vermilion.usizeMod) < Vermilion.Seq.len bitmap) := by
  vrml [active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N, active_bitmap_get.V16_ACTIVE_BITMAP_WORDS]
-- vrml:end active_bitmap_get.active_bitmap_get.assert_3

-- vrml:begin active_bitmap_get.active_bitmap_get.assert_4 b05a3f964dcc8b21
/--
Generated VC `active_bitmap_get.active_bitmap_get.assert_4`.

- Rust source: `case-studies/percolator/active_bitmap_get.rs:46:6-46:27`
- Rust/SST construct: possible bit shift underflow/overflow
- AssertId: `4`
- Statement hash: `b05a3f964dcc8b21`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_get.rs"
  startLine := 46
  startColumn := 6
  endLine := 46
  endColumn := 27
  assertId := "4"
  functionName := "active_bitmap_get.active_bitmap_get"
  kind := "assert"
  statementHash := "b05a3f964dcc8b21"
}
@[vrml_obligation] theorem assert_4
    (bitmap : (Vermilion.Seq Int))
    (leg_slot_index : Int)
    (requires_0 : Vermilion.Seq.len bitmap = 1)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (requires_2 : (0 ≤ leg_slot_index) ∧ (leg_slot_index < Vermilion.usizeMod))
    (then_0_assume_4 : (leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (then_0_assume_5 : (leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (assert_1 : 64 ≠ 0)
    (assert_2 : 64 ≠ 0)
    (assert_3 : (0 ≤ (Vermilion.emod (leg_slot_index / 64) Vermilion.usizeMod)) ∧ ((Vermilion.emod (leg_slot_index / 64) Vermilion.usizeMod) < Vermilion.Seq.len bitmap)) :
    (0 ≤ (Vermilion.emod (leg_slot_index % 64) Vermilion.usizeMod)) ∧ ((Vermilion.emod (leg_slot_index % 64) Vermilion.usizeMod) < 64) := by
  vrml [active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N, active_bitmap_get.V16_ACTIVE_BITMAP_WORDS]
-- vrml:end active_bitmap_get.active_bitmap_get.assert_4

-- vrml:begin active_bitmap_get.active_bitmap_get.ensures_5_0 2a13a1846f664ec4
/--
Generated VC `active_bitmap_get.active_bitmap_get.ensures_5_0`.

- Rust source: `case-studies/percolator/active_bitmap_get.rs:36:9-36:65`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `5_0`
- Statement hash: `2a13a1846f664ec4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩
-/
def ensures_5_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_get.rs"
  startLine := 36
  startColumn := 9
  endLine := 36
  endColumn := 65
  assertId := "5_0"
  functionName := "active_bitmap_get.active_bitmap_get"
  kind := "ensures"
  statementHash := "2a13a1846f664ec4"
}
@[vrml_obligation] theorem ensures_5_0
    (bitmap : (Vermilion.Seq Int))
    (leg_slot_index : Int)
    (requires_0 : Vermilion.Seq.len bitmap = 1)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (requires_2 : (0 ≤ leg_slot_index) ∧ (leg_slot_index < Vermilion.usizeMod))
    (then_0_assume_4 : (leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (then_0_assume_5 : (leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (assert_1 : 64 ≠ 0)
    (assert_2 : 64 ≠ 0)
    (assert_3 : (0 ≤ (Vermilion.emod (leg_slot_index / 64) Vermilion.usizeMod)) ∧ ((Vermilion.emod (leg_slot_index / 64) Vermilion.usizeMod) < Vermilion.Seq.len bitmap))
    (assert_4 : (0 ≤ (Vermilion.emod (leg_slot_index % 64) Vermilion.usizeMod)) ∧ ((Vermilion.emod (leg_slot_index % 64) Vermilion.usizeMod) < 64)) :
    (leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → (¬ (Vermilion.Bits.band 64 (Vermilion.Bits.shr 64 (Vermilion.Seq.index bitmap (Vermilion.emod (leg_slot_index / 64) Vermilion.usizeMod)) (Vermilion.emod (leg_slot_index % 64) Vermilion.usizeMod)) 1 ≠ 0)) := by
  vrml [active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N, active_bitmap_get.V16_ACTIVE_BITMAP_WORDS]
-- vrml:end active_bitmap_get.active_bitmap_get.ensures_5_0

-- vrml:begin active_bitmap_get.active_bitmap_get.ensures_5_1 fe670418cd6b1507
/--
Generated VC `active_bitmap_get.active_bitmap_get.ensures_5_1`.

- Rust source: `case-studies/percolator/active_bitmap_get.rs:37:9-39:10`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `5_1`
- Statement hash: `fe670418cd6b1507`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩
-/
def ensures_5_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_get.rs"
  startLine := 37
  startColumn := 9
  endLine := 39
  endColumn := 10
  assertId := "5_1"
  functionName := "active_bitmap_get.active_bitmap_get"
  kind := "ensures"
  statementHash := "fe670418cd6b1507"
}
@[vrml_obligation] theorem ensures_5_1
    (bitmap : (Vermilion.Seq Int))
    (leg_slot_index : Int)
    (requires_0 : Vermilion.Seq.len bitmap = 1)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (requires_2 : (0 ≤ leg_slot_index) ∧ (leg_slot_index < Vermilion.usizeMod))
    (then_0_assume_4 : (leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (then_0_assume_5 : (leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (assert_1 : 64 ≠ 0)
    (assert_2 : 64 ≠ 0)
    (assert_3 : (0 ≤ (Vermilion.emod (leg_slot_index / 64) Vermilion.usizeMod)) ∧ ((Vermilion.emod (leg_slot_index / 64) Vermilion.usizeMod) < Vermilion.Seq.len bitmap))
    (assert_4 : (0 ≤ (Vermilion.emod (leg_slot_index % 64) Vermilion.usizeMod)) ∧ ((Vermilion.emod (leg_slot_index % 64) Vermilion.usizeMod) < 64)) :
    (leg_slot_index < active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → ((Vermilion.Bits.band 64 (Vermilion.Bits.shr 64 (Vermilion.Seq.index bitmap (Vermilion.emod (leg_slot_index / 64) Vermilion.usizeMod)) (Vermilion.emod (leg_slot_index % 64) Vermilion.usizeMod)) 1 ≠ 0) ↔ (¬ (Vermilion.Bits.band 64 (Vermilion.Bits.shr 64 (Vermilion.Seq.index bitmap (leg_slot_index / 64)) (leg_slot_index % 64)) 1 = 0))) := by
  vrml [active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N, active_bitmap_get.V16_ACTIVE_BITMAP_WORDS]
-- vrml:end active_bitmap_get.active_bitmap_get.ensures_5_1

end active_bitmap_get.active_bitmap_get

