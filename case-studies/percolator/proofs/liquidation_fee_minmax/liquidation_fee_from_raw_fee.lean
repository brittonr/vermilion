import Vermilion.Obligations
import liquidation_fee_minmax.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace liquidation_fee_minmax.liquidation_fee_from_raw_fee

-- vrml:begin liquidation_fee_minmax.liquidation_fee_from_raw_fee.ensures_0_0 62c9687d0a481e9e
/--
Generated VC `liquidation_fee_minmax.liquidation_fee_from_raw_fee.ensures_0_0`.

- Rust source: `case-studies/percolator/liquidation_fee_minmax.rs:46:9-47:53`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0_0`
- Statement hash: `62c9687d0a481e9e`
-/
def ensures_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/liquidation_fee_minmax.rs"
  startLine := 46
  startColumn := 9
  endLine := 47
  endColumn := 53
  assertId := "0_0"
  functionName := "liquidation_fee_minmax.liquidation_fee_from_raw_fee"
  kind := "ensures"
  statementHash := "62c9687d0a481e9e"
}
@[vrml_obligation] theorem ensures_0_0
    (raw_fee : Int)
    (min_liquidation_abs : Int)
    (liquidation_fee_cap : Int)
    (closes_full_position : Prop)
    (lt_call_ensures_0 : (Int → Int → Prop → Prop))
    (requires_0 : Vermilion.inUnsignedRange 128 raw_fee)
    (requires_1 : Vermilion.inUnsignedRange 128 min_liquidation_abs)
    (requires_2 : Vermilion.inUnsignedRange 128 liquidation_fee_cap)
    (branch_0 : ((¬ closes_full_position) ∧ (min_liquidation_abs ≠ 0)) ∧ (raw_fee < min_liquidation_abs)) :
    (((¬ closes_full_position) ∧ (¬ (min_liquidation_abs = 0))) ∧ (raw_fee < min_liquidation_abs)) → (core.result.Result.Err (T := Int) liquidation_fee_minmax.V16Error.NonProgress = core.result.Result.Err (T := Int) liquidation_fee_minmax.V16Error.NonProgress) := by
  vrml [liquidation_fee_minmax.min_u128, liquidation_fee_minmax.max_u128, vstd.std_specs.num.u128_specs_tmp.impl__2.obeys_cmp_spec, vstd.std_specs.num.u128_specs_tmp.impl__2.cmp_spec, vstd.std_specs.num.u128_specs_tmp.impl__1.obeys_partial_cmp_spec, vstd.std_specs.num.u128_specs_tmp.impl__1.partial_cmp_spec]
-- vrml:end liquidation_fee_minmax.liquidation_fee_from_raw_fee.ensures_0_0

-- vrml:begin liquidation_fee_minmax.liquidation_fee_from_raw_fee.ensures_0_1 dde6fdb8905058b9
/--
Generated VC `liquidation_fee_minmax.liquidation_fee_from_raw_fee.ensures_0_1`.

- Rust source: `case-studies/percolator/liquidation_fee_minmax.rs:48:9-49:100`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0_1`
- Statement hash: `dde6fdb8905058b9`
-/
def ensures_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/liquidation_fee_minmax.rs"
  startLine := 48
  startColumn := 9
  endLine := 49
  endColumn := 100
  assertId := "0_1"
  functionName := "liquidation_fee_minmax.liquidation_fee_from_raw_fee"
  kind := "ensures"
  statementHash := "dde6fdb8905058b9"
}
@[vrml_obligation] theorem ensures_0_1
    (raw_fee : Int)
    (min_liquidation_abs : Int)
    (liquidation_fee_cap : Int)
    (closes_full_position : Prop)
    (lt_call_ensures_0 : (Int → Int → Prop → Prop))
    (requires_0 : Vermilion.inUnsignedRange 128 raw_fee)
    (requires_1 : Vermilion.inUnsignedRange 128 min_liquidation_abs)
    (requires_2 : Vermilion.inUnsignedRange 128 liquidation_fee_cap)
    (branch_0 : ((¬ closes_full_position) ∧ (min_liquidation_abs ≠ 0)) ∧ (raw_fee < min_liquidation_abs)) :
    (¬ (((¬ closes_full_position) ∧ (¬ (min_liquidation_abs = 0))) ∧ (raw_fee < min_liquidation_abs))) → (core.result.Result.Err (T := Int) liquidation_fee_minmax.V16Error.NonProgress = core.result.Result.Ok (E := liquidation_fee_minmax.V16Error) (liquidation_fee_minmax.min_u128 (liquidation_fee_minmax.max_u128 raw_fee min_liquidation_abs) liquidation_fee_cap)) := by
  vrml [liquidation_fee_minmax.min_u128, liquidation_fee_minmax.max_u128, vstd.std_specs.num.u128_specs_tmp.impl__2.obeys_cmp_spec, vstd.std_specs.num.u128_specs_tmp.impl__2.cmp_spec, vstd.std_specs.num.u128_specs_tmp.impl__1.obeys_partial_cmp_spec, vstd.std_specs.num.u128_specs_tmp.impl__1.partial_cmp_spec]
-- vrml:end liquidation_fee_minmax.liquidation_fee_from_raw_fee.ensures_0_1

-- vrml:begin liquidation_fee_minmax.liquidation_fee_from_raw_fee.ensures_3_0 14fab9770e176c28
/--
Generated VC `liquidation_fee_minmax.liquidation_fee_from_raw_fee.ensures_3_0`.

- Rust source: `case-studies/percolator/liquidation_fee_minmax.rs:46:9-47:53`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3_0`
- Statement hash: `14fab9770e176c28`
- Triggers (Verus, for future e-matching): ⟨(lt_call_ensures_0 min_liquidation_abs raw_fee b ∧ (vstd.std_specs.num.u128_specs_tmp.impl__1.obeys_partial_cmp_spec → (b ↔ (vstd.std_specs.num.u128_specs_tmp.impl__1.partial_cmp_spec min_liquidation_abs raw_fee = core.option.Option.Some core.cmp.Ordering.Less))))⟩ ⟨(lt_call_ensures_0 liquidation_fee_cap tmp_ b ∧ (vstd.std_specs.num.u128_specs_tmp.impl__1.obeys_partial_cmp_spec → (b ↔ (vstd.std_specs.num.u128_specs_tmp.impl__1.partial_cmp_spec liquidation_fee_cap tmp_ = core.option.Option.Some core.cmp.Ordering.Less))))⟩
-/
def ensures_3_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/liquidation_fee_minmax.rs"
  startLine := 46
  startColumn := 9
  endLine := 47
  endColumn := 53
  assertId := "3_0"
  functionName := "liquidation_fee_minmax.liquidation_fee_from_raw_fee"
  kind := "ensures"
  statementHash := "14fab9770e176c28"
}
@[vrml_obligation] theorem ensures_3_0
    (raw_fee : Int)
    (min_liquidation_abs : Int)
    (liquidation_fee_cap : Int)
    (closes_full_position : Prop)
    (lt_call_ensures_0 : (Int → Int → Prop → Prop))
    (tmp_ : Int)
    (tmp__2 : Int)
    (requires_0 : Vermilion.inUnsignedRange 128 raw_fee)
    (requires_1 : Vermilion.inUnsignedRange 128 min_liquidation_abs)
    (requires_2 : Vermilion.inUnsignedRange 128 liquidation_fee_cap)
    (then_0_assume_4 : (((¬ closes_full_position) ∧ (min_liquidation_abs ≠ 0)) ∧ (raw_fee < min_liquidation_abs)) → False)
    (then_0_assume_5 : (((¬ closes_full_position) ∧ (min_liquidation_abs ≠ 0)) ∧ (raw_fee < min_liquidation_abs)) → False)
    (call_max_ensures_0 : Vermilion.inUnsignedRange 128 tmp_)
    (call_max_ensures_1 : vstd.std_specs.num.u128_specs_tmp.impl__2.obeys_cmp_spec → ((core.cmp.Ordering.is_Less (vstd.std_specs.num.u128_specs_tmp.impl__2.cmp_spec min_liquidation_abs raw_fee) → (tmp_ = raw_fee)) ∧ ((¬ core.cmp.Ordering.is_Less (vstd.std_specs.num.u128_specs_tmp.impl__2.cmp_spec min_liquidation_abs raw_fee)) → ((core.cmp.Ordering.is_Equal (vstd.std_specs.num.u128_specs_tmp.impl__2.cmp_spec min_liquidation_abs raw_fee) → (tmp_ = min_liquidation_abs)) ∧ ((¬ core.cmp.Ordering.is_Equal (vstd.std_specs.num.u128_specs_tmp.impl__2.cmp_spec min_liquidation_abs raw_fee)) → (tmp_ = min_liquidation_abs))))))
    (call_max_ensures_2 : (∃ (b : Prop), (((lt_call_ensures_0 min_liquidation_abs raw_fee b ∧ (vstd.std_specs.num.u128_specs_tmp.impl__1.obeys_partial_cmp_spec → (b ↔ (vstd.std_specs.num.u128_specs_tmp.impl__1.partial_cmp_spec min_liquidation_abs raw_fee = core.option.Option.Some core.cmp.Ordering.Less)))) ∧ (b → (tmp_ = raw_fee))) ∧ ((¬ b) → (tmp_ = min_liquidation_abs)))))
    (call_min_ensures_0 : Vermilion.inUnsignedRange 128 tmp__2)
    (call_min_ensures_1 : vstd.std_specs.num.u128_specs_tmp.impl__2.obeys_cmp_spec → ((core.cmp.Ordering.is_Less (vstd.std_specs.num.u128_specs_tmp.impl__2.cmp_spec liquidation_fee_cap tmp_) → (tmp__2 = liquidation_fee_cap)) ∧ ((¬ core.cmp.Ordering.is_Less (vstd.std_specs.num.u128_specs_tmp.impl__2.cmp_spec liquidation_fee_cap tmp_)) → ((core.cmp.Ordering.is_Equal (vstd.std_specs.num.u128_specs_tmp.impl__2.cmp_spec liquidation_fee_cap tmp_) → (tmp__2 = tmp_)) ∧ ((¬ core.cmp.Ordering.is_Equal (vstd.std_specs.num.u128_specs_tmp.impl__2.cmp_spec liquidation_fee_cap tmp_)) → (tmp__2 = tmp_))))))
    (call_min_ensures_2 : (∃ (b : Prop), (((lt_call_ensures_0 liquidation_fee_cap tmp_ b ∧ (vstd.std_specs.num.u128_specs_tmp.impl__1.obeys_partial_cmp_spec → (b ↔ (vstd.std_specs.num.u128_specs_tmp.impl__1.partial_cmp_spec liquidation_fee_cap tmp_ = core.option.Option.Some core.cmp.Ordering.Less)))) ∧ (b → (tmp__2 = liquidation_fee_cap))) ∧ ((¬ b) → (tmp__2 = tmp_))))) :
    (((¬ closes_full_position) ∧ (¬ (min_liquidation_abs = 0))) ∧ (raw_fee < min_liquidation_abs)) → (core.result.Result.Ok (E := liquidation_fee_minmax.V16Error) tmp__2 = core.result.Result.Err (T := Int) liquidation_fee_minmax.V16Error.NonProgress) := by
  vrml [liquidation_fee_minmax.min_u128, liquidation_fee_minmax.max_u128, vstd.std_specs.num.u128_specs_tmp.impl__2.obeys_cmp_spec, vstd.std_specs.num.u128_specs_tmp.impl__2.cmp_spec, vstd.std_specs.num.u128_specs_tmp.impl__1.obeys_partial_cmp_spec, vstd.std_specs.num.u128_specs_tmp.impl__1.partial_cmp_spec]
-- vrml:end liquidation_fee_minmax.liquidation_fee_from_raw_fee.ensures_3_0

-- vrml:begin liquidation_fee_minmax.liquidation_fee_from_raw_fee.ensures_3_1 99ed62dea5dd10b7
/--
Generated VC `liquidation_fee_minmax.liquidation_fee_from_raw_fee.ensures_3_1`.

- Rust source: `case-studies/percolator/liquidation_fee_minmax.rs:48:9-49:100`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3_1`
- Statement hash: `99ed62dea5dd10b7`
- Triggers (Verus, for future e-matching): ⟨(lt_call_ensures_0 min_liquidation_abs raw_fee b ∧ (vstd.std_specs.num.u128_specs_tmp.impl__1.obeys_partial_cmp_spec → (b ↔ (vstd.std_specs.num.u128_specs_tmp.impl__1.partial_cmp_spec min_liquidation_abs raw_fee = core.option.Option.Some core.cmp.Ordering.Less))))⟩ ⟨(lt_call_ensures_0 liquidation_fee_cap tmp_ b ∧ (vstd.std_specs.num.u128_specs_tmp.impl__1.obeys_partial_cmp_spec → (b ↔ (vstd.std_specs.num.u128_specs_tmp.impl__1.partial_cmp_spec liquidation_fee_cap tmp_ = core.option.Option.Some core.cmp.Ordering.Less))))⟩
-/
def ensures_3_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/liquidation_fee_minmax.rs"
  startLine := 48
  startColumn := 9
  endLine := 49
  endColumn := 100
  assertId := "3_1"
  functionName := "liquidation_fee_minmax.liquidation_fee_from_raw_fee"
  kind := "ensures"
  statementHash := "99ed62dea5dd10b7"
}
@[vrml_obligation] theorem ensures_3_1
    (raw_fee : Int)
    (min_liquidation_abs : Int)
    (liquidation_fee_cap : Int)
    (closes_full_position : Prop)
    (lt_call_ensures_0 : (Int → Int → Prop → Prop))
    (tmp_ : Int)
    (tmp__2 : Int)
    (requires_0 : Vermilion.inUnsignedRange 128 raw_fee)
    (requires_1 : Vermilion.inUnsignedRange 128 min_liquidation_abs)
    (requires_2 : Vermilion.inUnsignedRange 128 liquidation_fee_cap)
    (then_0_assume_4 : (((¬ closes_full_position) ∧ (min_liquidation_abs ≠ 0)) ∧ (raw_fee < min_liquidation_abs)) → False)
    (then_0_assume_5 : (((¬ closes_full_position) ∧ (min_liquidation_abs ≠ 0)) ∧ (raw_fee < min_liquidation_abs)) → False)
    (call_max_ensures_0 : Vermilion.inUnsignedRange 128 tmp_)
    (call_max_ensures_1 : vstd.std_specs.num.u128_specs_tmp.impl__2.obeys_cmp_spec → ((core.cmp.Ordering.is_Less (vstd.std_specs.num.u128_specs_tmp.impl__2.cmp_spec min_liquidation_abs raw_fee) → (tmp_ = raw_fee)) ∧ ((¬ core.cmp.Ordering.is_Less (vstd.std_specs.num.u128_specs_tmp.impl__2.cmp_spec min_liquidation_abs raw_fee)) → ((core.cmp.Ordering.is_Equal (vstd.std_specs.num.u128_specs_tmp.impl__2.cmp_spec min_liquidation_abs raw_fee) → (tmp_ = min_liquidation_abs)) ∧ ((¬ core.cmp.Ordering.is_Equal (vstd.std_specs.num.u128_specs_tmp.impl__2.cmp_spec min_liquidation_abs raw_fee)) → (tmp_ = min_liquidation_abs))))))
    (call_max_ensures_2 : (∃ (b : Prop), (((lt_call_ensures_0 min_liquidation_abs raw_fee b ∧ (vstd.std_specs.num.u128_specs_tmp.impl__1.obeys_partial_cmp_spec → (b ↔ (vstd.std_specs.num.u128_specs_tmp.impl__1.partial_cmp_spec min_liquidation_abs raw_fee = core.option.Option.Some core.cmp.Ordering.Less)))) ∧ (b → (tmp_ = raw_fee))) ∧ ((¬ b) → (tmp_ = min_liquidation_abs)))))
    (call_min_ensures_0 : Vermilion.inUnsignedRange 128 tmp__2)
    (call_min_ensures_1 : vstd.std_specs.num.u128_specs_tmp.impl__2.obeys_cmp_spec → ((core.cmp.Ordering.is_Less (vstd.std_specs.num.u128_specs_tmp.impl__2.cmp_spec liquidation_fee_cap tmp_) → (tmp__2 = liquidation_fee_cap)) ∧ ((¬ core.cmp.Ordering.is_Less (vstd.std_specs.num.u128_specs_tmp.impl__2.cmp_spec liquidation_fee_cap tmp_)) → ((core.cmp.Ordering.is_Equal (vstd.std_specs.num.u128_specs_tmp.impl__2.cmp_spec liquidation_fee_cap tmp_) → (tmp__2 = tmp_)) ∧ ((¬ core.cmp.Ordering.is_Equal (vstd.std_specs.num.u128_specs_tmp.impl__2.cmp_spec liquidation_fee_cap tmp_)) → (tmp__2 = tmp_))))))
    (call_min_ensures_2 : (∃ (b : Prop), (((lt_call_ensures_0 liquidation_fee_cap tmp_ b ∧ (vstd.std_specs.num.u128_specs_tmp.impl__1.obeys_partial_cmp_spec → (b ↔ (vstd.std_specs.num.u128_specs_tmp.impl__1.partial_cmp_spec liquidation_fee_cap tmp_ = core.option.Option.Some core.cmp.Ordering.Less)))) ∧ (b → (tmp__2 = liquidation_fee_cap))) ∧ ((¬ b) → (tmp__2 = tmp_))))) :
    (¬ (((¬ closes_full_position) ∧ (¬ (min_liquidation_abs = 0))) ∧ (raw_fee < min_liquidation_abs))) → (core.result.Result.Ok (E := liquidation_fee_minmax.V16Error) tmp__2 = core.result.Result.Ok (E := liquidation_fee_minmax.V16Error) (liquidation_fee_minmax.min_u128 (liquidation_fee_minmax.max_u128 raw_fee min_liquidation_abs) liquidation_fee_cap)) := by
  vrml [liquidation_fee_minmax.min_u128, liquidation_fee_minmax.max_u128, vstd.std_specs.num.u128_specs_tmp.impl__2.obeys_cmp_spec, vstd.std_specs.num.u128_specs_tmp.impl__2.cmp_spec, vstd.std_specs.num.u128_specs_tmp.impl__1.obeys_partial_cmp_spec, vstd.std_specs.num.u128_specs_tmp.impl__1.partial_cmp_spec]
-- vrml:end liquidation_fee_minmax.liquidation_fee_from_raw_fee.ensures_3_1

end liquidation_fee_minmax.liquidation_fee_from_raw_fee

