import Vermilion.Vstd

/-!
Off-domain values of the collection models (issue #19).

Verus leaves these values unspecified; Vermilion's models fix them. This is
a documented, deliberate strengthening (`docs/trust.md`, "Concrete
off-domain values"). The machine ladder does not unfold the models, so the
differential verdicts agree, but an interactive twin proof can establish
each claim below, and Verus cannot. If a model change makes one of these
unprovable (the `opaque` route of #4's `emod`), delete the example and the
corresponding `trust.md` entry together.
-/

open Vermilion

-- `Seq.index` out of range is `default`.
example (s : Seq Int) : Seq.index s (-1) = 0 := by simp [Seq.index]
example (s : Seq Int) (h : Seq.len s = 0) : Seq.index s 0 = 0 := by
  simp [Seq.len] at h; subst h; simp [Seq.index]
-- A reversed `Seq.subrange` is empty.
example (s : Seq Int) : Seq.len (Seq.subrange s 3 1) = 0 := by
  simp [Seq.subrange, Seq.len]
-- `Seq.update` at a negative index is the identity.
example (s : Seq Int) (x : Int) : Seq.update s (-1) x = s := by simp [Seq.update]
-- `Map.index` off the domain of a constructed map is the constructor's value.
example (k : Int) : (Map.empty : Map Int Int).index k = 0 := rfl
