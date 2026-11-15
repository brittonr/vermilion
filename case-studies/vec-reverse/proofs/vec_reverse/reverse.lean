import Vermilion.Obligations
import vec_reverse.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace vec_reverse.reverse

-- vrml:begin vec_reverse.reverse.assert_1 85317e68e17ac401
/--
Generated VC `vec_reverse.reverse.assert_1`.

- Rust source: `case-studies/vec-reverse/vec_reverse.rs:17:17-17:29`
- Rust/SST construct: possible division by zero
- AssertId: `1`
- Statement hash: `85317e68e17ac401`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/vec-reverse/vec_reverse.rs"
  startLine := 17
  startColumn := 17
  endLine := 17
  endColumn := 29
  assertId := "1"
  functionName := "vec_reverse.reverse"
  kind := "assert"
  statementHash := "85317e68e17ac401"
}
@[vrml_obligation] theorem assert_1
    (v : (Vermilion.Seq Int))
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (assume_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod)) :
    2 ≠ 0 := by
  vrml
-- vrml:end vec_reverse.reverse.assert_1

-- vrml:begin vec_reverse.reverse.invariant_entry_0_4 72bd7ac08bbf26bb
/--
Generated VC `vec_reverse.reverse.invariant_entry_0_4`.

- Rust source: `case-studies/vec-reverse/vec_reverse.rs:19:13-19:30`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_4`
- Statement hash: `72bd7ac08bbf26bb`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩
-/
def invariant_entry_0_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/vec-reverse/vec_reverse.rs"
  startLine := 19
  startColumn := 13
  endLine := 19
  endColumn := 30
  assertId := "0_4"
  functionName := "vec_reverse.reverse"
  kind := "invariant_entry"
  statementHash := "72bd7ac08bbf26bb"
}
@[vrml_obligation] theorem invariant_entry_0_4
    (v : (Vermilion.Seq Int))
    (vrml_for_arb : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (assume_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (assert_1 : 2 ≠ 0)
    (assume_4 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod)) :
    Vermilion.Seq.len v = Vermilion.Seq.len v := by
  vrml
-- vrml:end vec_reverse.reverse.invariant_entry_0_4

-- vrml:begin vec_reverse.reverse.invariant_entry_0_5 c3fef2531dfba685
/--
Generated VC `vec_reverse.reverse.invariant_entry_0_5`.

- Rust source: `case-studies/vec-reverse/vec_reverse.rs:20:13-20:69`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_5`
- Statement hash: `c3fef2531dfba685`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v vrml_i0⟩
-/
def invariant_entry_0_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/vec-reverse/vec_reverse.rs"
  startLine := 20
  startColumn := 13
  endLine := 20
  endColumn := 69
  assertId := "0_5"
  functionName := "vec_reverse.reverse"
  kind := "invariant_entry"
  statementHash := "c3fef2531dfba685"
}
@[vrml_obligation] theorem invariant_entry_0_5
    (v : (Vermilion.Seq Int))
    (vrml_for_arb : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (assume_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (assert_1 : 2 ≠ 0)
    (assume_4 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod)) :
    (∀ (i : Int), (((0 ≤ i) ∧ (i < (Vermilion.iteP (0 ≤ (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod)) 0 vrml_for_arb))) → (Vermilion.Seq.index v i = Vermilion.Seq.index v ((Vermilion.Seq.len v - i) - 1)))) := by
  vrml
-- vrml:end vec_reverse.reverse.invariant_entry_0_5

-- vrml:begin vec_reverse.reverse.invariant_entry_0_6 c3fef2531dfba685
/--
Generated VC `vec_reverse.reverse.invariant_entry_0_6`.

- Rust source: `case-studies/vec-reverse/vec_reverse.rs:21:13-21:69`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_6`
- Statement hash: `c3fef2531dfba685`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v vrml_i0⟩
-/
def invariant_entry_0_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/vec-reverse/vec_reverse.rs"
  startLine := 21
  startColumn := 13
  endLine := 21
  endColumn := 69
  assertId := "0_6"
  functionName := "vec_reverse.reverse"
  kind := "invariant_entry"
  statementHash := "c3fef2531dfba685"
}
@[vrml_obligation] theorem invariant_entry_0_6
    (v : (Vermilion.Seq Int))
    (vrml_for_arb : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (assume_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (assert_1 : 2 ≠ 0)
    (assume_4 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod)) :
    (∀ (i : Int), (((0 ≤ i) ∧ (i < (Vermilion.iteP (0 ≤ (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod)) 0 vrml_for_arb))) → (Vermilion.Seq.index v i = Vermilion.Seq.index v ((Vermilion.Seq.len v - i) - 1)))) := by
  vrml
-- vrml:end vec_reverse.reverse.invariant_entry_0_6

-- vrml:begin vec_reverse.reverse.invariant_entry_0_7 92aad8ab7d758f1d
/--
Generated VC `vec_reverse.reverse.invariant_entry_0_7`.

- Rust source: `case-studies/vec-reverse/vec_reverse.rs:22:13-22:81`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_7`
- Statement hash: `92aad8ab7d758f1d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v vrml_i0⟩
-/
def invariant_entry_0_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/vec-reverse/vec_reverse.rs"
  startLine := 22
  startColumn := 13
  endLine := 22
  endColumn := 81
  assertId := "0_7"
  functionName := "vec_reverse.reverse"
  kind := "invariant_entry"
  statementHash := "92aad8ab7d758f1d"
}
@[vrml_obligation] theorem invariant_entry_0_7
    (v : (Vermilion.Seq Int))
    (vrml_for_arb : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (assume_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (assert_1 : 2 ≠ 0)
    (assume_4 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod)) :
    (∀ (i : Int), ((((Vermilion.iteP (0 ≤ (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod)) 0 vrml_for_arb) ≤ i) ∧ ((i + (Vermilion.iteP (0 ≤ (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod)) 0 vrml_for_arb)) < Vermilion.Seq.len v)) → (Vermilion.Seq.index v i = Vermilion.Seq.index v i))) := by
  vrml
-- vrml:end vec_reverse.reverse.invariant_entry_0_7

-- vrml:begin vec_reverse.reverse.call_requires_6 842db4a7e8489f75
/--
Generated VC `vec_reverse.reverse.call_requires_6`.

- Rust source: `case-studies/vec-reverse/vec_reverse.rs:24:17-24:21`
- Rust/SST construct: call vec_index
- AssertId: `6`
- Statement hash: `842db4a7e8489f75`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 i⟩ ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v_2 i⟩
-/
def call_requires_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/vec-reverse/vec_reverse.rs"
  startLine := 24
  startColumn := 17
  endLine := 24
  endColumn := 21
  assertId := "6"
  functionName := "vec_reverse.reverse"
  kind := "call_requires"
  statementHash := "842db4a7e8489f75"
}
@[vrml_obligation] theorem call_requires_6
    (v : (Vermilion.Seq Int))
    (vrml_for_arb : Int)
    (v_2 : (Vermilion.Seq Int))
    (n : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_6 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_7 : 0 ≤ n)
    (loop_0_iteration_8 : n < (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod))
    (loop_0_iteration_9 : Vermilion.Seq.len v = Vermilion.Seq.len v_2)
    (loop_0_iteration_10 : (∀ (i : Int), (((0 ≤ i) ∧ (i < n)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_iteration_11 : (∀ (i : Int), (((0 ≤ i) ∧ (i < n)) → (Vermilion.Seq.index v i = Vermilion.Seq.index v_2 ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_iteration_12 : (∀ (i : Int), (((n ≤ i) ∧ ((i + n) < Vermilion.Seq.len v)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v i)))) :
    n < Vermilion.Seq.len v_2 := by
  vrml
-- vrml:end vec_reverse.reverse.call_requires_6

-- vrml:begin vec_reverse.reverse.assert_7 6aca21497f8f0e01
/--
Generated VC `vec_reverse.reverse.assert_7`.

- Rust source: `case-studies/vec-reverse/vec_reverse.rs:25:19-25:29`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `7`
- Statement hash: `6aca21497f8f0e01`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 i⟩ ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v_2 i⟩
-/
def assert_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/vec-reverse/vec_reverse.rs"
  startLine := 25
  startColumn := 19
  endLine := 25
  endColumn := 29
  assertId := "7"
  functionName := "vec_reverse.reverse"
  kind := "assert"
  statementHash := "6aca21497f8f0e01"
}
@[vrml_obligation] theorem assert_7
    (v : (Vermilion.Seq Int))
    (vrml_for_arb : Int)
    (v_2 : (Vermilion.Seq Int))
    (n : Int)
    (tmp_ : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_6 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_7 : 0 ≤ n)
    (loop_0_iteration_8 : n < (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod))
    (loop_0_iteration_9 : Vermilion.Seq.len v = Vermilion.Seq.len v_2)
    (loop_0_iteration_10 : (∀ (i : Int), (((0 ≤ i) ∧ (i < n)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_iteration_11 : (∀ (i : Int), (((0 ≤ i) ∧ (i < n)) → (Vermilion.Seq.index v i = Vermilion.Seq.index v_2 ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_iteration_12 : (∀ (i : Int), (((n ≤ i) ∧ ((i + n) < Vermilion.Seq.len v)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v i))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index v_2 n) :
    (0 ≤ (Vermilion.Seq.len v - 1)) ∧ ((Vermilion.Seq.len v - 1) < Vermilion.usizeMod) := by
  vrml
-- vrml:end vec_reverse.reverse.assert_7

-- vrml:begin vec_reverse.reverse.assert_8 8ba4cfc402fd3a77
/--
Generated VC `vec_reverse.reverse.assert_8`.

- Rust source: `case-studies/vec-reverse/vec_reverse.rs:25:19-25:33`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `8`
- Statement hash: `8ba4cfc402fd3a77`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 i⟩ ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v_2 i⟩
-/
def assert_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/vec-reverse/vec_reverse.rs"
  startLine := 25
  startColumn := 19
  endLine := 25
  endColumn := 33
  assertId := "8"
  functionName := "vec_reverse.reverse"
  kind := "assert"
  statementHash := "8ba4cfc402fd3a77"
}
@[vrml_obligation] theorem assert_8
    (v : (Vermilion.Seq Int))
    (vrml_for_arb : Int)
    (v_2 : (Vermilion.Seq Int))
    (n : Int)
    (tmp_ : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_6 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_7 : 0 ≤ n)
    (loop_0_iteration_8 : n < (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod))
    (loop_0_iteration_9 : Vermilion.Seq.len v = Vermilion.Seq.len v_2)
    (loop_0_iteration_10 : (∀ (i : Int), (((0 ≤ i) ∧ (i < n)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_iteration_11 : (∀ (i : Int), (((0 ≤ i) ∧ (i < n)) → (Vermilion.Seq.index v i = Vermilion.Seq.index v_2 ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_iteration_12 : (∀ (i : Int), (((n ≤ i) ∧ ((i + n) < Vermilion.Seq.len v)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v i))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index v_2 n)
    (assert_7 : (0 ≤ (Vermilion.Seq.len v - 1)) ∧ ((Vermilion.Seq.len v - 1) < Vermilion.usizeMod)) :
    (0 ≤ ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n)) ∧ (((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) < Vermilion.usizeMod) := by
  vrml
-- vrml:end vec_reverse.reverse.assert_8

-- vrml:begin vec_reverse.reverse.call_requires_9 842b2729148e56ed
/--
Generated VC `vec_reverse.reverse.call_requires_9`.

- Rust source: `case-studies/vec-reverse/vec_reverse.rs:25:17-25:34`
- Rust/SST construct: call vec_index
- AssertId: `9`
- Statement hash: `842b2729148e56ed`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 i⟩ ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v_2 i⟩
-/
def call_requires_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/vec-reverse/vec_reverse.rs"
  startLine := 25
  startColumn := 17
  endLine := 25
  endColumn := 34
  assertId := "9"
  functionName := "vec_reverse.reverse"
  kind := "call_requires"
  statementHash := "842b2729148e56ed"
}
@[vrml_obligation] theorem call_requires_9
    (v : (Vermilion.Seq Int))
    (vrml_for_arb : Int)
    (v_2 : (Vermilion.Seq Int))
    (n : Int)
    (tmp_ : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_6 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_7 : 0 ≤ n)
    (loop_0_iteration_8 : n < (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod))
    (loop_0_iteration_9 : Vermilion.Seq.len v = Vermilion.Seq.len v_2)
    (loop_0_iteration_10 : (∀ (i : Int), (((0 ≤ i) ∧ (i < n)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_iteration_11 : (∀ (i : Int), (((0 ≤ i) ∧ (i < n)) → (Vermilion.Seq.index v i = Vermilion.Seq.index v_2 ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_iteration_12 : (∀ (i : Int), (((n ≤ i) ∧ ((i + n) < Vermilion.Seq.len v)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v i))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index v_2 n)
    (assert_7 : (0 ≤ (Vermilion.Seq.len v - 1)) ∧ ((Vermilion.Seq.len v - 1) < Vermilion.usizeMod))
    (assert_8 : (0 ≤ ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n)) ∧ (((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) < Vermilion.usizeMod)) :
    (Vermilion.emod ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) Vermilion.usizeMod) < Vermilion.Seq.len v_2 := by
  vrml
-- vrml:end vec_reverse.reverse.call_requires_9

-- vrml:begin vec_reverse.reverse.call_requires_10 c42404075b49144f
/--
Generated VC `vec_reverse.reverse.call_requires_10`.

- Rust source: `case-studies/vec-reverse/vec_reverse.rs:26:9-26:20`
- Rust/SST construct: call set
- AssertId: `10`
- Statement hash: `c42404075b49144f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 i⟩ ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v_2 i⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def call_requires_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/vec-reverse/vec_reverse.rs"
  startLine := 26
  startColumn := 9
  endLine := 26
  endColumn := 20
  assertId := "10"
  functionName := "vec_reverse.reverse"
  kind := "call_requires"
  statementHash := "c42404075b49144f"
}
@[vrml_obligation] theorem call_requires_10
    (v : (Vermilion.Seq Int))
    (vrml_for_arb : Int)
    (v_2 : (Vermilion.Seq Int))
    (n : Int)
    (tmp_ : Int)
    (tmp__2 : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_6 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_7 : 0 ≤ n)
    (loop_0_iteration_8 : n < (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod))
    (loop_0_iteration_9 : Vermilion.Seq.len v = Vermilion.Seq.len v_2)
    (loop_0_iteration_10 : (∀ (i : Int), (((0 ≤ i) ∧ (i < n)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_iteration_11 : (∀ (i : Int), (((0 ≤ i) ∧ (i < n)) → (Vermilion.Seq.index v i = Vermilion.Seq.index v_2 ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_iteration_12 : (∀ (i : Int), (((n ≤ i) ∧ ((i + n) < Vermilion.Seq.len v)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v i))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index v_2 n)
    (assert_7 : (0 ≤ (Vermilion.Seq.len v - 1)) ∧ ((Vermilion.Seq.len v - 1) < Vermilion.usizeMod))
    (assert_8 : (0 ≤ ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n)) ∧ (((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) < Vermilion.usizeMod))
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index v_2 (Vermilion.emod ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) Vermilion.usizeMod))
    (assume_19 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_20 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0)))) :
    n < Vermilion.Seq.len v_2 := by
  vrml
-- vrml:end vec_reverse.reverse.call_requires_10

-- vrml:begin vec_reverse.reverse.assert_11 f787987e00b10346
/--
Generated VC `vec_reverse.reverse.assert_11`.

- Rust source: `case-studies/vec-reverse/vec_reverse.rs:27:15-27:25`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `11`
- Statement hash: `f787987e00b10346`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 i⟩ ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v_2 i⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def assert_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/vec-reverse/vec_reverse.rs"
  startLine := 27
  startColumn := 15
  endLine := 27
  endColumn := 25
  assertId := "11"
  functionName := "vec_reverse.reverse"
  kind := "assert"
  statementHash := "f787987e00b10346"
}
@[vrml_obligation] theorem assert_11
    (v : (Vermilion.Seq Int))
    (vrml_for_arb : Int)
    (v_2 : (Vermilion.Seq Int))
    (n : Int)
    (tmp_ : Int)
    (tmp__2 : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_6 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_7 : 0 ≤ n)
    (loop_0_iteration_8 : n < (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod))
    (loop_0_iteration_9 : Vermilion.Seq.len v = Vermilion.Seq.len v_2)
    (loop_0_iteration_10 : (∀ (i : Int), (((0 ≤ i) ∧ (i < n)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_iteration_11 : (∀ (i : Int), (((0 ≤ i) ∧ (i < n)) → (Vermilion.Seq.index v i = Vermilion.Seq.index v_2 ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_iteration_12 : (∀ (i : Int), (((n ≤ i) ∧ ((i + n) < Vermilion.Seq.len v)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v i))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index v_2 n)
    (assert_7 : (0 ≤ (Vermilion.Seq.len v - 1)) ∧ ((Vermilion.Seq.len v - 1) < Vermilion.usizeMod))
    (assert_8 : (0 ≤ ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n)) ∧ (((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) < Vermilion.usizeMod))
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index v_2 (Vermilion.emod ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) Vermilion.usizeMod))
    (assume_19 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_20 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_set_ensures_0 : tmp__post = Vermilion.Seq.update v_2 n tmp__2) :
    (0 ≤ (Vermilion.Seq.len v - 1)) ∧ ((Vermilion.Seq.len v - 1) < Vermilion.usizeMod) := by
  vrml
-- vrml:end vec_reverse.reverse.assert_11

-- vrml:begin vec_reverse.reverse.assert_12 3ca8833176514e2d
/--
Generated VC `vec_reverse.reverse.assert_12`.

- Rust source: `case-studies/vec-reverse/vec_reverse.rs:27:15-27:29`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `12`
- Statement hash: `3ca8833176514e2d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 i⟩ ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v_2 i⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def assert_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/vec-reverse/vec_reverse.rs"
  startLine := 27
  startColumn := 15
  endLine := 27
  endColumn := 29
  assertId := "12"
  functionName := "vec_reverse.reverse"
  kind := "assert"
  statementHash := "3ca8833176514e2d"
}
@[vrml_obligation] theorem assert_12
    (v : (Vermilion.Seq Int))
    (vrml_for_arb : Int)
    (v_2 : (Vermilion.Seq Int))
    (n : Int)
    (tmp_ : Int)
    (tmp__2 : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_6 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_7 : 0 ≤ n)
    (loop_0_iteration_8 : n < (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod))
    (loop_0_iteration_9 : Vermilion.Seq.len v = Vermilion.Seq.len v_2)
    (loop_0_iteration_10 : (∀ (i : Int), (((0 ≤ i) ∧ (i < n)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_iteration_11 : (∀ (i : Int), (((0 ≤ i) ∧ (i < n)) → (Vermilion.Seq.index v i = Vermilion.Seq.index v_2 ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_iteration_12 : (∀ (i : Int), (((n ≤ i) ∧ ((i + n) < Vermilion.Seq.len v)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v i))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index v_2 n)
    (assert_7 : (0 ≤ (Vermilion.Seq.len v - 1)) ∧ ((Vermilion.Seq.len v - 1) < Vermilion.usizeMod))
    (assert_8 : (0 ≤ ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n)) ∧ (((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) < Vermilion.usizeMod))
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index v_2 (Vermilion.emod ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) Vermilion.usizeMod))
    (assume_19 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_20 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_set_ensures_0 : tmp__post = Vermilion.Seq.update v_2 n tmp__2)
    (assert_11 : (0 ≤ (Vermilion.Seq.len v - 1)) ∧ ((Vermilion.Seq.len v - 1) < Vermilion.usizeMod)) :
    (0 ≤ ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n)) ∧ (((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) < Vermilion.usizeMod) := by
  vrml
-- vrml:end vec_reverse.reverse.assert_12

-- vrml:begin vec_reverse.reverse.call_requires_13 38afd66445bfb98a
/--
Generated VC `vec_reverse.reverse.call_requires_13`.

- Rust source: `case-studies/vec-reverse/vec_reverse.rs:27:9-27:33`
- Rust/SST construct: call set
- AssertId: `13`
- Statement hash: `38afd66445bfb98a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 i⟩ ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v_2 i⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩
-/
def call_requires_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/vec-reverse/vec_reverse.rs"
  startLine := 27
  startColumn := 9
  endLine := 27
  endColumn := 33
  assertId := "13"
  functionName := "vec_reverse.reverse"
  kind := "call_requires"
  statementHash := "38afd66445bfb98a"
}
@[vrml_obligation] theorem call_requires_13
    (v : (Vermilion.Seq Int))
    (vrml_for_arb : Int)
    (v_2 : (Vermilion.Seq Int))
    (n : Int)
    (tmp_ : Int)
    (tmp__2 : Int)
    (tmp__post : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_6 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_7 : 0 ≤ n)
    (loop_0_iteration_8 : n < (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod))
    (loop_0_iteration_9 : Vermilion.Seq.len v = Vermilion.Seq.len v_2)
    (loop_0_iteration_10 : (∀ (i : Int), (((0 ≤ i) ∧ (i < n)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_iteration_11 : (∀ (i : Int), (((0 ≤ i) ∧ (i < n)) → (Vermilion.Seq.index v i = Vermilion.Seq.index v_2 ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_iteration_12 : (∀ (i : Int), (((n ≤ i) ∧ ((i + n) < Vermilion.Seq.len v)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v i))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index v_2 n)
    (assert_7 : (0 ≤ (Vermilion.Seq.len v - 1)) ∧ ((Vermilion.Seq.len v - 1) < Vermilion.usizeMod))
    (assert_8 : (0 ≤ ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n)) ∧ (((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) < Vermilion.usizeMod))
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index v_2 (Vermilion.emod ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) Vermilion.usizeMod))
    (assume_19 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_20 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_set_ensures_0 : tmp__post = Vermilion.Seq.update v_2 n tmp__2)
    (assert_11 : (0 ≤ (Vermilion.Seq.len v - 1)) ∧ ((Vermilion.Seq.len v - 1) < Vermilion.usizeMod))
    (assert_12 : (0 ≤ ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n)) ∧ (((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) < Vermilion.usizeMod))
    (assume_24 : (0 ≤ Vermilion.Seq.len tmp__post_2) ∧ (Vermilion.Seq.len tmp__post_2 < Vermilion.usizeMod))
    (assume_25 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0)))) :
    (Vermilion.emod ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) Vermilion.usizeMod) < Vermilion.Seq.len tmp__post := by
  vrml
-- vrml:end vec_reverse.reverse.call_requires_13

-- vrml:begin vec_reverse.reverse.invariant_preserve_0_4 9d09957ccce45d6f
/--
Generated VC `vec_reverse.reverse.invariant_preserve_0_4`.

- Rust source: `case-studies/vec-reverse/vec_reverse.rs:19:13-19:30`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_4`
- Statement hash: `9d09957ccce45d6f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 i⟩ ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v_2 i⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩
-/
def invariant_preserve_0_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/vec-reverse/vec_reverse.rs"
  startLine := 19
  startColumn := 13
  endLine := 19
  endColumn := 30
  assertId := "0_4"
  functionName := "vec_reverse.reverse"
  kind := "invariant_preserve"
  statementHash := "9d09957ccce45d6f"
}
@[vrml_obligation] theorem invariant_preserve_0_4
    (v : (Vermilion.Seq Int))
    (vrml_for_arb : Int)
    (v_2 : (Vermilion.Seq Int))
    (n : Int)
    (tmp_ : Int)
    (tmp__2 : Int)
    (tmp__post : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_6 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_7 : 0 ≤ n)
    (loop_0_iteration_8 : n < (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod))
    (loop_0_iteration_9 : Vermilion.Seq.len v = Vermilion.Seq.len v_2)
    (loop_0_iteration_10 : (∀ (i : Int), (((0 ≤ i) ∧ (i < n)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_iteration_11 : (∀ (i : Int), (((0 ≤ i) ∧ (i < n)) → (Vermilion.Seq.index v i = Vermilion.Seq.index v_2 ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_iteration_12 : (∀ (i : Int), (((n ≤ i) ∧ ((i + n) < Vermilion.Seq.len v)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v i))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index v_2 n)
    (assert_7 : (0 ≤ (Vermilion.Seq.len v - 1)) ∧ ((Vermilion.Seq.len v - 1) < Vermilion.usizeMod))
    (assert_8 : (0 ≤ ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n)) ∧ (((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) < Vermilion.usizeMod))
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index v_2 (Vermilion.emod ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) Vermilion.usizeMod))
    (assume_19 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_20 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_set_ensures_0 : tmp__post = Vermilion.Seq.update v_2 n tmp__2)
    (assert_11 : (0 ≤ (Vermilion.Seq.len v - 1)) ∧ ((Vermilion.Seq.len v - 1) < Vermilion.usizeMod))
    (assert_12 : (0 ≤ ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n)) ∧ (((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) < Vermilion.usizeMod))
    (assume_24 : (0 ≤ Vermilion.Seq.len tmp__post_2) ∧ (Vermilion.Seq.len tmp__post_2 < Vermilion.usizeMod))
    (assume_25 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (call_set_1_ensures_0 : tmp__post_2 = Vermilion.Seq.update tmp__post (Vermilion.emod ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) Vermilion.usizeMod) tmp_) :
    Vermilion.Seq.len v = Vermilion.Seq.len tmp__post_2 := by
  vrml
-- vrml:end vec_reverse.reverse.invariant_preserve_0_4

-- vrml:begin vec_reverse.reverse.invariant_preserve_0_5 ddedbe8588f53067
/--
Generated VC `vec_reverse.reverse.invariant_preserve_0_5`.

- Rust source: `case-studies/vec-reverse/vec_reverse.rs:20:13-20:69`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_5`
- Statement hash: `ddedbe8588f53067`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index tmp__post_2 i⟩ ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 i⟩ ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v_2 i⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩
-/
def invariant_preserve_0_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/vec-reverse/vec_reverse.rs"
  startLine := 20
  startColumn := 13
  endLine := 20
  endColumn := 69
  assertId := "0_5"
  functionName := "vec_reverse.reverse"
  kind := "invariant_preserve"
  statementHash := "ddedbe8588f53067"
}
@[vrml_obligation] theorem invariant_preserve_0_5
    (v : (Vermilion.Seq Int))
    (vrml_for_arb : Int)
    (v_2 : (Vermilion.Seq Int))
    (n : Int)
    (tmp_ : Int)
    (tmp__2 : Int)
    (tmp__post : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_6 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_7 : 0 ≤ n)
    (loop_0_iteration_8 : n < (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod))
    (loop_0_iteration_9 : Vermilion.Seq.len v = Vermilion.Seq.len v_2)
    (loop_0_iteration_10 : (∀ (i : Int), (((0 ≤ i) ∧ (i < n)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_iteration_11 : (∀ (i : Int), (((0 ≤ i) ∧ (i < n)) → (Vermilion.Seq.index v i = Vermilion.Seq.index v_2 ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_iteration_12 : (∀ (i : Int), (((n ≤ i) ∧ ((i + n) < Vermilion.Seq.len v)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v i))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index v_2 n)
    (assert_7 : (0 ≤ (Vermilion.Seq.len v - 1)) ∧ ((Vermilion.Seq.len v - 1) < Vermilion.usizeMod))
    (assert_8 : (0 ≤ ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n)) ∧ (((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) < Vermilion.usizeMod))
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index v_2 (Vermilion.emod ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) Vermilion.usizeMod))
    (assume_19 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_20 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_set_ensures_0 : tmp__post = Vermilion.Seq.update v_2 n tmp__2)
    (assert_11 : (0 ≤ (Vermilion.Seq.len v - 1)) ∧ ((Vermilion.Seq.len v - 1) < Vermilion.usizeMod))
    (assert_12 : (0 ≤ ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n)) ∧ (((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) < Vermilion.usizeMod))
    (assume_24 : (0 ≤ Vermilion.Seq.len tmp__post_2) ∧ (Vermilion.Seq.len tmp__post_2 < Vermilion.usizeMod))
    (assume_25 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (call_set_1_ensures_0 : tmp__post_2 = Vermilion.Seq.update tmp__post (Vermilion.emod ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) Vermilion.usizeMod) tmp_) :
    (∀ (i : Int), (((0 ≤ i) ∧ (i < (n + 1))) → (Vermilion.Seq.index tmp__post_2 i = Vermilion.Seq.index v ((Vermilion.Seq.len v - i) - 1)))) := by
  have hlen := loop_0_iteration_0
  try simp only [Vermilion.inUnsignedRange] at hlen
  have hlen0 := Vermilion.Seq.len_nonneg v
  have hhalf : Vermilion.emod (Vermilion.Seq.len v / 2) Vermilion.usizeMod =
      Vermilion.Seq.len v / 2 := Vermilion.emod_usizeMod_of_lt (by omega) (by omega)
  have hbaseRange := assert_7
  try simp only [Vermilion.inUnsignedRange] at hbaseRange
  have hbase : Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod =
      Vermilion.Seq.len v - 1 := Vermilion.emod_usizeMod_of_lt hbaseRange.1 hbaseRange.2
  simp_rw [hhalf, hbase] at *
  have hmirrorRange := assert_8
  try simp only [Vermilion.inUnsignedRange] at hmirrorRange
  have hmirror : Vermilion.emod ((Vermilion.Seq.len v - 1) - n) Vermilion.usizeMod =
      (Vermilion.Seq.len v - 1) - n :=
    Vermilion.emod_usizeMod_of_lt hmirrorRange.1 hmirrorRange.2
  simp_rw [hmirror] at *
  -- Swap step, left half: slot n now holds the mirror value v₂[len−1−n],
  -- which the untouched-middle invariant equates with v's; slots below n
  -- are untouched by both updates and carry the old invariant.
  subst call_set_1_ensures_0
  subst call_set_ensures_0
  rintro i ⟨hi0, hin⟩
  by_cases hcase : i = n
  · subst hcase
    rw [Vermilion.Seq.index_update_other (Vermilion.Seq.update v_2 i tmp__2) i tmp_
          ((Vermilion.Seq.len v - 1) - i) (by omega),
        Vermilion.Seq.index_update_same v_2 i tmp__2 (by omega) (by omega),
        call_vec_index_1_ensures_1]
    have hm : (Vermilion.Seq.len v - i) - 1 = (Vermilion.Seq.len v - 1) - i := by omega
    rw [hm]
    exact loop_0_iteration_12 ((Vermilion.Seq.len v - 1) - i) ⟨by omega, by omega⟩
  · rw [Vermilion.Seq.index_update_other (Vermilion.Seq.update v_2 n tmp__2) i tmp_
          ((Vermilion.Seq.len v - 1) - n) (by omega),
        Vermilion.Seq.index_update_other v_2 i tmp__2 n (by omega)]
    exact loop_0_iteration_10 i ⟨hi0, by omega⟩
-- vrml:end vec_reverse.reverse.invariant_preserve_0_5

-- vrml:begin vec_reverse.reverse.invariant_preserve_0_6 51c2eb2b8f87eab3
/--
Generated VC `vec_reverse.reverse.invariant_preserve_0_6`.

- Rust source: `case-studies/vec-reverse/vec_reverse.rs:21:13-21:69`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_6`
- Statement hash: `51c2eb2b8f87eab3`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 i⟩ ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v_2 i⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩
-/
def invariant_preserve_0_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/vec-reverse/vec_reverse.rs"
  startLine := 21
  startColumn := 13
  endLine := 21
  endColumn := 69
  assertId := "0_6"
  functionName := "vec_reverse.reverse"
  kind := "invariant_preserve"
  statementHash := "51c2eb2b8f87eab3"
}
@[vrml_obligation] theorem invariant_preserve_0_6
    (v : (Vermilion.Seq Int))
    (vrml_for_arb : Int)
    (v_2 : (Vermilion.Seq Int))
    (n : Int)
    (tmp_ : Int)
    (tmp__2 : Int)
    (tmp__post : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_6 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_7 : 0 ≤ n)
    (loop_0_iteration_8 : n < (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod))
    (loop_0_iteration_9 : Vermilion.Seq.len v = Vermilion.Seq.len v_2)
    (loop_0_iteration_10 : (∀ (i : Int), (((0 ≤ i) ∧ (i < n)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_iteration_11 : (∀ (i : Int), (((0 ≤ i) ∧ (i < n)) → (Vermilion.Seq.index v i = Vermilion.Seq.index v_2 ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_iteration_12 : (∀ (i : Int), (((n ≤ i) ∧ ((i + n) < Vermilion.Seq.len v)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v i))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index v_2 n)
    (assert_7 : (0 ≤ (Vermilion.Seq.len v - 1)) ∧ ((Vermilion.Seq.len v - 1) < Vermilion.usizeMod))
    (assert_8 : (0 ≤ ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n)) ∧ (((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) < Vermilion.usizeMod))
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index v_2 (Vermilion.emod ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) Vermilion.usizeMod))
    (assume_19 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_20 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_set_ensures_0 : tmp__post = Vermilion.Seq.update v_2 n tmp__2)
    (assert_11 : (0 ≤ (Vermilion.Seq.len v - 1)) ∧ ((Vermilion.Seq.len v - 1) < Vermilion.usizeMod))
    (assert_12 : (0 ≤ ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n)) ∧ (((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) < Vermilion.usizeMod))
    (assume_24 : (0 ≤ Vermilion.Seq.len tmp__post_2) ∧ (Vermilion.Seq.len tmp__post_2 < Vermilion.usizeMod))
    (assume_25 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (call_set_1_ensures_0 : tmp__post_2 = Vermilion.Seq.update tmp__post (Vermilion.emod ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) Vermilion.usizeMod) tmp_) :
    (∀ (i : Int), (((0 ≤ i) ∧ (i < (n + 1))) → (Vermilion.Seq.index v i = Vermilion.Seq.index tmp__post_2 ((Vermilion.Seq.len v - i) - 1)))) := by
  have hlen := loop_0_iteration_0
  try simp only [Vermilion.inUnsignedRange] at hlen
  have hlen0 := Vermilion.Seq.len_nonneg v
  have hhalf : Vermilion.emod (Vermilion.Seq.len v / 2) Vermilion.usizeMod =
      Vermilion.Seq.len v / 2 := Vermilion.emod_usizeMod_of_lt (by omega) (by omega)
  have hbaseRange := assert_7
  try simp only [Vermilion.inUnsignedRange] at hbaseRange
  have hbase : Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod =
      Vermilion.Seq.len v - 1 := Vermilion.emod_usizeMod_of_lt hbaseRange.1 hbaseRange.2
  simp_rw [hhalf, hbase] at *
  have hmirrorRange := assert_8
  try simp only [Vermilion.inUnsignedRange] at hmirrorRange
  have hmirror : Vermilion.emod ((Vermilion.Seq.len v - 1) - n) Vermilion.usizeMod =
      (Vermilion.Seq.len v - 1) - n :=
    Vermilion.emod_usizeMod_of_lt hmirrorRange.1 hmirrorRange.2
  simp_rw [hmirror] at *
  -- Swap step, right half: the mirror slot len−1−n now holds v₂[n]
  -- (= v[n] by the untouched middle); mirrors of i < n sit above the
  -- written region and carry the old invariant.
  subst call_set_1_ensures_0
  subst call_set_ensures_0
  rintro i ⟨hi0, hin⟩
  by_cases hcase : i = n
  · subst hcase
    have hj : (Vermilion.Seq.len v - i) - 1 = (Vermilion.Seq.len v - 1) - i := by omega
    rw [hj,
        Vermilion.Seq.index_update_same (Vermilion.Seq.update v_2 i tmp__2)
          ((Vermilion.Seq.len v - 1) - i) tmp_ (by omega)
          (by rw [Vermilion.Seq.len_update]; omega),
        call_vec_index_ensures_1]
    exact (loop_0_iteration_12 i ⟨by omega, by omega⟩).symm
  · rw [Vermilion.Seq.index_update_other (Vermilion.Seq.update v_2 n tmp__2)
          ((Vermilion.Seq.len v - i) - 1) tmp_ ((Vermilion.Seq.len v - 1) - n) (by omega),
        Vermilion.Seq.index_update_other v_2 ((Vermilion.Seq.len v - i) - 1) tmp__2 n (by omega)]
    exact loop_0_iteration_11 i ⟨hi0, by omega⟩
-- vrml:end vec_reverse.reverse.invariant_preserve_0_6

-- vrml:begin vec_reverse.reverse.invariant_preserve_0_7 666c000f6eb98ad5
/--
Generated VC `vec_reverse.reverse.invariant_preserve_0_7`.

- Rust source: `case-studies/vec-reverse/vec_reverse.rs:22:13-22:81`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_7`
- Statement hash: `666c000f6eb98ad5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index tmp__post_2 i⟩ ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 i⟩ ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v_2 i⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩
-/
def invariant_preserve_0_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/vec-reverse/vec_reverse.rs"
  startLine := 22
  startColumn := 13
  endLine := 22
  endColumn := 81
  assertId := "0_7"
  functionName := "vec_reverse.reverse"
  kind := "invariant_preserve"
  statementHash := "666c000f6eb98ad5"
}
@[vrml_obligation] theorem invariant_preserve_0_7
    (v : (Vermilion.Seq Int))
    (vrml_for_arb : Int)
    (v_2 : (Vermilion.Seq Int))
    (n : Int)
    (tmp_ : Int)
    (tmp__2 : Int)
    (tmp__post : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_6 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_7 : 0 ≤ n)
    (loop_0_iteration_8 : n < (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod))
    (loop_0_iteration_9 : Vermilion.Seq.len v = Vermilion.Seq.len v_2)
    (loop_0_iteration_10 : (∀ (i : Int), (((0 ≤ i) ∧ (i < n)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_iteration_11 : (∀ (i : Int), (((0 ≤ i) ∧ (i < n)) → (Vermilion.Seq.index v i = Vermilion.Seq.index v_2 ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_iteration_12 : (∀ (i : Int), (((n ≤ i) ∧ ((i + n) < Vermilion.Seq.len v)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v i))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index v_2 n)
    (assert_7 : (0 ≤ (Vermilion.Seq.len v - 1)) ∧ ((Vermilion.Seq.len v - 1) < Vermilion.usizeMod))
    (assert_8 : (0 ≤ ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n)) ∧ (((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) < Vermilion.usizeMod))
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index v_2 (Vermilion.emod ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) Vermilion.usizeMod))
    (assume_19 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_20 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_set_ensures_0 : tmp__post = Vermilion.Seq.update v_2 n tmp__2)
    (assert_11 : (0 ≤ (Vermilion.Seq.len v - 1)) ∧ ((Vermilion.Seq.len v - 1) < Vermilion.usizeMod))
    (assert_12 : (0 ≤ ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n)) ∧ (((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) < Vermilion.usizeMod))
    (assume_24 : (0 ≤ Vermilion.Seq.len tmp__post_2) ∧ (Vermilion.Seq.len tmp__post_2 < Vermilion.usizeMod))
    (assume_25 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (call_set_1_ensures_0 : tmp__post_2 = Vermilion.Seq.update tmp__post (Vermilion.emod ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) Vermilion.usizeMod) tmp_) :
    (∀ (i : Int), ((((n + 1) ≤ i) ∧ ((i + (n + 1)) < Vermilion.Seq.len v)) → (Vermilion.Seq.index tmp__post_2 i = Vermilion.Seq.index v i))) := by
  have hlen := loop_0_iteration_0
  try simp only [Vermilion.inUnsignedRange] at hlen
  have hlen0 := Vermilion.Seq.len_nonneg v
  have hhalf : Vermilion.emod (Vermilion.Seq.len v / 2) Vermilion.usizeMod =
      Vermilion.Seq.len v / 2 := Vermilion.emod_usizeMod_of_lt (by omega) (by omega)
  have hbaseRange := assert_7
  try simp only [Vermilion.inUnsignedRange] at hbaseRange
  have hbase : Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod =
      Vermilion.Seq.len v - 1 := Vermilion.emod_usizeMod_of_lt hbaseRange.1 hbaseRange.2
  simp_rw [hhalf, hbase] at *
  have hmirrorRange := assert_8
  try simp only [Vermilion.inUnsignedRange] at hmirrorRange
  have hmirror : Vermilion.emod ((Vermilion.Seq.len v - 1) - n) Vermilion.usizeMod =
      (Vermilion.Seq.len v - 1) - n :=
    Vermilion.emod_usizeMod_of_lt hmirrorRange.1 hmirrorRange.2
  simp_rw [hmirror] at *
  -- Untouched middle: the narrowed band sits strictly between the two
  -- written slots (n < i and i + n + 1 < len ⇒ i < len−1−n).
  subst call_set_1_ensures_0
  subst call_set_ensures_0
  rintro i ⟨hi0, hin⟩
  rw [Vermilion.Seq.index_update_other (Vermilion.Seq.update v_2 n tmp__2) i tmp_
        ((Vermilion.Seq.len v - 1) - n) (by omega),
      Vermilion.Seq.index_update_other v_2 i tmp__2 n (by omega)]
  exact loop_0_iteration_12 i ⟨by omega, by omega⟩
-- vrml:end vec_reverse.reverse.invariant_preserve_0_7

-- vrml:begin vec_reverse.reverse.assert_0_decreases 95a9a171669f1352
/--
Generated VC `vec_reverse.reverse.assert_0_decreases`.

- Rust source: `case-studies/vec-reverse/vec_reverse.rs:17:5-28:6`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `95a9a171669f1352`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 i⟩ ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v_2 i⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/vec-reverse/vec_reverse.rs"
  startLine := 17
  startColumn := 5
  endLine := 28
  endColumn := 6
  assertId := "0_decreases"
  functionName := "vec_reverse.reverse"
  kind := "assert"
  statementHash := "95a9a171669f1352"
}
@[vrml_obligation] theorem assert_0_decreases
    (v : (Vermilion.Seq Int))
    (vrml_for_arb : Int)
    (v_2 : (Vermilion.Seq Int))
    (n : Int)
    (tmp_ : Int)
    (tmp__2 : Int)
    (tmp__post : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_iteration_4 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_6 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_7 : 0 ≤ n)
    (loop_0_iteration_8 : n < (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod))
    (loop_0_iteration_9 : Vermilion.Seq.len v = Vermilion.Seq.len v_2)
    (loop_0_iteration_10 : (∀ (i : Int), (((0 ≤ i) ∧ (i < n)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_iteration_11 : (∀ (i : Int), (((0 ≤ i) ∧ (i < n)) → (Vermilion.Seq.index v i = Vermilion.Seq.index v_2 ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_iteration_12 : (∀ (i : Int), (((n ≤ i) ∧ ((i + n) < Vermilion.Seq.len v)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v i))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index v_2 n)
    (assert_7 : (0 ≤ (Vermilion.Seq.len v - 1)) ∧ ((Vermilion.Seq.len v - 1) < Vermilion.usizeMod))
    (assert_8 : (0 ≤ ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n)) ∧ (((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) < Vermilion.usizeMod))
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index v_2 (Vermilion.emod ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) Vermilion.usizeMod))
    (assume_19 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_20 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_set_ensures_0 : tmp__post = Vermilion.Seq.update v_2 n tmp__2)
    (assert_11 : (0 ≤ (Vermilion.Seq.len v - 1)) ∧ ((Vermilion.Seq.len v - 1) < Vermilion.usizeMod))
    (assert_12 : (0 ≤ ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n)) ∧ (((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) < Vermilion.usizeMod))
    (assume_24 : (0 ≤ Vermilion.Seq.len tmp__post_2) ∧ (Vermilion.Seq.len tmp__post_2 < Vermilion.usizeMod))
    (assume_25 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (call_set_1_ensures_0 : tmp__post_2 = Vermilion.Seq.update tmp__post (Vermilion.emod ((Vermilion.emod (Vermilion.Seq.len v - 1) Vermilion.usizeMod) - n) Vermilion.usizeMod) tmp_) :
    (0 ≤ ((Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod) - (n + 1))) ∧ (((Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod) - (n + 1)) < ((Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod) - n)) := by
  vrml
-- vrml:end vec_reverse.reverse.assert_0_decreases

-- vrml:begin vec_reverse.reverse.ensures_14_0 ac936c66f59f783f
/--
Generated VC `vec_reverse.reverse.ensures_14_0`.

- Rust source: `case-studies/vec-reverse/vec_reverse.rs:12:9-12:39`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `14_0`
- Statement hash: `ac936c66f59f783f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 i⟩ ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v_2 i⟩
-/
def ensures_14_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/vec-reverse/vec_reverse.rs"
  startLine := 12
  startColumn := 9
  endLine := 12
  endColumn := 39
  assertId := "14_0"
  functionName := "vec_reverse.reverse"
  kind := "ensures"
  statementHash := "ac936c66f59f783f"
}
@[vrml_obligation] theorem ensures_14_0
    (v : (Vermilion.Seq Int))
    (vrml_for_arb : Int)
    (v_2 : (Vermilion.Seq Int))
    (n : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (assume_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (assert_1 : 2 ≠ 0)
    (assume_4 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_exit_0 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_exit_2 : Vermilion.Seq.len v = Vermilion.Seq.len v_2)
    (loop_0_exit_3 : (∀ (i : Int), (((0 ≤ i) ∧ (i < (Vermilion.iteP (0 ≤ (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod)) (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod) vrml_for_arb))) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_exit_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < (Vermilion.iteP (0 ≤ (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod)) (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod) vrml_for_arb))) → (Vermilion.Seq.index v i = Vermilion.Seq.index v_2 ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_exit_5 : (∀ (i : Int), ((((Vermilion.iteP (0 ≤ (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod)) (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod) vrml_for_arb) ≤ i) ∧ ((i + (Vermilion.iteP (0 ≤ (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod)) (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod) vrml_for_arb)) < Vermilion.Seq.len v)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v i)))) :
    Vermilion.Seq.len v_2 = Vermilion.Seq.len v := by
  vrml
-- vrml:end vec_reverse.reverse.ensures_14_0

-- vrml:begin vec_reverse.reverse.ensures_14_1 a96be8702b29da63
/--
Generated VC `vec_reverse.reverse.ensures_14_1`.

- Rust source: `case-studies/vec-reverse/vec_reverse.rs:13:9-13:93`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `14_1`
- Statement hash: `a96be8702b29da63`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v_2 i⟩ ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 i⟩ ⟨Vermilion.Seq.index v i⟩ ⟨Vermilion.Seq.index v_2 i⟩
-/
def ensures_14_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/vec-reverse/vec_reverse.rs"
  startLine := 13
  startColumn := 9
  endLine := 13
  endColumn := 93
  assertId := "14_1"
  functionName := "vec_reverse.reverse"
  kind := "ensures"
  statementHash := "a96be8702b29da63"
}
@[vrml_obligation] theorem ensures_14_1
    (v : (Vermilion.Seq Int))
    (vrml_for_arb : Int)
    (v_2 : (Vermilion.Seq Int))
    (n : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (assume_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (assert_1 : 2 ≠ 0)
    (assume_4 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_exit_0 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_exit_2 : Vermilion.Seq.len v = Vermilion.Seq.len v_2)
    (loop_0_exit_3 : (∀ (i : Int), (((0 ≤ i) ∧ (i < (Vermilion.iteP (0 ≤ (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod)) (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod) vrml_for_arb))) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_exit_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < (Vermilion.iteP (0 ≤ (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod)) (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod) vrml_for_arb))) → (Vermilion.Seq.index v i = Vermilion.Seq.index v_2 ((Vermilion.Seq.len v - i) - 1)))))
    (loop_0_exit_5 : (∀ (i : Int), ((((Vermilion.iteP (0 ≤ (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod)) (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod) vrml_for_arb) ≤ i) ∧ ((i + (Vermilion.iteP (0 ≤ (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod)) (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod) vrml_for_arb)) < Vermilion.Seq.len v)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v i)))) :
    (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len v)) → (Vermilion.Seq.index v_2 i = Vermilion.Seq.index v ((Vermilion.Seq.len v - i) - 1)))) := by
  -- Interactive: normalize the exact half-length clip, then split each
  -- index into the reversed left half, reversed right half, and (for odd
  -- lengths) the untouched middle point.
  have hnn := Vermilion.Seq.len_nonneg v
  have hlen := requires_0
  try simp only [Vermilion.inUnsignedRange] at hlen
  have hhalf : Vermilion.emod (Vermilion.Seq.len v / 2) Vermilion.usizeMod =
      Vermilion.Seq.len v / 2 := Vermilion.emod_usizeMod_of_lt (by omega) (by omega)
  simp_rw [hhalf] at loop_0_exit_3 loop_0_exit_4 loop_0_exit_5
  have hmid : Vermilion.iteP (0 ≤ ((Vermilion.Seq.len v) / 2))
      ((Vermilion.Seq.len v) / 2) vrml_for_arb = (Vermilion.Seq.len v) / 2 :=
    Vermilion.iteP_pos (by omega) _ _
  rw [hmid] at loop_0_exit_3 loop_0_exit_4 loop_0_exit_5
  rintro i ⟨hi0, hilen⟩
  by_cases hleft : i < (Vermilion.Seq.len v) / 2
  · exact loop_0_exit_3 i ⟨hi0, hleft⟩
  · by_cases hright : (Vermilion.Seq.len v - i) - 1 < (Vermilion.Seq.len v) / 2
    · have hmirror := loop_0_exit_4 ((Vermilion.Seq.len v - i) - 1) ⟨by omega, hright⟩
      have hix : (Vermilion.Seq.len v - ((Vermilion.Seq.len v - i) - 1)) - 1 = i := by omega
      rw [hix] at hmirror
      exact hmirror.symm
    · have hcenter : i = (Vermilion.Seq.len v - i) - 1 := by omega
      rw [← hcenter]
      exact loop_0_exit_5 i ⟨by omega, by omega⟩
-- vrml:end vec_reverse.reverse.ensures_14_1

end vec_reverse.reverse

