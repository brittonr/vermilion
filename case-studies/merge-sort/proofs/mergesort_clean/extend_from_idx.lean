import Vermilion.Obligations
import mergesort_clean.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace mergesort_clean.extend_from_idx

-- vrml:begin mergesort_clean.extend_from_idx.invariant_entry_0_4 01dd3cf346b7c922
/--
Generated VC `mergesort_clean.extend_from_idx.invariant_entry_0_4`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:33:13-33:64`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_4`
- Statement hash: `01dd3cf346b7c922`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index v vrml_i0⟩
-/
def invariant_entry_0_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 33
  startColumn := 13
  endLine := 33
  endColumn := 64
  assertId := "0_4"
  functionName := "mergesort_clean.extend_from_idx"
  kind := "invariant_entry"
  statementHash := "01dd3cf346b7c922"
}
@[vrml_obligation] theorem invariant_entry_0_4
    (r : (Vermilion.Seq Int))
    (v : (Vermilion.Seq Int))
    (start : Int)
    (vrml_for_arb : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len r) ∧ (Vermilion.Seq.len r < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (requires_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_4 : (0 ≤ start) ∧ (start < Vermilion.usizeMod))
    (requires_5 : start < Vermilion.Seq.len v)
    (assume_6 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (assume_7 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod)) :
    r = Vermilion.Seq.add r (Vermilion.Seq.subrange v start (Vermilion.iteP (start ≤ Vermilion.Seq.len v) start vrml_for_arb)) := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.extend_from_idx.invariant_entry_0_4

-- vrml:begin mergesort_clean.extend_from_idx.call_requires_5 e1fec61c91aa40bd
/--
Generated VC `mergesort_clean.extend_from_idx.call_requires_5`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:35:16-35:20`
- Rust/SST construct: call vec_index
- AssertId: `5`
- Statement hash: `e1fec61c91aa40bd`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index r_2 vrml_i0⟩
-/
def call_requires_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 35
  startColumn := 16
  endLine := 35
  endColumn := 20
  assertId := "5"
  functionName := "mergesort_clean.extend_from_idx"
  kind := "call_requires"
  statementHash := "e1fec61c91aa40bd"
}
@[vrml_obligation] theorem call_requires_5
    (r : (Vermilion.Seq Int))
    (v : (Vermilion.Seq Int))
    (start : Int)
    (vrml_for_arb : Int)
    (r_2 : (Vermilion.Seq Int))
    (i : Int)
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len r) ∧ (Vermilion.Seq.len r < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_4 : (0 ≤ start) ∧ (start < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_6 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len r_2) ∧ (Vermilion.Seq.len r_2 < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_2 vrml_i0))))
    (loop_0_iteration_9 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_10 : start ≤ i)
    (loop_0_iteration_11 : i < Vermilion.Seq.len v)
    (loop_0_iteration_12 : r_2 = Vermilion.Seq.add r (Vermilion.Seq.subrange v start i)) :
    i < Vermilion.Seq.len v := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.extend_from_idx.call_requires_5

-- vrml:begin mergesort_clean.extend_from_idx.invariant_preserve_0_4 303595d04bbf1d10
/--
Generated VC `mergesort_clean.extend_from_idx.invariant_preserve_0_4`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:33:13-33:64`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_4`
- Statement hash: `303595d04bbf1d10`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index r_2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def invariant_preserve_0_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 33
  startColumn := 13
  endLine := 33
  endColumn := 64
  assertId := "0_4"
  functionName := "mergesort_clean.extend_from_idx"
  kind := "invariant_preserve"
  statementHash := "303595d04bbf1d10"
}
@[vrml_obligation] theorem invariant_preserve_0_4
    (r : (Vermilion.Seq Int))
    (v : (Vermilion.Seq Int))
    (start : Int)
    (vrml_for_arb : Int)
    (r_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp_ : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len r) ∧ (Vermilion.Seq.len r < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_4 : (0 ≤ start) ∧ (start < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_6 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len r_2) ∧ (Vermilion.Seq.len r_2 < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_2 vrml_i0))))
    (loop_0_iteration_9 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_10 : start ≤ i)
    (loop_0_iteration_11 : i < Vermilion.Seq.len v)
    (loop_0_iteration_12 : r_2 = Vermilion.Seq.add r (Vermilion.Seq.subrange v start i))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index v i)
    (assume_15 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push r_2 tmp_) :
    tmp__post = Vermilion.Seq.add r (Vermilion.Seq.subrange v start (i + 1)) := by
  -- Interactive proof: the pushed element extends the copied subrange
  -- (prelude `add_push` reassociates, `subrange_push` absorbs).
  have hs : (0:Int) ≤ start ∧ start < Vermilion.usizeMod := loop_0_iteration_4
  subst call_push_ensures_0 loop_0_iteration_12 call_vec_index_ensures_1
  rw [Vermilion.Seq.add_push,
    Vermilion.Seq.subrange_push v start i hs.1 loop_0_iteration_10 loop_0_iteration_11]
-- vrml:end mergesort_clean.extend_from_idx.invariant_preserve_0_4

-- vrml:begin mergesort_clean.extend_from_idx.assert_0_decreases 0650d9c7e8bb53a7
/--
Generated VC `mergesort_clean.extend_from_idx.assert_0_decreases`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:31:5-36:6`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `0650d9c7e8bb53a7`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index r_2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 31
  startColumn := 5
  endLine := 36
  endColumn := 6
  assertId := "0_decreases"
  functionName := "mergesort_clean.extend_from_idx"
  kind := "assert"
  statementHash := "0650d9c7e8bb53a7"
}
@[vrml_obligation] theorem assert_0_decreases
    (r : (Vermilion.Seq Int))
    (v : (Vermilion.Seq Int))
    (start : Int)
    (vrml_for_arb : Int)
    (r_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp_ : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : (0 ≤ Vermilion.Seq.len r) ∧ (Vermilion.Seq.len r < Vermilion.usizeMod))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_iteration_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_4 : (0 ≤ start) ∧ (start < Vermilion.usizeMod))
    (loop_0_iteration_5 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (loop_0_iteration_6 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_iteration_7 : (0 ≤ Vermilion.Seq.len r_2) ∧ (Vermilion.Seq.len r_2 < Vermilion.usizeMod))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_2 vrml_i0))))
    (loop_0_iteration_9 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_10 : start ≤ i)
    (loop_0_iteration_11 : i < Vermilion.Seq.len v)
    (loop_0_iteration_12 : r_2 = Vermilion.Seq.add r (Vermilion.Seq.subrange v start i))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index v i)
    (assume_15 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push r_2 tmp_) :
    (0 ≤ (Vermilion.Seq.len v - (i + 1))) ∧ ((Vermilion.Seq.len v - (i + 1)) < (Vermilion.Seq.len v - i)) := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.extend_from_idx.assert_0_decreases

-- vrml:begin mergesort_clean.extend_from_idx.ensures_7 a694037dfc0b6f9e
/--
Generated VC `mergesort_clean.extend_from_idx.ensures_7`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:29:9-29:73`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `7`
- Statement hash: `a694037dfc0b6f9e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index r_2 vrml_i0⟩
-/
def ensures_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 29
  startColumn := 9
  endLine := 29
  endColumn := 73
  assertId := "7"
  functionName := "mergesort_clean.extend_from_idx"
  kind := "ensures"
  statementHash := "a694037dfc0b6f9e"
}
@[vrml_obligation] theorem ensures_7
    (r : (Vermilion.Seq Int))
    (v : (Vermilion.Seq Int))
    (start : Int)
    (vrml_for_arb : Int)
    (r_2 : (Vermilion.Seq Int))
    (i : Int)
    (requires_0 : (0 ≤ Vermilion.Seq.len r) ∧ (Vermilion.Seq.len r < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (requires_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_4 : (0 ≤ start) ∧ (start < Vermilion.usizeMod))
    (requires_5 : start < Vermilion.Seq.len v)
    (assume_6 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (assume_7 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_exit_0 : (0 ≤ Vermilion.Seq.len r_2) ∧ (Vermilion.Seq.len r_2 < Vermilion.usizeMod))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_2 vrml_i0))))
    (loop_0_exit_2 : r_2 = Vermilion.Seq.add r (Vermilion.Seq.subrange v start (Vermilion.iteP (start ≤ Vermilion.Seq.len v) (Vermilion.Seq.len v) vrml_for_arb))) :
    r_2 = Vermilion.Seq.add r (Vermilion.Seq.subrange v start (Vermilion.Seq.len v)) := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.extend_from_idx.ensures_7

end mergesort_clean.extend_from_idx

