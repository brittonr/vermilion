import Vermilion.Obligations
import forloop.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace forloop.count_up

-- vrml:begin forloop.count_up.invariant_entry_0_4 49a2040e1c191197
/--
Generated VC `forloop.count_up.invariant_entry_0_4`.

- Rust source: `examples/m2-forloop/forloop.rs:20:13-20:19`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_4`
- Statement hash: `49a2040e1c191197`
-/
def invariant_entry_0_4_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-forloop/forloop.rs"
  startLine := 20
  startColumn := 13
  endLine := 20
  endColumn := 19
  assertId := "0_4"
  functionName := "forloop.count_up"
  kind := "invariant_entry"
  statementHash := "49a2040e1c191197"
}
@[vrml_obligation] theorem invariant_entry_0_4
    (n : Int)
    (vrml_for_arb : Int)
    (requires_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (assume_1 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod)) :
    0 = (Vermilion.iteP (0 ≤ n) 0 vrml_for_arb) := by
  vrml
-- vrml:end forloop.count_up.invariant_entry_0_4

-- vrml:begin forloop.count_up.assert_4 97e4bf5017666871
/--
Generated VC `forloop.count_up.assert_4`.

- Rust source: `examples/m2-forloop/forloop.rs:22:13-22:18`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `4`
- Statement hash: `97e4bf5017666871`
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-forloop/forloop.rs"
  startLine := 22
  startColumn := 13
  endLine := 22
  endColumn := 18
  assertId := "4"
  functionName := "forloop.count_up"
  kind := "assert"
  statementHash := "97e4bf5017666871"
}
@[vrml_obligation] theorem assert_4
    (n : Int)
    (vrml_for_arb : Int)
    (c : Int)
    (i : Int)
    (loop_0_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_1 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_iteration_2 : (0 ≤ c) ∧ (c < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_4 : 0 ≤ i)
    (loop_0_iteration_5 : i < n)
    (loop_0_iteration_6 : c = i) :
    (0 ≤ (c + 1)) ∧ ((c + 1) < Vermilion.usizeMod) := by
  vrml
-- vrml:end forloop.count_up.assert_4

-- vrml:begin forloop.count_up.invariant_preserve_0_4 cd1da45d2c6d9f28
/--
Generated VC `forloop.count_up.invariant_preserve_0_4`.

- Rust source: `examples/m2-forloop/forloop.rs:20:13-20:19`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_4`
- Statement hash: `cd1da45d2c6d9f28`
-/
def invariant_preserve_0_4_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-forloop/forloop.rs"
  startLine := 20
  startColumn := 13
  endLine := 20
  endColumn := 19
  assertId := "0_4"
  functionName := "forloop.count_up"
  kind := "invariant_preserve"
  statementHash := "cd1da45d2c6d9f28"
}
@[vrml_obligation] theorem invariant_preserve_0_4
    (n : Int)
    (vrml_for_arb : Int)
    (c : Int)
    (i : Int)
    (loop_0_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_1 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_iteration_2 : (0 ≤ c) ∧ (c < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_4 : 0 ≤ i)
    (loop_0_iteration_5 : i < n)
    (loop_0_iteration_6 : c = i)
    (assert_4 : (0 ≤ (c + 1)) ∧ ((c + 1) < Vermilion.usizeMod)) :
    (Vermilion.emod (c + 1) Vermilion.usizeMod) = (i + 1) := by
  vrml
-- vrml:end forloop.count_up.invariant_preserve_0_4

-- vrml:begin forloop.count_up.assert_0_decreases 17ded432667132aa
/--
Generated VC `forloop.count_up.assert_0_decreases`.

- Rust source: `examples/m2-forloop/forloop.rs:18:5-23:6`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `17ded432667132aa`
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-forloop/forloop.rs"
  startLine := 18
  startColumn := 5
  endLine := 23
  endColumn := 6
  assertId := "0_decreases"
  functionName := "forloop.count_up"
  kind := "assert"
  statementHash := "17ded432667132aa"
}
@[vrml_obligation] theorem assert_0_decreases
    (n : Int)
    (vrml_for_arb : Int)
    (c : Int)
    (i : Int)
    (loop_0_iteration_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (loop_0_iteration_1 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_iteration_2 : (0 ≤ c) ∧ (c < Vermilion.usizeMod))
    (loop_0_iteration_3 : (0 ≤ i) ∧ (i < Vermilion.usizeMod))
    (loop_0_iteration_4 : 0 ≤ i)
    (loop_0_iteration_5 : i < n)
    (loop_0_iteration_6 : c = i)
    (assert_4 : (0 ≤ (c + 1)) ∧ ((c + 1) < Vermilion.usizeMod)) :
    (0 ≤ (n - (i + 1))) ∧ ((n - (i + 1)) < (n - i)) := by
  vrml
-- vrml:end forloop.count_up.assert_0_decreases

-- vrml:begin forloop.count_up.ensures_5 41b431fd2e94cb22
/--
Generated VC `forloop.count_up.ensures_5`.

- Rust source: `examples/m2-forloop/forloop.rs:15:9-15:15`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `5`
- Statement hash: `41b431fd2e94cb22`
-/
def ensures_5_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-forloop/forloop.rs"
  startLine := 15
  startColumn := 9
  endLine := 15
  endColumn := 15
  assertId := "5"
  functionName := "forloop.count_up"
  kind := "ensures"
  statementHash := "41b431fd2e94cb22"
}
@[vrml_obligation] theorem ensures_5
    (n : Int)
    (vrml_for_arb : Int)
    (c : Int)
    (i : Int)
    (requires_0 : (0 ≤ n) ∧ (n < Vermilion.usizeMod))
    (assume_1 : (0 ≤ vrml_for_arb) ∧ (vrml_for_arb < Vermilion.usizeMod))
    (loop_0_exit_0 : (0 ≤ c) ∧ (c < Vermilion.usizeMod))
    (loop_0_exit_1 : c = (Vermilion.iteP (0 ≤ n) n vrml_for_arb)) :
    c = n := by
  vrml
-- vrml:end forloop.count_up.ensures_5

end forloop.count_up

