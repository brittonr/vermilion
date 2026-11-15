import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace vec_set.zero_prefix

-- vrml:begin vec_set.zero_prefix.invariant_entry_0_0 3daaf7df9a6719de
/--
Generated VC `vec_set.zero_prefix.invariant_entry_0_0`.

- Rust source: `examples/m3-vec-set/vec_set.rs:43:13-43:19`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `3daaf7df9a6719de`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 43
  startColumn := 13
  endLine := 43
  endColumn := 19
  assertId := "0_0"
  functionName := "vec_set.zero_prefix"
  kind := "invariant_entry"
  statementHash := "3daaf7df9a6719de"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (v : (Vermilion.Seq Int))
    (n : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (requires_3 : n ≤ Vermilion.Seq.len v) :
    0 ≤ n := by
  vrml
-- vrml:end vec_set.zero_prefix.invariant_entry_0_0

-- vrml:begin vec_set.zero_prefix.invariant_entry_0_1 180e82ab8255d735
/--
Generated VC `vec_set.zero_prefix.invariant_entry_0_1`.

- Rust source: `examples/m3-vec-set/vec_set.rs:44:13-44:25`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `180e82ab8255d735`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 44
  startColumn := 13
  endLine := 44
  endColumn := 25
  assertId := "0_1"
  functionName := "vec_set.zero_prefix"
  kind := "invariant_entry"
  statementHash := "180e82ab8255d735"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (v : (Vermilion.Seq Int))
    (n : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (requires_3 : n ≤ Vermilion.Seq.len v) :
    n ≤ Vermilion.Seq.len v := by
  vrml
-- vrml:end vec_set.zero_prefix.invariant_entry_0_1

-- vrml:begin vec_set.zero_prefix.invariant_entry_0_2 acb7f649ce35fb84
/--
Generated VC `vec_set.zero_prefix.invariant_entry_0_2`.

- Rust source: `examples/m3-vec-set/vec_set.rs:45:13-45:36`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_2`
- Statement hash: `acb7f649ce35fb84`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩
-/
def invariant_entry_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 45
  startColumn := 13
  endLine := 45
  endColumn := 36
  assertId := "0_2"
  functionName := "vec_set.zero_prefix"
  kind := "invariant_entry"
  statementHash := "acb7f649ce35fb84"
}
@[vrml_obligation] theorem invariant_entry_0_2
    (v : (Vermilion.Seq Int))
    (n : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (requires_3 : n ≤ Vermilion.Seq.len v) :
    Vermilion.Seq.len v = Vermilion.Seq.len v := by
  vrml
-- vrml:end vec_set.zero_prefix.invariant_entry_0_2

-- vrml:begin vec_set.zero_prefix.invariant_entry_0_3 06c89e17626b09b6
/--
Generated VC `vec_set.zero_prefix.invariant_entry_0_3`.

- Rust source: `examples/m3-vec-set/vec_set.rs:46:13-46:52`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_3`
- Statement hash: `06c89e17626b09b6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v k⟩ ⟨Vermilion.Seq.index v vrml_i0⟩
-/
def invariant_entry_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 46
  startColumn := 13
  endLine := 46
  endColumn := 52
  assertId := "0_3"
  functionName := "vec_set.zero_prefix"
  kind := "invariant_entry"
  statementHash := "06c89e17626b09b6"
}
@[vrml_obligation] theorem invariant_entry_0_3
    (v : (Vermilion.Seq Int))
    (n : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (requires_3 : n ≤ Vermilion.Seq.len v) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < 0)) → (Vermilion.Seq.index v k = 0))) := by
  vrml
-- vrml:end vec_set.zero_prefix.invariant_entry_0_3

-- vrml:begin vec_set.zero_prefix.call_requires_0 6dc0d0a10223b1b1
/--
Generated VC `vec_set.zero_prefix.call_requires_0`.

- Rust source: `examples/m3-vec-set/vec_set.rs:49:9-49:20`
- Rust/SST construct: call set
- AssertId: `0`
- Statement hash: `6dc0d0a10223b1b1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 k⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def call_requires_0_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 49
  startColumn := 9
  endLine := 49
  endColumn := 20
  assertId := "0"
  functionName := "vec_set.zero_prefix"
  kind := "call_requires"
  statementHash := "6dc0d0a10223b1b1"
}
@[vrml_obligation] theorem call_requires_0
    (v : (Vermilion.Seq Int))
    (n : Int)
    (v_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_5 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_6 : i ≤ n)
    (loop_0_iteration_7 : n ≤ Vermilion.Seq.len v_2)
    (loop_0_iteration_8 : Vermilion.Seq.len v_2 = Vermilion.Seq.len v)
    (loop_0_iteration_9 : (∀ (k : Int), (((0 ≤ k) ∧ (k < i)) → (Vermilion.Seq.index v_2 k = 0))))
    (loop_0_iteration_10 : i < n)
    (assume_11 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0)))) :
    i < Vermilion.Seq.len v_2 := by
  vrml
-- vrml:end vec_set.zero_prefix.call_requires_0

-- vrml:begin vec_set.zero_prefix.assert_1 cef28fbfc221e1db
/--
Generated VC `vec_set.zero_prefix.assert_1`.

- Rust source: `examples/m3-vec-set/vec_set.rs:50:13-50:18`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `1`
- Statement hash: `cef28fbfc221e1db`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 k⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 50
  startColumn := 13
  endLine := 50
  endColumn := 18
  assertId := "1"
  functionName := "vec_set.zero_prefix"
  kind := "assert"
  statementHash := "cef28fbfc221e1db"
}
@[vrml_obligation] theorem assert_1
    (v : (Vermilion.Seq Int))
    (n : Int)
    (v_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_5 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_6 : i ≤ n)
    (loop_0_iteration_7 : n ≤ Vermilion.Seq.len v_2)
    (loop_0_iteration_8 : Vermilion.Seq.len v_2 = Vermilion.Seq.len v)
    (loop_0_iteration_9 : (∀ (k : Int), (((0 ≤ k) ∧ (k < i)) → (Vermilion.Seq.index v_2 k = 0))))
    (loop_0_iteration_10 : i < n)
    (assume_11 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_set_ensures_0 : tmp__post = Vermilion.Seq.update v_2 i 0) :
    (0 ≤ (i + 1)) ∧ ((i + 1) < Vermilion.usizeMod) := by
  vrml
-- vrml:end vec_set.zero_prefix.assert_1

-- vrml:begin vec_set.zero_prefix.invariant_preserve_0_0 467e59d1eae81575
/--
Generated VC `vec_set.zero_prefix.invariant_preserve_0_0`.

- Rust source: `examples/m3-vec-set/vec_set.rs:43:13-43:19`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `467e59d1eae81575`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 k⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 43
  startColumn := 13
  endLine := 43
  endColumn := 19
  assertId := "0_0"
  functionName := "vec_set.zero_prefix"
  kind := "invariant_preserve"
  statementHash := "467e59d1eae81575"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (v : (Vermilion.Seq Int))
    (n : Int)
    (v_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_5 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_6 : i ≤ n)
    (loop_0_iteration_7 : n ≤ Vermilion.Seq.len v_2)
    (loop_0_iteration_8 : Vermilion.Seq.len v_2 = Vermilion.Seq.len v)
    (loop_0_iteration_9 : (∀ (k : Int), (((0 ≤ k) ∧ (k < i)) → (Vermilion.Seq.index v_2 k = 0))))
    (loop_0_iteration_10 : i < n)
    (assume_11 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_set_ensures_0 : tmp__post = Vermilion.Seq.update v_2 i 0)
    (assert_1 : (0 ≤ (i + 1)) ∧ ((i + 1) < Vermilion.usizeMod)) :
    (Vermilion.emod (i + 1) Vermilion.usizeMod) ≤ n := by
  vrml
-- vrml:end vec_set.zero_prefix.invariant_preserve_0_0

-- vrml:begin vec_set.zero_prefix.invariant_preserve_0_1 28e5af464177d6ab
/--
Generated VC `vec_set.zero_prefix.invariant_preserve_0_1`.

- Rust source: `examples/m3-vec-set/vec_set.rs:44:13-44:25`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `28e5af464177d6ab`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 k⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 44
  startColumn := 13
  endLine := 44
  endColumn := 25
  assertId := "0_1"
  functionName := "vec_set.zero_prefix"
  kind := "invariant_preserve"
  statementHash := "28e5af464177d6ab"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (v : (Vermilion.Seq Int))
    (n : Int)
    (v_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_5 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_6 : i ≤ n)
    (loop_0_iteration_7 : n ≤ Vermilion.Seq.len v_2)
    (loop_0_iteration_8 : Vermilion.Seq.len v_2 = Vermilion.Seq.len v)
    (loop_0_iteration_9 : (∀ (k : Int), (((0 ≤ k) ∧ (k < i)) → (Vermilion.Seq.index v_2 k = 0))))
    (loop_0_iteration_10 : i < n)
    (assume_11 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_set_ensures_0 : tmp__post = Vermilion.Seq.update v_2 i 0)
    (assert_1 : (0 ≤ (i + 1)) ∧ ((i + 1) < Vermilion.usizeMod)) :
    n ≤ Vermilion.Seq.len tmp__post := by
  vrml
-- vrml:end vec_set.zero_prefix.invariant_preserve_0_1

-- vrml:begin vec_set.zero_prefix.invariant_preserve_0_2 6e1656961ad9a22a
/--
Generated VC `vec_set.zero_prefix.invariant_preserve_0_2`.

- Rust source: `examples/m3-vec-set/vec_set.rs:45:13-45:36`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_2`
- Statement hash: `6e1656961ad9a22a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 k⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def invariant_preserve_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 45
  startColumn := 13
  endLine := 45
  endColumn := 36
  assertId := "0_2"
  functionName := "vec_set.zero_prefix"
  kind := "invariant_preserve"
  statementHash := "6e1656961ad9a22a"
}
@[vrml_obligation] theorem invariant_preserve_0_2
    (v : (Vermilion.Seq Int))
    (n : Int)
    (v_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_5 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_6 : i ≤ n)
    (loop_0_iteration_7 : n ≤ Vermilion.Seq.len v_2)
    (loop_0_iteration_8 : Vermilion.Seq.len v_2 = Vermilion.Seq.len v)
    (loop_0_iteration_9 : (∀ (k : Int), (((0 ≤ k) ∧ (k < i)) → (Vermilion.Seq.index v_2 k = 0))))
    (loop_0_iteration_10 : i < n)
    (assume_11 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_set_ensures_0 : tmp__post = Vermilion.Seq.update v_2 i 0)
    (assert_1 : (0 ≤ (i + 1)) ∧ ((i + 1) < Vermilion.usizeMod)) :
    Vermilion.Seq.len tmp__post = Vermilion.Seq.len v := by
  vrml
-- vrml:end vec_set.zero_prefix.invariant_preserve_0_2

-- vrml:begin vec_set.zero_prefix.invariant_preserve_0_3 aa9113e87f579a36
/--
Generated VC `vec_set.zero_prefix.invariant_preserve_0_3`.

- Rust source: `examples/m3-vec-set/vec_set.rs:46:13-46:52`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_3`
- Statement hash: `aa9113e87f579a36`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index tmp__post k⟩ ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 k⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def invariant_preserve_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 46
  startColumn := 13
  endLine := 46
  endColumn := 52
  assertId := "0_3"
  functionName := "vec_set.zero_prefix"
  kind := "invariant_preserve"
  statementHash := "aa9113e87f579a36"
}
@[vrml_obligation] theorem invariant_preserve_0_3
    (v : (Vermilion.Seq Int))
    (n : Int)
    (v_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_5 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_6 : i ≤ n)
    (loop_0_iteration_7 : n ≤ Vermilion.Seq.len v_2)
    (loop_0_iteration_8 : Vermilion.Seq.len v_2 = Vermilion.Seq.len v)
    (loop_0_iteration_9 : (∀ (k : Int), (((0 ≤ k) ∧ (k < i)) → (Vermilion.Seq.index v_2 k = 0))))
    (loop_0_iteration_10 : i < n)
    (assume_11 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_set_ensures_0 : tmp__post = Vermilion.Seq.update v_2 i 0)
    (assert_1 : (0 ≤ (i + 1)) ∧ ((i + 1) < Vermilion.usizeMod)) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < (Vermilion.emod (i + 1) Vermilion.usizeMod))) → (Vermilion.Seq.index tmp__post k = 0))) := by
  -- The overflow check makes the usize clip on the next index an identity.
  rw [Vermilion.emod_usizeMod_of_lt assert_1.1 assert_1.2]
  -- The written slot k = i reads back 0; k < i kept its value from the
  -- prefix invariant (index_update_other).
  subst call_set_ensures_0
  rintro k ⟨hk0, hki⟩
  by_cases hk : k = i
  · subst hk
    exact Vermilion.Seq.index_update_same v_2 k 0 hk0 (by omega)
  · rw [Vermilion.Seq.index_update_other v_2 k 0 i (by omega)]
    exact loop_0_iteration_9 k ⟨hk0, by omega⟩
-- vrml:end vec_set.zero_prefix.invariant_preserve_0_3

-- vrml:begin vec_set.zero_prefix.assert_0_decreases 7af94115e1a2126a
/--
Generated VC `vec_set.zero_prefix.assert_0_decreases`.

- Rust source: `examples/m3-vec-set/vec_set.rs:47:19-47:24`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `7af94115e1a2126a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 k⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 47
  startColumn := 19
  endLine := 47
  endColumn := 24
  assertId := "0_decreases"
  functionName := "vec_set.zero_prefix"
  kind := "assert"
  statementHash := "7af94115e1a2126a"
}
@[vrml_obligation] theorem assert_0_decreases
    (v : (Vermilion.Seq Int))
    (n : Int)
    (v_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_5 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_6 : i ≤ n)
    (loop_0_iteration_7 : n ≤ Vermilion.Seq.len v_2)
    (loop_0_iteration_8 : Vermilion.Seq.len v_2 = Vermilion.Seq.len v)
    (loop_0_iteration_9 : (∀ (k : Int), (((0 ≤ k) ∧ (k < i)) → (Vermilion.Seq.index v_2 k = 0))))
    (loop_0_iteration_10 : i < n)
    (assume_11 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_set_ensures_0 : tmp__post = Vermilion.Seq.update v_2 i 0)
    (assert_1 : (0 ≤ (i + 1)) ∧ ((i + 1) < Vermilion.usizeMod)) :
    ((0 ≤ (n - (Vermilion.emod (i + 1) Vermilion.usizeMod))) ∧ ((n - (Vermilion.emod (i + 1) Vermilion.usizeMod)) < (n - i))) ∨ (((n - (Vermilion.emod (i + 1) Vermilion.usizeMod)) = (n - i)) ∧ False) := by
  vrml
-- vrml:end vec_set.zero_prefix.assert_0_decreases

-- vrml:begin vec_set.zero_prefix.ensures_2_0 5012a36a365b061a
/--
Generated VC `vec_set.zero_prefix.ensures_2_0`.

- Rust source: `examples/m3-vec-set/vec_set.rs:37:9-37:39`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2_0`
- Statement hash: `5012a36a365b061a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 k⟩
-/
def ensures_2_0_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 37
  startColumn := 9
  endLine := 37
  endColumn := 39
  assertId := "2_0"
  functionName := "vec_set.zero_prefix"
  kind := "ensures"
  statementHash := "5012a36a365b061a"
}
@[vrml_obligation] theorem ensures_2_0
    (v : (Vermilion.Seq Int))
    (n : Int)
    (v_2 : (Vermilion.Seq Int))
    (i : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (requires_3 : n ≤ Vermilion.Seq.len v)
    (loop_0_exit_0 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_exit_2 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_exit_3 : i ≤ n)
    (loop_0_exit_4 : n ≤ Vermilion.Seq.len v_2)
    (loop_0_exit_5 : Vermilion.Seq.len v_2 = Vermilion.Seq.len v)
    (loop_0_exit_6 : (∀ (k : Int), (((0 ≤ k) ∧ (k < i)) → (Vermilion.Seq.index v_2 k = 0))))
    (loop_0_exit_7 : (¬ (i < n))) :
    Vermilion.Seq.len v_2 = Vermilion.Seq.len v := by
  vrml
-- vrml:end vec_set.zero_prefix.ensures_2_0

-- vrml:begin vec_set.zero_prefix.ensures_2_1 1f75ca21b2157e5e
/--
Generated VC `vec_set.zero_prefix.ensures_2_1`.

- Rust source: `examples/m3-vec-set/vec_set.rs:38:9-38:55`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2_1`
- Statement hash: `1f75ca21b2157e5e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v_2 k⟩ ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 k⟩
-/
def ensures_2_1_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 38
  startColumn := 9
  endLine := 38
  endColumn := 55
  assertId := "2_1"
  functionName := "vec_set.zero_prefix"
  kind := "ensures"
  statementHash := "1f75ca21b2157e5e"
}
@[vrml_obligation] theorem ensures_2_1
    (v : (Vermilion.Seq Int))
    (n : Int)
    (v_2 : (Vermilion.Seq Int))
    (i : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (requires_3 : n ≤ Vermilion.Seq.len v)
    (loop_0_exit_0 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_exit_2 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_exit_3 : i ≤ n)
    (loop_0_exit_4 : n ≤ Vermilion.Seq.len v_2)
    (loop_0_exit_5 : Vermilion.Seq.len v_2 = Vermilion.Seq.len v)
    (loop_0_exit_6 : (∀ (k : Int), (((0 ≤ k) ∧ (k < i)) → (Vermilion.Seq.index v_2 k = 0))))
    (loop_0_exit_7 : (¬ (i < n))) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < n)) → (Vermilion.Seq.index v_2 k = 0))) := by
  vrml
-- vrml:end vec_set.zero_prefix.ensures_2_1

end vec_set.zero_prefix

