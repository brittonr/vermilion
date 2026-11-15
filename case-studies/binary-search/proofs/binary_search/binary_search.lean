import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace binary_search.binary_search

-- vrml:begin binary_search.binary_search.assert_1 c868e8493d225254
/--
Generated VC `binary_search.binary_search.assert_1`.

- Rust source: `case-studies/binary-search/binary_search.rs:19:25-19:36`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `1`
- Statement hash: `c868e8493d225254`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v i, Vermilion.Seq.index v j⟩ ⟨Vermilion.Seq.index v i⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/binary-search/binary_search.rs"
  startLine := 19
  startColumn := 25
  endLine := 19
  endColumn := 36
  assertId := "1"
  functionName := "binary_search.binary_search"
  kind := "assert"
  statementHash := "c868e8493d225254"
}
@[vrml_obligation] theorem assert_1
    (v : (Vermilion.Seq Int))
    (k : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 k)
    (requires_3 : (∀ (i : Int) (j : Int), ((((0 ≤ i) ∧ (i ≤ j)) ∧ (j < Vermilion.Seq.len v)) → (Vermilion.Seq.index v i ≤ Vermilion.Seq.index v j))))
    (requires_4 : (∃ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len v)) ∧ (k = Vermilion.Seq.index v i))))
    (assume_5 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod)) :
    (0 ≤ (Vermilion.Seq.len v - 1)) ∧ ((Vermilion.Seq.len v - 1) < Vermilion.usizeMod) := by
  vrml
-- vrml:end binary_search.binary_search.assert_1

-- vrml:begin binary_search.binary_search.invariant_entry_0_0 19edf8587c4af288
/--
Generated VC `binary_search.binary_search.invariant_entry_0_0`.

- Rust source: `case-studies/binary-search/binary_search.rs:22:13-22:25`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `19edf8587c4af288`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v i, Vermilion.Seq.index v j⟩ ⟨Vermilion.Seq.index v i⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/binary-search/binary_search.rs"
  startLine := 22
  startColumn := 13
  endLine := 22
  endColumn := 25
  assertId := "0_0"
  functionName := "binary_search.binary_search"
  kind := "invariant_entry"
  statementHash := "19edf8587c4af288"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (v : (Vermilion.Seq Int))
    (k : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 k)
    (requires_3 : (∀ (i : Int) (j : Int), ((((0 ≤ i) ∧ (i ≤ j)) ∧ (j < Vermilion.Seq.len v)) → (Vermilion.Seq.index v i ≤ Vermilion.Seq.index v j))))
    (requires_4 : (∃ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len v)) ∧ (k = Vermilion.Seq.index v i))))
    (assume_5 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (assert_1 : (0 ≤ (Vermilion.Seq.len v - 1)) ∧ ((Vermilion.Seq.len v - 1) < Vermilion.usizeMod)) :
    (Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) < Vermilion.Seq.len v := by
  vrml
-- vrml:end binary_search.binary_search.invariant_entry_0_0

-- vrml:begin binary_search.binary_search.invariant_entry_0_1 504b3ad3196edc8a
/--
Generated VC `binary_search.binary_search.invariant_entry_0_1`.

- Rust source: `case-studies/binary-search/binary_search.rs:23:13-23:54`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `504b3ad3196edc8a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v i, Vermilion.Seq.index v j⟩ ⟨Vermilion.Seq.index v i⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/binary-search/binary_search.rs"
  startLine := 23
  startColumn := 13
  endLine := 23
  endColumn := 54
  assertId := "0_1"
  functionName := "binary_search.binary_search"
  kind := "invariant_entry"
  statementHash := "504b3ad3196edc8a"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (v : (Vermilion.Seq Int))
    (k : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 k)
    (requires_3 : (∀ (i : Int) (j : Int), ((((0 ≤ i) ∧ (i ≤ j)) ∧ (j < Vermilion.Seq.len v)) → (Vermilion.Seq.index v i ≤ Vermilion.Seq.index v j))))
    (requires_4 : (∃ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len v)) ∧ (k = Vermilion.Seq.index v i))))
    (assume_5 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (assert_1 : (0 ≤ (Vermilion.Seq.len v - 1)) ∧ ((Vermilion.Seq.len v - 1) < Vermilion.usizeMod)) :
    (∃ (i : Int), (((0 ≤ i) ∧ (i ≤ (Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod))) ∧ (k = Vermilion.Seq.index v i))) := by
  vrml
-- vrml:end binary_search.binary_search.invariant_entry_0_1

-- vrml:begin binary_search.binary_search.invariant_entry_0_2 d22677bcc6befdbf
/--
Generated VC `binary_search.binary_search.invariant_entry_0_2`.

- Rust source: `case-studies/binary-search/binary_search.rs:24:13-24:74`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_2`
- Statement hash: `d22677bcc6befdbf`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v i, Vermilion.Seq.index v j⟩ ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v i, Vermilion.Seq.index v j⟩ ⟨Vermilion.Seq.index v i⟩
-/
def invariant_entry_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/binary-search/binary_search.rs"
  startLine := 24
  startColumn := 13
  endLine := 24
  endColumn := 74
  assertId := "0_2"
  functionName := "binary_search.binary_search"
  kind := "invariant_entry"
  statementHash := "d22677bcc6befdbf"
}
@[vrml_obligation] theorem invariant_entry_0_2
    (v : (Vermilion.Seq Int))
    (k : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 k)
    (requires_3 : (∀ (i : Int) (j : Int), ((((0 ≤ i) ∧ (i ≤ j)) ∧ (j < Vermilion.Seq.len v)) → (Vermilion.Seq.index v i ≤ Vermilion.Seq.index v j))))
    (requires_4 : (∃ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len v)) ∧ (k = Vermilion.Seq.index v i))))
    (assume_5 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (assert_1 : (0 ≤ (Vermilion.Seq.len v - 1)) ∧ ((Vermilion.Seq.len v - 1) < Vermilion.usizeMod)) :
    (∀ (i : Int) (j : Int), ((((0 ≤ i) ∧ (i ≤ j)) ∧ (j < Vermilion.Seq.len v)) → (Vermilion.Seq.index v i ≤ Vermilion.Seq.index v j))) := by
  vrml
-- vrml:end binary_search.binary_search.invariant_entry_0_2

-- vrml:begin binary_search.binary_search.assert_2 eca9659174c4f1e6
/--
Generated VC `binary_search.binary_search.assert_2`.

- Rust source: `case-studies/binary-search/binary_search.rs:27:23-27:32`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `2`
- Statement hash: `eca9659174c4f1e6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v i, Vermilion.Seq.index v j⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/binary-search/binary_search.rs"
  startLine := 27
  startColumn := 23
  endLine := 27
  endColumn := 32
  assertId := "2"
  functionName := "binary_search.binary_search"
  kind := "assert"
  statementHash := "eca9659174c4f1e6"
}
@[vrml_obligation] theorem assert_2
    (v : (Vermilion.Seq Int))
    (k : Int)
    (i1 : Int)
    (i2 : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 k)
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_4 : (0 ≤ i1) ∧ (i1 < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ i2) ∧ (i2 < Vermilion.usizeMod))
    (loop_0_iteration_6 : i2 < Vermilion.Seq.len v)
    (loop_0_iteration_7 : (∃ (i : Int), (((i1 ≤ i) ∧ (i ≤ i2)) ∧ (k = Vermilion.Seq.index v i))))
    (loop_0_iteration_8 : (∀ (i : Int) (j : Int), ((((0 ≤ i) ∧ (i ≤ j)) ∧ (j < Vermilion.Seq.len v)) → (Vermilion.Seq.index v i ≤ Vermilion.Seq.index v j))))
    (loop_0_iteration_9 : i1 ≠ i2) :
    (0 ≤ (i2 - i1)) ∧ ((i2 - i1) < Vermilion.usizeMod) := by
  vrml
-- vrml:end binary_search.binary_search.assert_2

-- vrml:begin binary_search.binary_search.assert_3 8c0c4ea070baa0a1
/--
Generated VC `binary_search.binary_search.assert_3`.

- Rust source: `case-studies/binary-search/binary_search.rs:27:23-27:36`
- Rust/SST construct: possible division by zero
- AssertId: `3`
- Statement hash: `8c0c4ea070baa0a1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v i, Vermilion.Seq.index v j⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/binary-search/binary_search.rs"
  startLine := 27
  startColumn := 23
  endLine := 27
  endColumn := 36
  assertId := "3"
  functionName := "binary_search.binary_search"
  kind := "assert"
  statementHash := "8c0c4ea070baa0a1"
}
@[vrml_obligation] theorem assert_3
    (v : (Vermilion.Seq Int))
    (k : Int)
    (i1 : Int)
    (i2 : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 k)
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_4 : (0 ≤ i1) ∧ (i1 < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ i2) ∧ (i2 < Vermilion.usizeMod))
    (loop_0_iteration_6 : i2 < Vermilion.Seq.len v)
    (loop_0_iteration_7 : (∃ (i : Int), (((i1 ≤ i) ∧ (i ≤ i2)) ∧ (k = Vermilion.Seq.index v i))))
    (loop_0_iteration_8 : (∀ (i : Int) (j : Int), ((((0 ≤ i) ∧ (i ≤ j)) ∧ (j < Vermilion.Seq.len v)) → (Vermilion.Seq.index v i ≤ Vermilion.Seq.index v j))))
    (loop_0_iteration_9 : i1 ≠ i2)
    (assert_2 : (0 ≤ (i2 - i1)) ∧ ((i2 - i1) < Vermilion.usizeMod)) :
    2 ≠ 0 := by
  vrml
-- vrml:end binary_search.binary_search.assert_3

-- vrml:begin binary_search.binary_search.assert_4 4bf166ad6a58608d
/--
Generated VC `binary_search.binary_search.assert_4`.

- Rust source: `case-studies/binary-search/binary_search.rs:27:18-27:36`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `4`
- Statement hash: `4bf166ad6a58608d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v i, Vermilion.Seq.index v j⟩
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/binary-search/binary_search.rs"
  startLine := 27
  startColumn := 18
  endLine := 27
  endColumn := 36
  assertId := "4"
  functionName := "binary_search.binary_search"
  kind := "assert"
  statementHash := "4bf166ad6a58608d"
}
@[vrml_obligation] theorem assert_4
    (v : (Vermilion.Seq Int))
    (k : Int)
    (i1 : Int)
    (i2 : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 k)
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_4 : (0 ≤ i1) ∧ (i1 < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ i2) ∧ (i2 < Vermilion.usizeMod))
    (loop_0_iteration_6 : i2 < Vermilion.Seq.len v)
    (loop_0_iteration_7 : (∃ (i : Int), (((i1 ≤ i) ∧ (i ≤ i2)) ∧ (k = Vermilion.Seq.index v i))))
    (loop_0_iteration_8 : (∀ (i : Int) (j : Int), ((((0 ≤ i) ∧ (i ≤ j)) ∧ (j < Vermilion.Seq.len v)) → (Vermilion.Seq.index v i ≤ Vermilion.Seq.index v j))))
    (loop_0_iteration_9 : i1 ≠ i2)
    (assert_2 : (0 ≤ (i2 - i1)) ∧ ((i2 - i1) < Vermilion.usizeMod))
    (assert_3 : 2 ≠ 0) :
    (0 ≤ (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod))) ∧ ((i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) < Vermilion.usizeMod) := by
  vrml
-- vrml:end binary_search.binary_search.assert_4

-- vrml:begin binary_search.binary_search.call_requires_5 660aa6bb834d6c29
/--
Generated VC `binary_search.binary_search.call_requires_5`.

- Rust source: `case-studies/binary-search/binary_search.rs:28:12-28:17`
- Rust/SST construct: call vec_index
- AssertId: `5`
- Statement hash: `660aa6bb834d6c29`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v i, Vermilion.Seq.index v j⟩
-/
def call_requires_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/binary-search/binary_search.rs"
  startLine := 28
  startColumn := 12
  endLine := 28
  endColumn := 17
  assertId := "5"
  functionName := "binary_search.binary_search"
  kind := "call_requires"
  statementHash := "660aa6bb834d6c29"
}
@[vrml_obligation] theorem call_requires_5
    (v : (Vermilion.Seq Int))
    (k : Int)
    (i1 : Int)
    (i2 : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 k)
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_4 : (0 ≤ i1) ∧ (i1 < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ i2) ∧ (i2 < Vermilion.usizeMod))
    (loop_0_iteration_6 : i2 < Vermilion.Seq.len v)
    (loop_0_iteration_7 : (∃ (i : Int), (((i1 ≤ i) ∧ (i ≤ i2)) ∧ (k = Vermilion.Seq.index v i))))
    (loop_0_iteration_8 : (∀ (i : Int) (j : Int), ((((0 ≤ i) ∧ (i ≤ j)) ∧ (j < Vermilion.Seq.len v)) → (Vermilion.Seq.index v i ≤ Vermilion.Seq.index v j))))
    (loop_0_iteration_9 : i1 ≠ i2)
    (assert_2 : (0 ≤ (i2 - i1)) ∧ ((i2 - i1) < Vermilion.usizeMod))
    (assert_3 : 2 ≠ 0)
    (assert_4 : (0 ≤ (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod))) ∧ ((i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) < Vermilion.usizeMod)) :
    (Vermilion.emod (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) Vermilion.usizeMod) < Vermilion.Seq.len v := by
  vrml
-- vrml:end binary_search.binary_search.call_requires_5

-- vrml:begin binary_search.binary_search.assert_6 42ba72847d315d41
/--
Generated VC `binary_search.binary_search.assert_6`.

- Rust source: `case-studies/binary-search/binary_search.rs:29:18-29:24`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `6`
- Statement hash: `42ba72847d315d41`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v i, Vermilion.Seq.index v j⟩
-/
def assert_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/binary-search/binary_search.rs"
  startLine := 29
  startColumn := 18
  endLine := 29
  endColumn := 24
  assertId := "6"
  functionName := "binary_search.binary_search"
  kind := "assert"
  statementHash := "42ba72847d315d41"
}
@[vrml_obligation] theorem assert_6
    (v : (Vermilion.Seq Int))
    (k : Int)
    (i1 : Int)
    (i2 : Int)
    (tmp_ : Int)
    (i1_2 : Int)
    (i2_2 : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 k)
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_4 : (0 ≤ i1) ∧ (i1 < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ i2) ∧ (i2 < Vermilion.usizeMod))
    (loop_0_iteration_6 : i2 < Vermilion.Seq.len v)
    (loop_0_iteration_7 : (∃ (i : Int), (((i1 ≤ i) ∧ (i ≤ i2)) ∧ (k = Vermilion.Seq.index v i))))
    (loop_0_iteration_8 : (∀ (i : Int) (j : Int), ((((0 ≤ i) ∧ (i ≤ j)) ∧ (j < Vermilion.Seq.len v)) → (Vermilion.Seq.index v i ≤ Vermilion.Seq.index v j))))
    (loop_0_iteration_9 : i1 ≠ i2)
    (assert_2 : (0 ≤ (i2 - i1)) ∧ ((i2 - i1) < Vermilion.usizeMod))
    (assert_3 : 2 ≠ 0)
    (assert_4 : (0 ≤ (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod))) ∧ ((i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) < Vermilion.usizeMod))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index v (Vermilion.emod (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) Vermilion.usizeMod))
    (branch_0 : tmp_ < k) :
    (0 ≤ ((Vermilion.emod (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) Vermilion.usizeMod) + 1)) ∧ (((Vermilion.emod (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) Vermilion.usizeMod) + 1) < Vermilion.usizeMod) := by
  vrml
-- vrml:end binary_search.binary_search.assert_6

-- vrml:begin binary_search.binary_search.invariant_preserve_0_0 0cab0b519f820c2c
/--
Generated VC `binary_search.binary_search.invariant_preserve_0_0`.

- Rust source: `case-studies/binary-search/binary_search.rs:22:13-22:25`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `0cab0b519f820c2c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v i, Vermilion.Seq.index v j⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/binary-search/binary_search.rs"
  startLine := 22
  startColumn := 13
  endLine := 22
  endColumn := 25
  assertId := "0_0"
  functionName := "binary_search.binary_search"
  kind := "invariant_preserve"
  statementHash := "0cab0b519f820c2c"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (v : (Vermilion.Seq Int))
    (k : Int)
    (i1 : Int)
    (i2 : Int)
    (tmp_ : Int)
    (i1_2 : Int)
    (i2_2 : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 k)
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_4 : (0 ≤ i1) ∧ (i1 < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ i2) ∧ (i2 < Vermilion.usizeMod))
    (loop_0_iteration_6 : i2 < Vermilion.Seq.len v)
    (loop_0_iteration_7 : (∃ (i : Int), (((i1 ≤ i) ∧ (i ≤ i2)) ∧ (k = Vermilion.Seq.index v i))))
    (loop_0_iteration_8 : (∀ (i : Int) (j : Int), ((((0 ≤ i) ∧ (i ≤ j)) ∧ (j < Vermilion.Seq.len v)) → (Vermilion.Seq.index v i ≤ Vermilion.Seq.index v j))))
    (loop_0_iteration_9 : i1 ≠ i2)
    (assert_2 : (0 ≤ (i2 - i1)) ∧ ((i2 - i1) < Vermilion.usizeMod))
    (assert_3 : 2 ≠ 0)
    (assert_4 : (0 ≤ (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod))) ∧ ((i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) < Vermilion.usizeMod))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index v (Vermilion.emod (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) Vermilion.usizeMod))
    (then_0_assert_6 : (tmp_ < k) → ((0 ≤ ((Vermilion.emod (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) Vermilion.usizeMod) + 1)) ∧ (((Vermilion.emod (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) Vermilion.usizeMod) + 1) < Vermilion.usizeMod)))
    (then_0_assume_17 : (tmp_ < k) → (i1_2 = (Vermilion.emod ((Vermilion.emod (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) Vermilion.usizeMod) + 1) Vermilion.usizeMod)))
    (then_0_assume_18 : (tmp_ < k) → (i2_2 = i2))
    (else_0_assume_16 : (¬ (tmp_ < k)) → (i1_2 = i1))
    (else_0_assume_17 : (¬ (tmp_ < k)) → (i2_2 = (Vermilion.emod (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) Vermilion.usizeMod)))
    (assume_20 : (0 ≤ i1_2) ∧ (i1_2 < Vermilion.usizeMod))
    (assume_21 : (0 ≤ i2_2) ∧ (i2_2 < Vermilion.usizeMod)) :
    i2_2 < Vermilion.Seq.len v := by
  vrml
-- vrml:end binary_search.binary_search.invariant_preserve_0_0

-- vrml:begin binary_search.binary_search.invariant_preserve_0_1 d2e9b897b41a05bd
/--
Generated VC `binary_search.binary_search.invariant_preserve_0_1`.

- Rust source: `case-studies/binary-search/binary_search.rs:23:13-23:54`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `d2e9b897b41a05bd`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v i, Vermilion.Seq.index v j⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/binary-search/binary_search.rs"
  startLine := 23
  startColumn := 13
  endLine := 23
  endColumn := 54
  assertId := "0_1"
  functionName := "binary_search.binary_search"
  kind := "invariant_preserve"
  statementHash := "d2e9b897b41a05bd"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (v : (Vermilion.Seq Int))
    (k : Int)
    (i1 : Int)
    (i2 : Int)
    (tmp_ : Int)
    (i1_2 : Int)
    (i2_2 : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 k)
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_4 : (0 ≤ i1) ∧ (i1 < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ i2) ∧ (i2 < Vermilion.usizeMod))
    (loop_0_iteration_6 : i2 < Vermilion.Seq.len v)
    (loop_0_iteration_7 : (∃ (i : Int), (((i1 ≤ i) ∧ (i ≤ i2)) ∧ (k = Vermilion.Seq.index v i))))
    (loop_0_iteration_8 : (∀ (i : Int) (j : Int), ((((0 ≤ i) ∧ (i ≤ j)) ∧ (j < Vermilion.Seq.len v)) → (Vermilion.Seq.index v i ≤ Vermilion.Seq.index v j))))
    (loop_0_iteration_9 : i1 ≠ i2)
    (assert_2 : (0 ≤ (i2 - i1)) ∧ ((i2 - i1) < Vermilion.usizeMod))
    (assert_3 : 2 ≠ 0)
    (assert_4 : (0 ≤ (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod))) ∧ ((i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) < Vermilion.usizeMod))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index v (Vermilion.emod (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) Vermilion.usizeMod))
    (then_0_assert_6 : (tmp_ < k) → ((0 ≤ ((Vermilion.emod (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) Vermilion.usizeMod) + 1)) ∧ (((Vermilion.emod (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) Vermilion.usizeMod) + 1) < Vermilion.usizeMod)))
    (then_0_assume_17 : (tmp_ < k) → (i1_2 = (Vermilion.emod ((Vermilion.emod (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) Vermilion.usizeMod) + 1) Vermilion.usizeMod)))
    (then_0_assume_18 : (tmp_ < k) → (i2_2 = i2))
    (else_0_assume_16 : (¬ (tmp_ < k)) → (i1_2 = i1))
    (else_0_assume_17 : (¬ (tmp_ < k)) → (i2_2 = (Vermilion.emod (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) Vermilion.usizeMod)))
    (assume_20 : (0 ≤ i1_2) ∧ (i1_2 < Vermilion.usizeMod))
    (assume_21 : (0 ≤ i2_2) ∧ (i2_2 < Vermilion.usizeMod)) :
    (∃ (i : Int), (((i1_2 ≤ i) ∧ (i ≤ i2_2)) ∧ (k = Vermilion.Seq.index v i))) := by
  -- Normalize the exact usize clips in dependency order. Each is guarded by
  -- the range check emitted by VIR; the successor clip is branch-local.
  simp only [Vermilion.inUnsignedRange] at *
  have hdmod : Vermilion.emod (i2 - i1) Vermilion.usizeMod = i2 - i1 :=
    Vermilion.emod_usizeMod_of_lt (by omega) (by omega)
  simp_rw [hdmod] at *
  have hqmod : Vermilion.emod ((i2 - i1) / 2) Vermilion.usizeMod =
      (i2 - i1) / 2 := Vermilion.emod_usizeMod_of_lt (by omega) (by omega)
  simp_rw [hqmod] at *
  have hixmod : Vermilion.emod (i1 + (i2 - i1) / 2) Vermilion.usizeMod =
      i1 + (i2 - i1) / 2 :=
    Vermilion.emod_usizeMod_of_lt (by omega) (by omega)
  simp_rw [hixmod] at *
  -- Interactive witness reasoning: the existing witness `w` stays in range,
  -- except in the else-branch when `w` was in the discarded right half — then
  -- sortedness forces `v[ix] = k`, so the midpoint `ix` is itself a witness.
  obtain ⟨w, ⟨⟨hw1, hw2⟩, hwk⟩⟩ := loop_0_iteration_7
  by_cases h : tmp_ < k
  · -- v[ix] < k: the target lies in the right half [ix+1, i2]; keep `w`.
    have hnext := then_0_assert_6 h
    have hnextmod : Vermilion.emod (i1 + (i2 - i1) / 2 + 1) Vermilion.usizeMod = i1 + (i2 - i1) / 2 + 1 :=
      Vermilion.emod_usizeMod_of_lt (by omega) (by omega)
    have e1 := then_0_assume_17 h
    simp_rw [hnextmod] at e1
    have e2 := then_0_assume_18 h
    refine ⟨w, ⟨⟨?_, by omega⟩, hwk⟩⟩
    by_contra hc
    have hle : Vermilion.Seq.index v w
        ≤ Vermilion.Seq.index v (i1 + ((i2 - i1) / 2)) :=
      loop_0_iteration_8 w (i1 + ((i2 - i1) / 2)) (by omega)
    omega
  · -- v[ix] ≥ k: the target lies in the left half [i1, ix].
    have e1 := else_0_assume_16 h
    have e2 := else_0_assume_17 h
    by_cases hwix : w ≤ i1 + ((i2 - i1) / 2)
    · exact ⟨w, ⟨⟨by omega, by omega⟩, hwk⟩⟩
    · -- w was in the discarded half; sortedness forces v[ix] = k.
      have hle : Vermilion.Seq.index v (i1 + ((i2 - i1) / 2))
          ≤ Vermilion.Seq.index v w :=
        loop_0_iteration_8 (i1 + ((i2 - i1) / 2)) w (by omega)
      exact ⟨i1 + ((i2 - i1) / 2), ⟨⟨by omega, by omega⟩, by omega⟩⟩
-- vrml:end binary_search.binary_search.invariant_preserve_0_1

-- vrml:begin binary_search.binary_search.invariant_preserve_0_2 69c90a07ab40c4db
/--
Generated VC `binary_search.binary_search.invariant_preserve_0_2`.

- Rust source: `case-studies/binary-search/binary_search.rs:24:13-24:74`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_2`
- Statement hash: `69c90a07ab40c4db`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v i, Vermilion.Seq.index v j⟩ ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v i, Vermilion.Seq.index v j⟩
-/
def invariant_preserve_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/binary-search/binary_search.rs"
  startLine := 24
  startColumn := 13
  endLine := 24
  endColumn := 74
  assertId := "0_2"
  functionName := "binary_search.binary_search"
  kind := "invariant_preserve"
  statementHash := "69c90a07ab40c4db"
}
@[vrml_obligation] theorem invariant_preserve_0_2
    (v : (Vermilion.Seq Int))
    (k : Int)
    (i1 : Int)
    (i2 : Int)
    (tmp_ : Int)
    (i1_2 : Int)
    (i2_2 : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 k)
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_4 : (0 ≤ i1) ∧ (i1 < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ i2) ∧ (i2 < Vermilion.usizeMod))
    (loop_0_iteration_6 : i2 < Vermilion.Seq.len v)
    (loop_0_iteration_7 : (∃ (i : Int), (((i1 ≤ i) ∧ (i ≤ i2)) ∧ (k = Vermilion.Seq.index v i))))
    (loop_0_iteration_8 : (∀ (i : Int) (j : Int), ((((0 ≤ i) ∧ (i ≤ j)) ∧ (j < Vermilion.Seq.len v)) → (Vermilion.Seq.index v i ≤ Vermilion.Seq.index v j))))
    (loop_0_iteration_9 : i1 ≠ i2)
    (assert_2 : (0 ≤ (i2 - i1)) ∧ ((i2 - i1) < Vermilion.usizeMod))
    (assert_3 : 2 ≠ 0)
    (assert_4 : (0 ≤ (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod))) ∧ ((i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) < Vermilion.usizeMod))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index v (Vermilion.emod (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) Vermilion.usizeMod))
    (then_0_assert_6 : (tmp_ < k) → ((0 ≤ ((Vermilion.emod (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) Vermilion.usizeMod) + 1)) ∧ (((Vermilion.emod (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) Vermilion.usizeMod) + 1) < Vermilion.usizeMod)))
    (then_0_assume_17 : (tmp_ < k) → (i1_2 = (Vermilion.emod ((Vermilion.emod (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) Vermilion.usizeMod) + 1) Vermilion.usizeMod)))
    (then_0_assume_18 : (tmp_ < k) → (i2_2 = i2))
    (else_0_assume_16 : (¬ (tmp_ < k)) → (i1_2 = i1))
    (else_0_assume_17 : (¬ (tmp_ < k)) → (i2_2 = (Vermilion.emod (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) Vermilion.usizeMod)))
    (assume_20 : (0 ≤ i1_2) ∧ (i1_2 < Vermilion.usizeMod))
    (assume_21 : (0 ≤ i2_2) ∧ (i2_2 < Vermilion.usizeMod)) :
    (∀ (i : Int) (j : Int), ((((0 ≤ i) ∧ (i ≤ j)) ∧ (j < Vermilion.Seq.len v)) → (Vermilion.Seq.index v i ≤ Vermilion.Seq.index v j))) := by
  vrml
-- vrml:end binary_search.binary_search.invariant_preserve_0_2

-- vrml:begin binary_search.binary_search.assert_0_decreases 5bd759aa0443fbc6
/--
Generated VC `binary_search.binary_search.assert_0_decreases`.

- Rust source: `case-studies/binary-search/binary_search.rs:25:19-25:26`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `5bd759aa0443fbc6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v i, Vermilion.Seq.index v j⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/binary-search/binary_search.rs"
  startLine := 25
  startColumn := 19
  endLine := 25
  endColumn := 26
  assertId := "0_decreases"
  functionName := "binary_search.binary_search"
  kind := "assert"
  statementHash := "5bd759aa0443fbc6"
}
@[vrml_obligation] theorem assert_0_decreases
    (v : (Vermilion.Seq Int))
    (k : Int)
    (i1 : Int)
    (i2 : Int)
    (tmp_ : Int)
    (i1_2 : Int)
    (i2_2 : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 k)
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_4 : (0 ≤ i1) ∧ (i1 < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ i2) ∧ (i2 < Vermilion.usizeMod))
    (loop_0_iteration_6 : i2 < Vermilion.Seq.len v)
    (loop_0_iteration_7 : (∃ (i : Int), (((i1 ≤ i) ∧ (i ≤ i2)) ∧ (k = Vermilion.Seq.index v i))))
    (loop_0_iteration_8 : (∀ (i : Int) (j : Int), ((((0 ≤ i) ∧ (i ≤ j)) ∧ (j < Vermilion.Seq.len v)) → (Vermilion.Seq.index v i ≤ Vermilion.Seq.index v j))))
    (loop_0_iteration_9 : i1 ≠ i2)
    (assert_2 : (0 ≤ (i2 - i1)) ∧ ((i2 - i1) < Vermilion.usizeMod))
    (assert_3 : 2 ≠ 0)
    (assert_4 : (0 ≤ (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod))) ∧ ((i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) < Vermilion.usizeMod))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index v (Vermilion.emod (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) Vermilion.usizeMod))
    (then_0_assert_6 : (tmp_ < k) → ((0 ≤ ((Vermilion.emod (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) Vermilion.usizeMod) + 1)) ∧ (((Vermilion.emod (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) Vermilion.usizeMod) + 1) < Vermilion.usizeMod)))
    (then_0_assume_17 : (tmp_ < k) → (i1_2 = (Vermilion.emod ((Vermilion.emod (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) Vermilion.usizeMod) + 1) Vermilion.usizeMod)))
    (then_0_assume_18 : (tmp_ < k) → (i2_2 = i2))
    (else_0_assume_16 : (¬ (tmp_ < k)) → (i1_2 = i1))
    (else_0_assume_17 : (¬ (tmp_ < k)) → (i2_2 = (Vermilion.emod (i1 + (Vermilion.emod ((Vermilion.emod (i2 - i1) Vermilion.usizeMod) / 2) Vermilion.usizeMod)) Vermilion.usizeMod)))
    (assume_20 : (0 ≤ i1_2) ∧ (i1_2 < Vermilion.usizeMod))
    (assume_21 : (0 ≤ i2_2) ∧ (i2_2 < Vermilion.usizeMod)) :
    ((0 ≤ (i2_2 - i1_2)) ∧ ((i2_2 - i1_2) < (i2 - i1))) ∨ (((i2_2 - i1_2) = (i2 - i1)) ∧ False) := by
  vrml
-- vrml:end binary_search.binary_search.assert_0_decreases

-- vrml:begin binary_search.binary_search.ensures_7_0 56b3b85443074ca6
/--
Generated VC `binary_search.binary_search.ensures_7_0`.

- Rust source: `case-studies/binary-search/binary_search.rs:15:9-15:20`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `7_0`
- Statement hash: `56b3b85443074ca6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v i, Vermilion.Seq.index v j⟩ ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v i, Vermilion.Seq.index v j⟩
-/
def ensures_7_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/binary-search/binary_search.rs"
  startLine := 15
  startColumn := 9
  endLine := 15
  endColumn := 20
  assertId := "7_0"
  functionName := "binary_search.binary_search"
  kind := "ensures"
  statementHash := "56b3b85443074ca6"
}
@[vrml_obligation] theorem ensures_7_0
    (v : (Vermilion.Seq Int))
    (k : Int)
    (i1 : Int)
    (i2 : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 k)
    (requires_3 : (∀ (i : Int) (j : Int), ((((0 ≤ i) ∧ (i ≤ j)) ∧ (j < Vermilion.Seq.len v)) → (Vermilion.Seq.index v i ≤ Vermilion.Seq.index v j))))
    (requires_4 : (∃ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len v)) ∧ (k = Vermilion.Seq.index v i))))
    (assume_5 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (assert_1 : (0 ≤ (Vermilion.Seq.len v - 1)) ∧ ((Vermilion.Seq.len v - 1) < Vermilion.usizeMod))
    (loop_0_exit_0 : (0 ≤ i1) ∧ (i1 < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ i2) ∧ (i2 < Vermilion.usizeMod))
    (loop_0_exit_2 : i2 < Vermilion.Seq.len v)
    (loop_0_exit_3 : (∃ (i : Int), (((i1 ≤ i) ∧ (i ≤ i2)) ∧ (k = Vermilion.Seq.index v i))))
    (loop_0_exit_4 : (∀ (i : Int) (j : Int), ((((0 ≤ i) ∧ (i ≤ j)) ∧ (j < Vermilion.Seq.len v)) → (Vermilion.Seq.index v i ≤ Vermilion.Seq.index v j))))
    (loop_0_exit_5 : (¬ (i1 ≠ i2))) :
    i1 < Vermilion.Seq.len v := by
  vrml
-- vrml:end binary_search.binary_search.ensures_7_0

-- vrml:begin binary_search.binary_search.ensures_7_1 6f07d20ce1959da7
/--
Generated VC `binary_search.binary_search.ensures_7_1`.

- Rust source: `case-studies/binary-search/binary_search.rs:16:9-16:25`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `7_1`
- Statement hash: `6f07d20ce1959da7`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v i, Vermilion.Seq.index v j⟩ ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v i, Vermilion.Seq.index v j⟩
-/
def ensures_7_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/binary-search/binary_search.rs"
  startLine := 16
  startColumn := 9
  endLine := 16
  endColumn := 25
  assertId := "7_1"
  functionName := "binary_search.binary_search"
  kind := "ensures"
  statementHash := "6f07d20ce1959da7"
}
@[vrml_obligation] theorem ensures_7_1
    (v : (Vermilion.Seq Int))
    (k : Int)
    (i1 : Int)
    (i2 : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 k)
    (requires_3 : (∀ (i : Int) (j : Int), ((((0 ≤ i) ∧ (i ≤ j)) ∧ (j < Vermilion.Seq.len v)) → (Vermilion.Seq.index v i ≤ Vermilion.Seq.index v j))))
    (requires_4 : (∃ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len v)) ∧ (k = Vermilion.Seq.index v i))))
    (assume_5 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (assert_1 : (0 ≤ (Vermilion.Seq.len v - 1)) ∧ ((Vermilion.Seq.len v - 1) < Vermilion.usizeMod))
    (loop_0_exit_0 : (0 ≤ i1) ∧ (i1 < Vermilion.usizeMod))
    (loop_0_exit_1 : (0 ≤ i2) ∧ (i2 < Vermilion.usizeMod))
    (loop_0_exit_2 : i2 < Vermilion.Seq.len v)
    (loop_0_exit_3 : (∃ (i : Int), (((i1 ≤ i) ∧ (i ≤ i2)) ∧ (k = Vermilion.Seq.index v i))))
    (loop_0_exit_4 : (∀ (i : Int) (j : Int), ((((0 ≤ i) ∧ (i ≤ j)) ∧ (j < Vermilion.Seq.len v)) → (Vermilion.Seq.index v i ≤ Vermilion.Seq.index v j))))
    (loop_0_exit_5 : (¬ (i1 ≠ i2))) :
    k = Vermilion.Seq.index v i1 := by
  vrml
-- vrml:end binary_search.binary_search.ensures_7_1

end binary_search.binary_search

