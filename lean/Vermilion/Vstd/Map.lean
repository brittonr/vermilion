import Vermilion.Vstd.Set

/-! # `vstd::map` — the Vermilion mirror

The model for vstd's finite `Map` (a finite key `Set` plus a total lookup)
and its spec surface, in namespace `Vermilion.Map`. -/

namespace Vermilion

/-- Base-camp map representation: a finite key set plus a total lookup
function. vstd's `index` off the domain is underspecified; here it returns
whatever the lookup function holds there, which the constructing operations
fix (`default` for `empty`). A twin proof can observe that value, which
Verus cannot: a documented strengthening (`docs/trust.md`, issue #19). -/
structure Map (κ : Type u) (ν : Type v) where
  keys : Finset κ
  get : κ → ν

namespace Map

def empty [Inhabited ν] : Map κ ν := ⟨∅, fun _ => default⟩

def insert [DecidableEq κ] (m : Map κ ν) (k : κ) (v : ν) : Map κ ν :=
  ⟨Insert.insert k m.keys, fun k' => if k' = k then v else m.get k'⟩

def index (m : Map κ ν) (k : κ) : ν := m.get k

def dom (m : Map κ ν) : Set κ := m.keys

def containsKey (m : Map κ ν) (k : κ) : Prop := k ∈ m.keys

@[simp] theorem containsKey_empty [Inhabited ν] (k : κ) :
    ¬ (empty : Map κ ν).containsKey k := by
  simp [containsKey, empty]

@[simp] theorem containsKey_insert [DecidableEq κ]
    (m : Map κ ν) (k k' : κ) (v : ν) :
    (m.insert k v).containsKey k' ↔ k' = k ∨ m.containsKey k' := by
  simp [containsKey, insert]

@[simp] theorem index_insert_same [DecidableEq κ] (m : Map κ ν) (k : κ) (v : ν) :
    (m.insert k v).index k = v := by
  simp [index, insert]

@[simp] theorem index_insert_other [DecidableEq κ]
    (m : Map κ ν) (k k' : κ) (v : ν) (ne : k' ≠ k) :
    (m.insert k v).index k' = m.index k' := by
  simp [index, insert, ne]

@[simp] theorem dom_empty [Inhabited ν] :
    (empty : Map κ ν).dom = Set.empty := rfl

@[simp] theorem dom_insert [DecidableEq κ] (m : Map κ ν) (k : κ) (v : ν) :
    (m.insert k v).dom = m.dom.insert k := rfl

@[simp] theorem contains_dom (m : Map κ ν) (k : κ) :
    m.dom.contains k ↔ m.containsKey k := Iff.rfl

/-- vstd `Map::remove k`: `k` leaves the domain; every other key keeps its
value (vstd's `axiom_map_remove_domain` / `axiom_map_remove_different`). -/
def remove [DecidableEq κ] (m : Map κ ν) (k : κ) : Map κ ν :=
  ⟨m.keys.erase k, m.get⟩

@[simp] theorem dom_remove [DecidableEq κ] (m : Map κ ν) (k : κ) :
    (m.remove k).dom = m.dom.remove k := rfl

@[simp] theorem containsKey_remove [DecidableEq κ] (m : Map κ ν) (k k' : κ) :
    (m.remove k).containsKey k' ↔ k' ≠ k ∧ m.containsKey k' := by
  simp [containsKey, remove]

@[simp] theorem index_remove_other [DecidableEq κ] (m : Map κ ν) (k k' : κ)
    (ne : k' ≠ k) : (m.remove k).index k' = m.index k' := rfl

end Map
end Vermilion
