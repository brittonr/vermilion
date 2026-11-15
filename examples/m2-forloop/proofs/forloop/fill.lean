import Vermilion.Obligations
import forloop.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace forloop.fill

-- vrml:begin forloop.fill.invariant_entry_0_4 e8fd4108d35889d0
/--
Generated VC `forloop.fill.invariant_entry_0_4`.

- Rust source: `examples/m2-forloop/forloop.rs:37:13-37:25`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_4`
- Statement hash: `e8fd4108d35889d0`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩
-/
def invariant_entry_0_4_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-forloop/forloop.rs"
  startLine := 37
  startColumn := 13
  endLine := 37
  endColumn := 25
  assertId := "0_4"
  functionName := "forloop.fill"
  kind := "invariant_entry"
  statementHash := "e8fd4108d35889d0"
}
@[vrml_obligation] theorem invariant_entry_0_4
    (v : (Vermilion.Seq Int))
    (x : Int)
    (vrml_for_arb : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 x)
    (assume_3 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (assume_4 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod)) :
    Vermilion.Seq.len v = Vermilion.Seq.len v := by
  vrml
-- vrml:end forloop.fill.invariant_entry_0_4

-- vrml:begin forloop.fill.invariant_entry_0_5 773b225f38d2048c
/--
Generated VC `forloop.fill.invariant_entry_0_5`.

- Rust source: `examples/m2-forloop/forloop.rs:38:13-38:52`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_5`
- Statement hash: `773b225f38d2048c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v k⟩ ⟨Vermilion.Seq.index v vrml_i0⟩
-/
def invariant_entry_0_5_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-forloop/forloop.rs"
  startLine := 38
  startColumn := 13
  endLine := 38
  endColumn := 52
  assertId := "0_5"
  functionName := "forloop.fill"
  kind := "invariant_entry"
  statementHash := "773b225f38d2048c"
}
@[vrml_obligation] theorem invariant_entry_0_5
    (v : (Vermilion.Seq Int))
    (x : Int)
    (vrml_for_arb : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 x)
    (assume_3 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (assume_4 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod)) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < (Vermilion.iteP (0 ≤ Vermilion.Seq.len v) 0 vrml_for_arb))) → (Vermilion.Seq.index v k = x))) := by
  vrml
-- vrml:end forloop.fill.invariant_entry_0_5

-- vrml:begin forloop.fill.call_requires_5 06e57537dc300918
/--
Generated VC `forloop.fill.call_requires_5`.

- Rust source: `examples/m2-forloop/forloop.rs:40:9-40:20`
- Rust/SST construct: call set
- AssertId: `5`
- Statement hash: `06e57537dc300918`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 k⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def call_requires_5_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-forloop/forloop.rs"
  startLine := 40
  startColumn := 9
  endLine := 40
  endColumn := 20
  assertId := "5"
  functionName := "forloop.fill"
  kind := "call_requires"
  statementHash := "06e57537dc300918"
}
@[vrml_obligation] theorem call_requires_5
    (v : (Vermilion.Seq Int))
    (x : Int)
    (vrml_for_arb : Int)
    (v_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_4 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_7 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_8 : 0 ≤ i)
    (loop_0_iteration_9 : i < Vermilion.Seq.len v)
    (loop_0_iteration_10 : Vermilion.Seq.len v = Vermilion.Seq.len v_2)
    (loop_0_iteration_11 : (∀ (k : Int), (((0 ≤ k) ∧ (k < i)) → (Vermilion.Seq.index v_2 k = x))))
    (assume_12 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_13 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0)))) :
    i < Vermilion.Seq.len v_2 := by
  vrml
-- vrml:end forloop.fill.call_requires_5

-- vrml:begin forloop.fill.invariant_preserve_0_4 b2fafaed120af3f7
/--
Generated VC `forloop.fill.invariant_preserve_0_4`.

- Rust source: `examples/m2-forloop/forloop.rs:37:13-37:25`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_4`
- Statement hash: `b2fafaed120af3f7`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 k⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def invariant_preserve_0_4_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-forloop/forloop.rs"
  startLine := 37
  startColumn := 13
  endLine := 37
  endColumn := 25
  assertId := "0_4"
  functionName := "forloop.fill"
  kind := "invariant_preserve"
  statementHash := "b2fafaed120af3f7"
}
@[vrml_obligation] theorem invariant_preserve_0_4
    (v : (Vermilion.Seq Int))
    (x : Int)
    (vrml_for_arb : Int)
    (v_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_4 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_7 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_8 : 0 ≤ i)
    (loop_0_iteration_9 : i < Vermilion.Seq.len v)
    (loop_0_iteration_10 : Vermilion.Seq.len v = Vermilion.Seq.len v_2)
    (loop_0_iteration_11 : (∀ (k : Int), (((0 ≤ k) ∧ (k < i)) → (Vermilion.Seq.index v_2 k = x))))
    (assume_12 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_13 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_set_ensures_0 : tmp__post = Vermilion.Seq.update v_2 i x) :
    Vermilion.Seq.len v = Vermilion.Seq.len tmp__post := by
  vrml
-- vrml:end forloop.fill.invariant_preserve_0_4

-- vrml:begin forloop.fill.invariant_preserve_0_5 029302e12fab3297
/--
Generated VC `forloop.fill.invariant_preserve_0_5`.

- Rust source: `examples/m2-forloop/forloop.rs:38:13-38:52`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_5`
- Statement hash: `029302e12fab3297`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index tmp__post k⟩ ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 k⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def invariant_preserve_0_5_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-forloop/forloop.rs"
  startLine := 38
  startColumn := 13
  endLine := 38
  endColumn := 52
  assertId := "0_5"
  functionName := "forloop.fill"
  kind := "invariant_preserve"
  statementHash := "029302e12fab3297"
}
@[vrml_obligation] theorem invariant_preserve_0_5
    (v : (Vermilion.Seq Int))
    (x : Int)
    (vrml_for_arb : Int)
    (v_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_4 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_7 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_8 : 0 ≤ i)
    (loop_0_iteration_9 : i < Vermilion.Seq.len v)
    (loop_0_iteration_10 : Vermilion.Seq.len v = Vermilion.Seq.len v_2)
    (loop_0_iteration_11 : (∀ (k : Int), (((0 ≤ k) ∧ (k < i)) → (Vermilion.Seq.index v_2 k = x))))
    (assume_12 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_13 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_set_ensures_0 : tmp__post = Vermilion.Seq.update v_2 i x) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < (i + 1))) → (Vermilion.Seq.index tmp__post k = x))) := by
  -- Interactive proof: the updated slot reads the written value, the
  -- others are unchanged and covered by the invariant.
  subst call_set_ensures_0
  intro k hk
  by_cases hki : k = i
  · subst hki
    exact Vermilion.Seq.index_update_same v_2 k x (by omega) (by omega)
  · rw [Vermilion.Seq.index_update_other v_2 k x i (by omega)]
    exact loop_0_iteration_11 k ⟨hk.1, by omega⟩
-- vrml:end forloop.fill.invariant_preserve_0_5

-- vrml:begin forloop.fill.assert_0_decreases d2ca580ebb29d653
/--
Generated VC `forloop.fill.assert_0_decreases`.

- Rust source: `examples/m2-forloop/forloop.rs:35:5-41:6`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `d2ca580ebb29d653`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 k⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-forloop/forloop.rs"
  startLine := 35
  startColumn := 5
  endLine := 41
  endColumn := 6
  assertId := "0_decreases"
  functionName := "forloop.fill"
  kind := "assert"
  statementHash := "d2ca580ebb29d653"
}
@[vrml_obligation] theorem assert_0_decreases
    (v : (Vermilion.Seq Int))
    (x : Int)
    (vrml_for_arb : Int)
    (v_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_3 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_4 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_7 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_8 : 0 ≤ i)
    (loop_0_iteration_9 : i < Vermilion.Seq.len v)
    (loop_0_iteration_10 : Vermilion.Seq.len v = Vermilion.Seq.len v_2)
    (loop_0_iteration_11 : (∀ (k : Int), (((0 ≤ k) ∧ (k < i)) → (Vermilion.Seq.index v_2 k = x))))
    (assume_12 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_13 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_set_ensures_0 : tmp__post = Vermilion.Seq.update v_2 i x) :
    (0 ≤ (Vermilion.Seq.len v - (i + 1))) ∧ ((Vermilion.Seq.len v - (i + 1)) < (Vermilion.Seq.len v - i)) := by
  vrml
-- vrml:end forloop.fill.assert_0_decreases

-- vrml:begin forloop.fill.ensures_6_0 9930539e1c6fee98
/--
Generated VC `forloop.fill.ensures_6_0`.

- Rust source: `examples/m2-forloop/forloop.rs:31:9-31:39`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `6_0`
- Statement hash: `9930539e1c6fee98`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 k⟩
-/
def ensures_6_0_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-forloop/forloop.rs"
  startLine := 31
  startColumn := 9
  endLine := 31
  endColumn := 39
  assertId := "6_0"
  functionName := "forloop.fill"
  kind := "ensures"
  statementHash := "9930539e1c6fee98"
}
@[vrml_obligation] theorem ensures_6_0
    (v : (Vermilion.Seq Int))
    (x : Int)
    (vrml_for_arb : Int)
    (v_2 : (Vermilion.Seq Int))
    (i : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 x)
    (assume_3 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (assume_4 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_exit_0 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_exit_2 : Vermilion.Seq.len v = Vermilion.Seq.len v_2)
    (loop_0_exit_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < (Vermilion.iteP (0 ≤ Vermilion.Seq.len v) (Vermilion.Seq.len v) vrml_for_arb))) → (Vermilion.Seq.index v_2 k = x)))) :
    Vermilion.Seq.len v_2 = Vermilion.Seq.len v := by
  vrml
-- vrml:end forloop.fill.ensures_6_0

-- vrml:begin forloop.fill.ensures_6_1 3e7b9c18230897f1
/--
Generated VC `forloop.fill.ensures_6_1`.

- Rust source: `examples/m2-forloop/forloop.rs:32:9-32:66`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `6_1`
- Statement hash: `3e7b9c18230897f1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v_2 k⟩ ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 k⟩
-/
def ensures_6_1_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-forloop/forloop.rs"
  startLine := 32
  startColumn := 9
  endLine := 32
  endColumn := 66
  assertId := "6_1"
  functionName := "forloop.fill"
  kind := "ensures"
  statementHash := "3e7b9c18230897f1"
}
@[vrml_obligation] theorem ensures_6_1
    (v : (Vermilion.Seq Int))
    (x : Int)
    (vrml_for_arb : Int)
    (v_2 : (Vermilion.Seq Int))
    (i : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 x)
    (assume_3 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (assume_4 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_exit_0 : (0 ≤ Vermilion.Seq.len v_2) ∧ (Vermilion.Seq.len v_2 < Vermilion.usizeMod))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_exit_2 : Vermilion.Seq.len v = Vermilion.Seq.len v_2)
    (loop_0_exit_3 : (∀ (k : Int), (((0 ≤ k) ∧ (k < (Vermilion.iteP (0 ≤ Vermilion.Seq.len v) (Vermilion.Seq.len v) vrml_for_arb))) → (Vermilion.Seq.index v_2 k = x)))) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len v)) → (Vermilion.Seq.index v_2 k = x))) := by
  vrml
-- vrml:end forloop.fill.ensures_6_1

end forloop.fill

