import Vermilion.Obligations
import mergesort_clean.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace mergesort_clean.merge_sort

-- vrml:begin mergesort_clean.merge_sort.assert_2 ec3aea01407c59e3
/--
Generated VC `mergesort_clean.merge_sort.assert_2`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:94:35-94:40`
- Rust/SST construct: possible division by zero
- AssertId: `2`
- Statement hash: `ec3aea01407c59e3`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 94
  startColumn := 35
  endLine := 94
  endColumn := 40
  assertId := "2"
  functionName := "mergesort_clean.merge_sort"
  kind := "assert"
  statementHash := "ec3aea01407c59e3"
}
@[vrml_obligation] theorem assert_2
    (v : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (v1 : (Vermilion.Seq Int))
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (assume_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (call_Vec__clone_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_Vec__clone_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_Vec__clone_ensures_2 : tmp_ = v)
    (branch_0 : (¬ (Vermilion.Seq.len v ≤ 1))) :
    2 ≠ 0 := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.merge_sort.assert_2

-- vrml:begin mergesort_clean.merge_sort.call_requires_3 7675eea43b38a048
/--
Generated VC `mergesort_clean.merge_sort.call_requires_3`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:94:22-94:41`
- Rust/SST construct: call split_off
- AssertId: `3`
- Statement hash: `7675eea43b38a048`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def call_requires_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 94
  startColumn := 22
  endLine := 94
  endColumn := 41
  assertId := "3"
  functionName := "mergesort_clean.merge_sort"
  kind := "call_requires"
  statementHash := "7675eea43b38a048"
}
@[vrml_obligation] theorem call_requires_3
    (v : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (v1 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq Int))
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (assume_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (call_Vec__clone_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_Vec__clone_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_Vec__clone_ensures_2 : tmp_ = v)
    (branch_0 : (¬ (Vermilion.Seq.len v ≤ 1)))
    (assert_2 : 2 ≠ 0)
    (assume_8 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0)))) :
    (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod) ≤ Vermilion.Seq.len tmp_ := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.merge_sort.call_requires_3

-- vrml:begin mergesort_clean.merge_sort.assert_anonymous_0 7bc28a3c579acac6
/--
Generated VC `mergesort_clean.merge_sort.assert_anonymous_0`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:95:18-95:37`
- Rust/SST construct: could not prove termination
- AssertId: `anonymous_0`
- Statement hash: `7bc28a3c579acac6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩
-/
def assert_anonymous_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 95
  startColumn := 18
  endLine := 95
  endColumn := 37
  assertId := "anonymous_0"
  functionName := "mergesort_clean.merge_sort"
  kind := "assert"
  statementHash := "7bc28a3c579acac6"
}
@[vrml_obligation] theorem assert_anonymous_0
    (v : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (v1 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (assume_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (call_Vec__clone_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_Vec__clone_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_Vec__clone_ensures_2 : tmp_ = v)
    (branch_0 : (¬ (Vermilion.Seq.len v ≤ 1)))
    (assert_2 : 2 ≠ 0)
    (assume_8 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_split_off_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__2) ∧ (Vermilion.Seq.len tmp__2 < Vermilion.usizeMod))
    (call_split_off_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_split_off_ensures_2 : tmp__post = Vermilion.Seq.subrange tmp_ 0 (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod))
    (call_split_off_ensures_3 : tmp__2 = Vermilion.Seq.subrange tmp_ (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod) (Vermilion.Seq.len tmp_))
    (assume_14 : (0 ≤ Vermilion.Seq.len tmp__post_2) ∧ (Vermilion.Seq.len tmp__post_2 < Vermilion.usizeMod))
    (assume_15 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0)))) :
    ((0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.Seq.len v)) ∨ ((Vermilion.Seq.len tmp__post = Vermilion.Seq.len v) ∧ False) := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.merge_sort.assert_anonymous_0

-- vrml:begin mergesort_clean.merge_sort.assert_anonymous_1 dabb6a22e48ff561
/--
Generated VC `mergesort_clean.merge_sort.assert_anonymous_1`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:96:18-96:37`
- Rust/SST construct: could not prove termination
- AssertId: `anonymous_1`
- Statement hash: `dabb6a22e48ff561`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.index r1 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_3 vrml_i0⟩
-/
def assert_anonymous_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 96
  startColumn := 18
  endLine := 96
  endColumn := 37
  assertId := "anonymous_1"
  functionName := "mergesort_clean.merge_sort"
  kind := "assert"
  statementHash := "dabb6a22e48ff561"
}
@[vrml_obligation] theorem assert_anonymous_1
    (v : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (v1 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (r1 : (Vermilion.Seq Int))
    (tmp__post_3 : (Vermilion.Seq Int))
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (assume_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (call_Vec__clone_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_Vec__clone_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_Vec__clone_ensures_2 : tmp_ = v)
    (branch_0 : (¬ (Vermilion.Seq.len v ≤ 1)))
    (assert_2 : 2 ≠ 0)
    (assume_8 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_split_off_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__2) ∧ (Vermilion.Seq.len tmp__2 < Vermilion.usizeMod))
    (call_split_off_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_split_off_ensures_2 : tmp__post = Vermilion.Seq.subrange tmp_ 0 (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod))
    (call_split_off_ensures_3 : tmp__2 = Vermilion.Seq.subrange tmp_ (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod) (Vermilion.Seq.len tmp_))
    (assume_14 : (0 ≤ Vermilion.Seq.len tmp__post_2) ∧ (Vermilion.Seq.len tmp__post_2 < Vermilion.usizeMod))
    (assume_15 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (assert_anonymous_0 : ((0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.Seq.len v)) ∨ ((Vermilion.Seq.len tmp__post = Vermilion.Seq.len v) ∧ False))
    (call_merge_sort_ensures_0 : (0 ≤ Vermilion.Seq.len r1) ∧ (Vermilion.Seq.len r1 < Vermilion.usizeMod))
    (call_merge_sort_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r1 vrml_i0))))
    (call_merge_sort_ensures_2 : Vermilion.Seq.toMultiset r1 = Vermilion.Seq.toMultiset tmp__post)
    (call_merge_sort_ensures_3 : mergesort_clean.is_sorted r1)
    (assume_21 : (0 ≤ Vermilion.Seq.len tmp__post_3) ∧ (Vermilion.Seq.len tmp__post_3 < Vermilion.usizeMod))
    (assume_22 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_3 vrml_i0)))) :
    ((0 ≤ Vermilion.Seq.len tmp__2) ∧ (Vermilion.Seq.len tmp__2 < Vermilion.Seq.len v)) ∨ ((Vermilion.Seq.len tmp__2 = Vermilion.Seq.len v) ∧ False) := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.merge_sort.assert_anonymous_1

-- vrml:begin mergesort_clean.merge_sort.call_requires_6_0 31fc65dd502fdc80
/--
Generated VC `mergesort_clean.merge_sort.call_requires_6_0`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:97:9-97:24`
- Rust/SST construct: call merge
- AssertId: `6_0`
- Statement hash: `31fc65dd502fdc80`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.index r1 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_3 vrml_i0⟩ ⟨Vermilion.Seq.index r2 vrml_i0⟩
-/
def call_requires_6_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 97
  startColumn := 9
  endLine := 97
  endColumn := 24
  assertId := "6_0"
  functionName := "mergesort_clean.merge_sort"
  kind := "call_requires"
  statementHash := "31fc65dd502fdc80"
}
@[vrml_obligation] theorem call_requires_6_0
    (v : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (v1 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (r1 : (Vermilion.Seq Int))
    (tmp__post_3 : (Vermilion.Seq Int))
    (r2 : (Vermilion.Seq Int))
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (assume_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (call_Vec__clone_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_Vec__clone_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_Vec__clone_ensures_2 : tmp_ = v)
    (branch_0 : (¬ (Vermilion.Seq.len v ≤ 1)))
    (assert_2 : 2 ≠ 0)
    (assume_8 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_split_off_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__2) ∧ (Vermilion.Seq.len tmp__2 < Vermilion.usizeMod))
    (call_split_off_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_split_off_ensures_2 : tmp__post = Vermilion.Seq.subrange tmp_ 0 (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod))
    (call_split_off_ensures_3 : tmp__2 = Vermilion.Seq.subrange tmp_ (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod) (Vermilion.Seq.len tmp_))
    (assume_14 : (0 ≤ Vermilion.Seq.len tmp__post_2) ∧ (Vermilion.Seq.len tmp__post_2 < Vermilion.usizeMod))
    (assume_15 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (assert_anonymous_0 : ((0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.Seq.len v)) ∨ ((Vermilion.Seq.len tmp__post = Vermilion.Seq.len v) ∧ False))
    (call_merge_sort_ensures_0 : (0 ≤ Vermilion.Seq.len r1) ∧ (Vermilion.Seq.len r1 < Vermilion.usizeMod))
    (call_merge_sort_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r1 vrml_i0))))
    (call_merge_sort_ensures_2 : Vermilion.Seq.toMultiset r1 = Vermilion.Seq.toMultiset tmp__post)
    (call_merge_sort_ensures_3 : mergesort_clean.is_sorted r1)
    (assume_21 : (0 ≤ Vermilion.Seq.len tmp__post_3) ∧ (Vermilion.Seq.len tmp__post_3 < Vermilion.usizeMod))
    (assume_22 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_3 vrml_i0))))
    (assert_anonymous_1 : ((0 ≤ Vermilion.Seq.len tmp__2) ∧ (Vermilion.Seq.len tmp__2 < Vermilion.Seq.len v)) ∨ ((Vermilion.Seq.len tmp__2 = Vermilion.Seq.len v) ∧ False))
    (call_merge_sort_1_ensures_0 : (0 ≤ Vermilion.Seq.len r2) ∧ (Vermilion.Seq.len r2 < Vermilion.usizeMod))
    (call_merge_sort_1_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r2 vrml_i0))))
    (call_merge_sort_1_ensures_2 : Vermilion.Seq.toMultiset r2 = Vermilion.Seq.toMultiset tmp__2)
    (call_merge_sort_1_ensures_3 : mergesort_clean.is_sorted r2) :
    mergesort_clean.is_sorted r1 := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.merge_sort.call_requires_6_0

-- vrml:begin mergesort_clean.merge_sort.call_requires_6_1 31fc68dd502fe199
/--
Generated VC `mergesort_clean.merge_sort.call_requires_6_1`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:97:9-97:24`
- Rust/SST construct: call merge
- AssertId: `6_1`
- Statement hash: `31fc68dd502fe199`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.index r1 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_3 vrml_i0⟩ ⟨Vermilion.Seq.index r2 vrml_i0⟩
-/
def call_requires_6_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 97
  startColumn := 9
  endLine := 97
  endColumn := 24
  assertId := "6_1"
  functionName := "mergesort_clean.merge_sort"
  kind := "call_requires"
  statementHash := "31fc68dd502fe199"
}
@[vrml_obligation] theorem call_requires_6_1
    (v : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (v1 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (r1 : (Vermilion.Seq Int))
    (tmp__post_3 : (Vermilion.Seq Int))
    (r2 : (Vermilion.Seq Int))
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (assume_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (call_Vec__clone_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_Vec__clone_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_Vec__clone_ensures_2 : tmp_ = v)
    (branch_0 : (¬ (Vermilion.Seq.len v ≤ 1)))
    (assert_2 : 2 ≠ 0)
    (assume_8 : (0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod))
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_split_off_ensures_0 : (0 ≤ Vermilion.Seq.len tmp__2) ∧ (Vermilion.Seq.len tmp__2 < Vermilion.usizeMod))
    (call_split_off_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_split_off_ensures_2 : tmp__post = Vermilion.Seq.subrange tmp_ 0 (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod))
    (call_split_off_ensures_3 : tmp__2 = Vermilion.Seq.subrange tmp_ (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod) (Vermilion.Seq.len tmp_))
    (assume_14 : (0 ≤ Vermilion.Seq.len tmp__post_2) ∧ (Vermilion.Seq.len tmp__post_2 < Vermilion.usizeMod))
    (assume_15 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (assert_anonymous_0 : ((0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.Seq.len v)) ∨ ((Vermilion.Seq.len tmp__post = Vermilion.Seq.len v) ∧ False))
    (call_merge_sort_ensures_0 : (0 ≤ Vermilion.Seq.len r1) ∧ (Vermilion.Seq.len r1 < Vermilion.usizeMod))
    (call_merge_sort_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r1 vrml_i0))))
    (call_merge_sort_ensures_2 : Vermilion.Seq.toMultiset r1 = Vermilion.Seq.toMultiset tmp__post)
    (call_merge_sort_ensures_3 : mergesort_clean.is_sorted r1)
    (assume_21 : (0 ≤ Vermilion.Seq.len tmp__post_3) ∧ (Vermilion.Seq.len tmp__post_3 < Vermilion.usizeMod))
    (assume_22 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_3 vrml_i0))))
    (assert_anonymous_1 : ((0 ≤ Vermilion.Seq.len tmp__2) ∧ (Vermilion.Seq.len tmp__2 < Vermilion.Seq.len v)) ∨ ((Vermilion.Seq.len tmp__2 = Vermilion.Seq.len v) ∧ False))
    (call_merge_sort_1_ensures_0 : (0 ≤ Vermilion.Seq.len r2) ∧ (Vermilion.Seq.len r2 < Vermilion.usizeMod))
    (call_merge_sort_1_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r2 vrml_i0))))
    (call_merge_sort_1_ensures_2 : Vermilion.Seq.toMultiset r2 = Vermilion.Seq.toMultiset tmp__2)
    (call_merge_sort_1_ensures_3 : mergesort_clean.is_sorted r2) :
    mergesort_clean.is_sorted r2 := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.merge_sort.call_requires_6_1

-- vrml:begin mergesort_clean.merge_sort.ensures_7_0 99825781e67503e6
/--
Generated VC `mergesort_clean.merge_sort.ensures_7_0`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:85:9-85:48`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `7_0`
- Statement hash: `99825781e67503e6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.index r1 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_3 vrml_i0⟩ ⟨Vermilion.Seq.index r2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index v1 vrml_i0⟩
-/
def ensures_7_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 85
  startColumn := 9
  endLine := 85
  endColumn := 48
  assertId := "7_0"
  functionName := "mergesort_clean.merge_sort"
  kind := "ensures"
  statementHash := "99825781e67503e6"
}
@[vrml_obligation] theorem ensures_7_0
    (v : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (v1 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (r1 : (Vermilion.Seq Int))
    (tmp__post_3 : (Vermilion.Seq Int))
    (r2 : (Vermilion.Seq Int))
    (tmp__3 : (Vermilion.Seq Int))
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (assume_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (call_Vec__clone_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_Vec__clone_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_Vec__clone_ensures_2 : tmp_ = v)
    (then_0_assume_7 : (Vermilion.Seq.len v ≤ 1) → (tmp__4 = tmp_))
    (then_0_assume_8 : (Vermilion.Seq.len v ≤ 1) → (v1 = tmp_))
    (else_0_assert_2 : (¬ (Vermilion.Seq.len v ≤ 1)) → (2 ≠ 0))
    (else_0_assume_8 : (¬ (Vermilion.Seq.len v ≤ 1)) → ((0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod)))
    (else_0_assume_9 : (¬ (Vermilion.Seq.len v ≤ 1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (else_0_call_split_off_ensures_0 : (¬ (Vermilion.Seq.len v ≤ 1)) → ((0 ≤ Vermilion.Seq.len tmp__2) ∧ (Vermilion.Seq.len tmp__2 < Vermilion.usizeMod)))
    (else_0_call_split_off_ensures_1 : (¬ (Vermilion.Seq.len v ≤ 1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (else_0_call_split_off_ensures_2 : (¬ (Vermilion.Seq.len v ≤ 1)) → (tmp__post = Vermilion.Seq.subrange tmp_ 0 (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod)))
    (else_0_call_split_off_ensures_3 : (¬ (Vermilion.Seq.len v ≤ 1)) → (tmp__2 = Vermilion.Seq.subrange tmp_ (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod) (Vermilion.Seq.len tmp_)))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len v ≤ 1)) → ((0 ≤ Vermilion.Seq.len tmp__post_2) ∧ (Vermilion.Seq.len tmp__post_2 < Vermilion.usizeMod)))
    (else_0_assume_15 : (¬ (Vermilion.Seq.len v ≤ 1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (else_0_assert_anonymous_0 : (¬ (Vermilion.Seq.len v ≤ 1)) → (((0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.Seq.len v)) ∨ ((Vermilion.Seq.len tmp__post = Vermilion.Seq.len v) ∧ False)))
    (else_0_call_merge_sort_ensures_0 : (¬ (Vermilion.Seq.len v ≤ 1)) → ((0 ≤ Vermilion.Seq.len r1) ∧ (Vermilion.Seq.len r1 < Vermilion.usizeMod)))
    (else_0_call_merge_sort_ensures_1 : (¬ (Vermilion.Seq.len v ≤ 1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r1 vrml_i0))))
    (else_0_call_merge_sort_ensures_2 : (¬ (Vermilion.Seq.len v ≤ 1)) → (Vermilion.Seq.toMultiset r1 = Vermilion.Seq.toMultiset tmp__post))
    (else_0_call_merge_sort_ensures_3 : (¬ (Vermilion.Seq.len v ≤ 1)) → mergesort_clean.is_sorted r1)
    (else_0_assume_21 : (¬ (Vermilion.Seq.len v ≤ 1)) → ((0 ≤ Vermilion.Seq.len tmp__post_3) ∧ (Vermilion.Seq.len tmp__post_3 < Vermilion.usizeMod)))
    (else_0_assume_22 : (¬ (Vermilion.Seq.len v ≤ 1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_3 vrml_i0))))
    (else_0_assert_anonymous_1 : (¬ (Vermilion.Seq.len v ≤ 1)) → (((0 ≤ Vermilion.Seq.len tmp__2) ∧ (Vermilion.Seq.len tmp__2 < Vermilion.Seq.len v)) ∨ ((Vermilion.Seq.len tmp__2 = Vermilion.Seq.len v) ∧ False)))
    (else_0_call_merge_sort_1_ensures_0 : (¬ (Vermilion.Seq.len v ≤ 1)) → ((0 ≤ Vermilion.Seq.len r2) ∧ (Vermilion.Seq.len r2 < Vermilion.usizeMod)))
    (else_0_call_merge_sort_1_ensures_1 : (¬ (Vermilion.Seq.len v ≤ 1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r2 vrml_i0))))
    (else_0_call_merge_sort_1_ensures_2 : (¬ (Vermilion.Seq.len v ≤ 1)) → (Vermilion.Seq.toMultiset r2 = Vermilion.Seq.toMultiset tmp__2))
    (else_0_call_merge_sort_1_ensures_3 : (¬ (Vermilion.Seq.len v ≤ 1)) → mergesort_clean.is_sorted r2)
    (else_0_call_merge_ensures_0 : (¬ (Vermilion.Seq.len v ≤ 1)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_merge_ensures_1 : (¬ (Vermilion.Seq.len v ≤ 1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_merge_ensures_2 : (¬ (Vermilion.Seq.len v ≤ 1)) → (Vermilion.Seq.toMultiset tmp__3 = Vermilion.Seq.toMultiset (Vermilion.Seq.add r1 r2)))
    (else_0_call_merge_ensures_3 : (¬ (Vermilion.Seq.len v ≤ 1)) → mergesort_clean.is_sorted tmp__3)
    (else_0_assume_32 : (¬ (Vermilion.Seq.len v ≤ 1)) → (tmp__4 = tmp__3))
    (else_0_assume_33 : (¬ (Vermilion.Seq.len v ≤ 1)) → (v1 = tmp__post_2))
    (assume_35 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (assume_36 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (assume_37 : (0 ≤ Vermilion.Seq.len v1) ∧ (Vermilion.Seq.len v1 < Vermilion.usizeMod))
    (assume_38 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0)))) :
    Vermilion.Seq.toMultiset tmp__4 = Vermilion.Seq.toMultiset v := by
  -- Interactive proof: base case is the clone; the recursive case chains
  -- the callees' multiset ensures and reassembles the two halves with
  -- `subrange_add_subrange` + `subrange_all`.
  by_cases hle : Vermilion.Seq.len v ≤ 1
  · rw [then_0_assume_7 hle, call_Vec__clone_ensures_2]
  · have hnn := Vermilion.Seq.len_nonneg v
    have hlen := requires_0
    have hmidmod : Vermilion.emod (Vermilion.Seq.len v / 2) Vermilion.usizeMod =
        Vermilion.Seq.len v / 2 := Vermilion.emod_usizeMod_of_lt (by omega) (by omega)
    rw [else_0_assume_32 hle, else_0_call_merge_ensures_2 hle,
      Vermilion.Seq.toMultiset_add, else_0_call_merge_sort_ensures_2 hle,
      else_0_call_merge_sort_1_ensures_2 hle, else_0_call_split_off_ensures_2 hle,
      else_0_call_split_off_ensures_3 hle, hmidmod, call_Vec__clone_ensures_2,
      ← Vermilion.Seq.toMultiset_add,
      Vermilion.Seq.subrange_add_subrange v 0 (Vermilion.Seq.len v / 2)
        (Vermilion.Seq.len v) le_rfl (by omega) (by omega),
      Vermilion.Seq.subrange_all]
-- vrml:end mergesort_clean.merge_sort.ensures_7_0

-- vrml:begin mergesort_clean.merge_sort.ensures_7_1 a2b5b78cf003cf0b
/--
Generated VC `mergesort_clean.merge_sort.ensures_7_1`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:86:9-86:22`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `7_1`
- Statement hash: `a2b5b78cf003cf0b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.index r1 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_3 vrml_i0⟩ ⟨Vermilion.Seq.index r2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__4 vrml_i0⟩ ⟨Vermilion.Seq.index v1 vrml_i0⟩
-/
def ensures_7_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 86
  startColumn := 9
  endLine := 86
  endColumn := 22
  assertId := "7_1"
  functionName := "mergesort_clean.merge_sort"
  kind := "ensures"
  statementHash := "a2b5b78cf003cf0b"
}
@[vrml_obligation] theorem ensures_7_1
    (v : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (tmp__4 : (Vermilion.Seq Int))
    (v1 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (r1 : (Vermilion.Seq Int))
    (tmp__post_3 : (Vermilion.Seq Int))
    (r2 : (Vermilion.Seq Int))
    (tmp__3 : (Vermilion.Seq Int))
    (requires_0 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (assume_2 : (0 ≤ Vermilion.Seq.len v) ∧ (Vermilion.Seq.len v < Vermilion.usizeMod))
    (call_Vec__clone_ensures_0 : (0 ≤ Vermilion.Seq.len tmp_) ∧ (Vermilion.Seq.len tmp_ < Vermilion.usizeMod))
    (call_Vec__clone_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_Vec__clone_ensures_2 : tmp_ = v)
    (then_0_assume_7 : (Vermilion.Seq.len v ≤ 1) → (tmp__4 = tmp_))
    (then_0_assume_8 : (Vermilion.Seq.len v ≤ 1) → (v1 = tmp_))
    (else_0_assert_2 : (¬ (Vermilion.Seq.len v ≤ 1)) → (2 ≠ 0))
    (else_0_assume_8 : (¬ (Vermilion.Seq.len v ≤ 1)) → ((0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.usizeMod)))
    (else_0_assume_9 : (¬ (Vermilion.Seq.len v ≤ 1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (else_0_call_split_off_ensures_0 : (¬ (Vermilion.Seq.len v ≤ 1)) → ((0 ≤ Vermilion.Seq.len tmp__2) ∧ (Vermilion.Seq.len tmp__2 < Vermilion.usizeMod)))
    (else_0_call_split_off_ensures_1 : (¬ (Vermilion.Seq.len v ≤ 1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (else_0_call_split_off_ensures_2 : (¬ (Vermilion.Seq.len v ≤ 1)) → (tmp__post = Vermilion.Seq.subrange tmp_ 0 (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod)))
    (else_0_call_split_off_ensures_3 : (¬ (Vermilion.Seq.len v ≤ 1)) → (tmp__2 = Vermilion.Seq.subrange tmp_ (Vermilion.emod ((Vermilion.Seq.len v) / 2) Vermilion.usizeMod) (Vermilion.Seq.len tmp_)))
    (else_0_assume_14 : (¬ (Vermilion.Seq.len v ≤ 1)) → ((0 ≤ Vermilion.Seq.len tmp__post_2) ∧ (Vermilion.Seq.len tmp__post_2 < Vermilion.usizeMod)))
    (else_0_assume_15 : (¬ (Vermilion.Seq.len v ≤ 1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (else_0_assert_anonymous_0 : (¬ (Vermilion.Seq.len v ≤ 1)) → (((0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.Seq.len v)) ∨ ((Vermilion.Seq.len tmp__post = Vermilion.Seq.len v) ∧ False)))
    (else_0_call_merge_sort_ensures_0 : (¬ (Vermilion.Seq.len v ≤ 1)) → ((0 ≤ Vermilion.Seq.len r1) ∧ (Vermilion.Seq.len r1 < Vermilion.usizeMod)))
    (else_0_call_merge_sort_ensures_1 : (¬ (Vermilion.Seq.len v ≤ 1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r1 vrml_i0))))
    (else_0_call_merge_sort_ensures_2 : (¬ (Vermilion.Seq.len v ≤ 1)) → (Vermilion.Seq.toMultiset r1 = Vermilion.Seq.toMultiset tmp__post))
    (else_0_call_merge_sort_ensures_3 : (¬ (Vermilion.Seq.len v ≤ 1)) → mergesort_clean.is_sorted r1)
    (else_0_assume_21 : (¬ (Vermilion.Seq.len v ≤ 1)) → ((0 ≤ Vermilion.Seq.len tmp__post_3) ∧ (Vermilion.Seq.len tmp__post_3 < Vermilion.usizeMod)))
    (else_0_assume_22 : (¬ (Vermilion.Seq.len v ≤ 1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_3 vrml_i0))))
    (else_0_assert_anonymous_1 : (¬ (Vermilion.Seq.len v ≤ 1)) → (((0 ≤ Vermilion.Seq.len tmp__2) ∧ (Vermilion.Seq.len tmp__2 < Vermilion.Seq.len v)) ∨ ((Vermilion.Seq.len tmp__2 = Vermilion.Seq.len v) ∧ False)))
    (else_0_call_merge_sort_1_ensures_0 : (¬ (Vermilion.Seq.len v ≤ 1)) → ((0 ≤ Vermilion.Seq.len r2) ∧ (Vermilion.Seq.len r2 < Vermilion.usizeMod)))
    (else_0_call_merge_sort_1_ensures_1 : (¬ (Vermilion.Seq.len v ≤ 1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r2 vrml_i0))))
    (else_0_call_merge_sort_1_ensures_2 : (¬ (Vermilion.Seq.len v ≤ 1)) → (Vermilion.Seq.toMultiset r2 = Vermilion.Seq.toMultiset tmp__2))
    (else_0_call_merge_sort_1_ensures_3 : (¬ (Vermilion.Seq.len v ≤ 1)) → mergesort_clean.is_sorted r2)
    (else_0_call_merge_ensures_0 : (¬ (Vermilion.Seq.len v ≤ 1)) → ((0 ≤ Vermilion.Seq.len tmp__3) ∧ (Vermilion.Seq.len tmp__3 < Vermilion.usizeMod)))
    (else_0_call_merge_ensures_1 : (¬ (Vermilion.Seq.len v ≤ 1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (else_0_call_merge_ensures_2 : (¬ (Vermilion.Seq.len v ≤ 1)) → (Vermilion.Seq.toMultiset tmp__3 = Vermilion.Seq.toMultiset (Vermilion.Seq.add r1 r2)))
    (else_0_call_merge_ensures_3 : (¬ (Vermilion.Seq.len v ≤ 1)) → mergesort_clean.is_sorted tmp__3)
    (else_0_assume_32 : (¬ (Vermilion.Seq.len v ≤ 1)) → (tmp__4 = tmp__3))
    (else_0_assume_33 : (¬ (Vermilion.Seq.len v ≤ 1)) → (v1 = tmp__post_2))
    (assume_35 : (0 ≤ Vermilion.Seq.len tmp__4) ∧ (Vermilion.Seq.len tmp__4 < Vermilion.usizeMod))
    (assume_36 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__4)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__4 vrml_i0))))
    (assume_37 : (0 ≤ Vermilion.Seq.len v1) ∧ (Vermilion.Seq.len v1 < Vermilion.usizeMod))
    (assume_38 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0)))) :
    mergesort_clean.is_sorted tmp__4 := by
  -- Interactive proof: a ≤1-element sequence is vacuously sorted; the
  -- recursive case is `merge`'s sortedness ensures.
  by_cases hle : Vermilion.Seq.len v ≤ 1
  · rw [then_0_assume_7 hle, call_Vec__clone_ensures_2]
    intro i j hij
    exact absurd hij (by omega)
  · rw [else_0_assume_32 hle]
    exact else_0_call_merge_ensures_3 hle
-- vrml:end mergesort_clean.merge_sort.ensures_7_1

end mergesort_clean.merge_sort

