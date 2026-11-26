import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

inductive liquidation_fee_minmax.V16Error where
  | InvalidConfig
  | ArithmeticOverflow
  | ProvenanceMismatch
  | HiddenLeg
  | InvalidLeg
  | Stale
  | BStale
  | LockActive
  | NonProgress
  | RecoveryRequired
  | CounterOverflow
  | CounterUnderflow
deriving Inhabited

@[simp, grind] def liquidation_fee_minmax.V16Error.is_InvalidConfig : liquidation_fee_minmax.V16Error → Prop
  | .InvalidConfig => True
  | .ArithmeticOverflow => False
  | .ProvenanceMismatch => False
  | .HiddenLeg => False
  | .InvalidLeg => False
  | .Stale => False
  | .BStale => False
  | .LockActive => False
  | .NonProgress => False
  | .RecoveryRequired => False
  | .CounterOverflow => False
  | .CounterUnderflow => False
instance (x : liquidation_fee_minmax.V16Error) : Decidable (liquidation_fee_minmax.V16Error.is_InvalidConfig x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def liquidation_fee_minmax.V16Error.is_ArithmeticOverflow : liquidation_fee_minmax.V16Error → Prop
  | .InvalidConfig => False
  | .ArithmeticOverflow => True
  | .ProvenanceMismatch => False
  | .HiddenLeg => False
  | .InvalidLeg => False
  | .Stale => False
  | .BStale => False
  | .LockActive => False
  | .NonProgress => False
  | .RecoveryRequired => False
  | .CounterOverflow => False
  | .CounterUnderflow => False
instance (x : liquidation_fee_minmax.V16Error) : Decidable (liquidation_fee_minmax.V16Error.is_ArithmeticOverflow x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def liquidation_fee_minmax.V16Error.is_ProvenanceMismatch : liquidation_fee_minmax.V16Error → Prop
  | .InvalidConfig => False
  | .ArithmeticOverflow => False
  | .ProvenanceMismatch => True
  | .HiddenLeg => False
  | .InvalidLeg => False
  | .Stale => False
  | .BStale => False
  | .LockActive => False
  | .NonProgress => False
  | .RecoveryRequired => False
  | .CounterOverflow => False
  | .CounterUnderflow => False
instance (x : liquidation_fee_minmax.V16Error) : Decidable (liquidation_fee_minmax.V16Error.is_ProvenanceMismatch x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def liquidation_fee_minmax.V16Error.is_HiddenLeg : liquidation_fee_minmax.V16Error → Prop
  | .InvalidConfig => False
  | .ArithmeticOverflow => False
  | .ProvenanceMismatch => False
  | .HiddenLeg => True
  | .InvalidLeg => False
  | .Stale => False
  | .BStale => False
  | .LockActive => False
  | .NonProgress => False
  | .RecoveryRequired => False
  | .CounterOverflow => False
  | .CounterUnderflow => False
instance (x : liquidation_fee_minmax.V16Error) : Decidable (liquidation_fee_minmax.V16Error.is_HiddenLeg x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def liquidation_fee_minmax.V16Error.is_InvalidLeg : liquidation_fee_minmax.V16Error → Prop
  | .InvalidConfig => False
  | .ArithmeticOverflow => False
  | .ProvenanceMismatch => False
  | .HiddenLeg => False
  | .InvalidLeg => True
  | .Stale => False
  | .BStale => False
  | .LockActive => False
  | .NonProgress => False
  | .RecoveryRequired => False
  | .CounterOverflow => False
  | .CounterUnderflow => False
instance (x : liquidation_fee_minmax.V16Error) : Decidable (liquidation_fee_minmax.V16Error.is_InvalidLeg x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def liquidation_fee_minmax.V16Error.is_Stale : liquidation_fee_minmax.V16Error → Prop
  | .InvalidConfig => False
  | .ArithmeticOverflow => False
  | .ProvenanceMismatch => False
  | .HiddenLeg => False
  | .InvalidLeg => False
  | .Stale => True
  | .BStale => False
  | .LockActive => False
  | .NonProgress => False
  | .RecoveryRequired => False
  | .CounterOverflow => False
  | .CounterUnderflow => False
instance (x : liquidation_fee_minmax.V16Error) : Decidable (liquidation_fee_minmax.V16Error.is_Stale x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def liquidation_fee_minmax.V16Error.is_BStale : liquidation_fee_minmax.V16Error → Prop
  | .InvalidConfig => False
  | .ArithmeticOverflow => False
  | .ProvenanceMismatch => False
  | .HiddenLeg => False
  | .InvalidLeg => False
  | .Stale => False
  | .BStale => True
  | .LockActive => False
  | .NonProgress => False
  | .RecoveryRequired => False
  | .CounterOverflow => False
  | .CounterUnderflow => False
instance (x : liquidation_fee_minmax.V16Error) : Decidable (liquidation_fee_minmax.V16Error.is_BStale x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def liquidation_fee_minmax.V16Error.is_LockActive : liquidation_fee_minmax.V16Error → Prop
  | .InvalidConfig => False
  | .ArithmeticOverflow => False
  | .ProvenanceMismatch => False
  | .HiddenLeg => False
  | .InvalidLeg => False
  | .Stale => False
  | .BStale => False
  | .LockActive => True
  | .NonProgress => False
  | .RecoveryRequired => False
  | .CounterOverflow => False
  | .CounterUnderflow => False
instance (x : liquidation_fee_minmax.V16Error) : Decidable (liquidation_fee_minmax.V16Error.is_LockActive x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def liquidation_fee_minmax.V16Error.is_NonProgress : liquidation_fee_minmax.V16Error → Prop
  | .InvalidConfig => False
  | .ArithmeticOverflow => False
  | .ProvenanceMismatch => False
  | .HiddenLeg => False
  | .InvalidLeg => False
  | .Stale => False
  | .BStale => False
  | .LockActive => False
  | .NonProgress => True
  | .RecoveryRequired => False
  | .CounterOverflow => False
  | .CounterUnderflow => False
instance (x : liquidation_fee_minmax.V16Error) : Decidable (liquidation_fee_minmax.V16Error.is_NonProgress x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def liquidation_fee_minmax.V16Error.is_RecoveryRequired : liquidation_fee_minmax.V16Error → Prop
  | .InvalidConfig => False
  | .ArithmeticOverflow => False
  | .ProvenanceMismatch => False
  | .HiddenLeg => False
  | .InvalidLeg => False
  | .Stale => False
  | .BStale => False
  | .LockActive => False
  | .NonProgress => False
  | .RecoveryRequired => True
  | .CounterOverflow => False
  | .CounterUnderflow => False
instance (x : liquidation_fee_minmax.V16Error) : Decidable (liquidation_fee_minmax.V16Error.is_RecoveryRequired x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def liquidation_fee_minmax.V16Error.is_CounterOverflow : liquidation_fee_minmax.V16Error → Prop
  | .InvalidConfig => False
  | .ArithmeticOverflow => False
  | .ProvenanceMismatch => False
  | .HiddenLeg => False
  | .InvalidLeg => False
  | .Stale => False
  | .BStale => False
  | .LockActive => False
  | .NonProgress => False
  | .RecoveryRequired => False
  | .CounterOverflow => True
  | .CounterUnderflow => False
instance (x : liquidation_fee_minmax.V16Error) : Decidable (liquidation_fee_minmax.V16Error.is_CounterOverflow x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def liquidation_fee_minmax.V16Error.is_CounterUnderflow : liquidation_fee_minmax.V16Error → Prop
  | .InvalidConfig => False
  | .ArithmeticOverflow => False
  | .ProvenanceMismatch => False
  | .HiddenLeg => False
  | .InvalidLeg => False
  | .Stale => False
  | .BStale => False
  | .LockActive => False
  | .NonProgress => False
  | .RecoveryRequired => False
  | .CounterOverflow => False
  | .CounterUnderflow => True
instance (x : liquidation_fee_minmax.V16Error) : Decidable (liquidation_fee_minmax.V16Error.is_CounterUnderflow x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

inductive core.result.Result (T : Type) (E : Type) where
  | Ok (_0 : T)
  | Err (_0 : E)
deriving Inhabited

@[simp, grind] def core.result.Result.is_Ok {T : Type} {E : Type} : (core.result.Result T E) → Prop
  | .Ok _ => True
  | .Err _ => False
instance {T : Type} {E : Type} (x : (core.result.Result T E)) : Decidable (core.result.Result.is_Ok x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def core.result.Result.is_Err {T : Type} {E : Type} : (core.result.Result T E) → Prop
  | .Ok _ => False
  | .Err _ => True
instance {T : Type} {E : Type} (x : (core.result.Result T E)) : Decidable (core.result.Result.is_Err x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def core.result.Result.get_Ok__0 {T : Type} [Inhabited T] {E : Type} [Inhabited E] : (core.result.Result T E) → T
  | .Ok _0 => _0
  | .Err _ => Vermilion.unspecified "core.result.Result.get_Ok_0"

@[simp, grind] def core.result.Result.get_Err__0 {T : Type} [Inhabited T] {E : Type} [Inhabited E] : (core.result.Result T E) → E
  | .Ok _ => Vermilion.unspecified "core.result.Result.get_Err_0"
  | .Err _0 => _0

inductive core.cmp.Ordering where
  | Less
  | Equal
  | Greater
deriving Inhabited

@[simp, grind] def core.cmp.Ordering.is_Less : core.cmp.Ordering → Prop
  | .Less => True
  | .Equal => False
  | .Greater => False
instance (x : core.cmp.Ordering) : Decidable (core.cmp.Ordering.is_Less x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def core.cmp.Ordering.is_Equal : core.cmp.Ordering → Prop
  | .Less => False
  | .Equal => True
  | .Greater => False
instance (x : core.cmp.Ordering) : Decidable (core.cmp.Ordering.is_Equal x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def core.cmp.Ordering.is_Greater : core.cmp.Ordering → Prop
  | .Less => False
  | .Equal => False
  | .Greater => True
instance (x : core.cmp.Ordering) : Decidable (core.cmp.Ordering.is_Greater x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

inductive core.option.Option (V : Type) where
  | None
  | Some (_0 : V)
deriving Inhabited

@[simp, grind] def core.option.Option.is_None {V : Type} : (core.option.Option V) → Prop
  | .None => True
  | .Some _ => False
instance {V : Type} (x : (core.option.Option V)) : Decidable (core.option.Option.is_None x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def core.option.Option.is_Some {V : Type} : (core.option.Option V) → Prop
  | .None => False
  | .Some _ => True
instance {V : Type} (x : (core.option.Option V)) : Decidable (core.option.Option.is_Some x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def core.option.Option.get_Some__0 {V : Type} [Inhabited V] : (core.option.Option V) → V
  | .None => Vermilion.unspecified "core.option.Option.get_Some_0"
  | .Some _0 => _0

-- vrml:spec liquidation_fee_minmax.min_u128 case-studies/percolator/liquidation_fee_minmax.rs:35:6
def liquidation_fee_minmax.min_u128 (a : Int) (b : Int) : Int :=
  (Vermilion.iteP (a ≤ b) a b)

-- vrml:spec liquidation_fee_minmax.max_u128 case-studies/percolator/liquidation_fee_minmax.rs:31:6
def liquidation_fee_minmax.max_u128 (a : Int) (b : Int) : Int :=
  (Vermilion.iteP (a ≥ b) a b)

-- vrml:spec vstd.std_specs.num.u128_specs_tmp.impl__2.obeys_cmp_spec vstd/std_specs/num.rs:464:1
def vstd.std_specs.num.u128_specs_tmp.impl__2.obeys_cmp_spec : Prop :=
  True

-- vrml:spec vstd.std_specs.num.u128_specs_tmp.impl__2.cmp_spec vstd/std_specs/num.rs:464:1
def vstd.std_specs.num.u128_specs_tmp.impl__2.cmp_spec (self : Int) (other : Int) : core.cmp.Ordering :=
  (Vermilion.iteP (self < other) core.cmp.Ordering.Less (Vermilion.iteP (self > other) core.cmp.Ordering.Greater core.cmp.Ordering.Equal))

-- vrml:spec vstd.std_specs.num.u128_specs_tmp.impl__1.obeys_partial_cmp_spec vstd/std_specs/num.rs:464:1
def vstd.std_specs.num.u128_specs_tmp.impl__1.obeys_partial_cmp_spec : Prop :=
  True

-- vrml:spec vstd.std_specs.num.u128_specs_tmp.impl__1.partial_cmp_spec vstd/std_specs/num.rs:464:1
def vstd.std_specs.num.u128_specs_tmp.impl__1.partial_cmp_spec (self : Int) (other : Int) : (core.option.Option core.cmp.Ordering) :=
  (Vermilion.iteP (self < other) (core.option.Option.Some core.cmp.Ordering.Less) (Vermilion.iteP (self > other) (core.option.Option.Some core.cmp.Ordering.Greater) (core.option.Option.Some core.cmp.Ordering.Equal)))

