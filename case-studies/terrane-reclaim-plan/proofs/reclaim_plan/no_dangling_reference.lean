import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.no_dangling_reference

-- vrml:begin reclaim_plan.no_dangling_reference.assert_0 06164ca4e3bf0b93
/--
Generated VC `reclaim_plan.no_dangling_reference.assert_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:207:12-207:60`
- Rust/SST construct: Rust source assertion
- AssertId: `0`
- Statement hash: `06164ca4e3bf0b93`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 207
  startColumn := 12
  endLine := 207
  endColumn := 60
  assertId := "0"
  functionName := "reclaim_plan.no_dangling_reference"
  kind := "assert"
  statementHash := "06164ca4e3bf0b93"
}
@[vrml_obligation] theorem assert_0
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (i : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_3 : (0 ≤ i) ∧ (i < Vermilion.Seq.len edges))
    (requires_4 : (¬ Vermilion.Seq.index candidate (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i)))) :
    Vermilion.Seq.index candidate (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i)) ↔ (Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i)) ∧ (¬ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i)))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.no_dangling_reference.assert_0

-- vrml:begin reclaim_plan.no_dangling_reference.assert_1 d66817cc4a465528
/--
Generated VC `reclaim_plan.no_dangling_reference.assert_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:208:12-208:60`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `d66817cc4a465528`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 208
  startColumn := 12
  endLine := 208
  endColumn := 60
  assertId := "1"
  functionName := "reclaim_plan.no_dangling_reference"
  kind := "assert"
  statementHash := "d66817cc4a465528"
}
@[vrml_obligation] theorem assert_1
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (i : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_3 : (0 ≤ i) ∧ (i < Vermilion.Seq.len edges))
    (requires_4 : (¬ Vermilion.Seq.index candidate (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i))))
    (assert_0 : Vermilion.Seq.index candidate (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i)) ↔ (Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i)) ∧ (¬ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i))))) :
    Vermilion.Seq.index candidate (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i)) ↔ (Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i)) ∧ (¬ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i)))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.no_dangling_reference.assert_1

-- vrml:begin reclaim_plan.no_dangling_reference.assert_2 5c5eb49db4af7870
/--
Generated VC `reclaim_plan.no_dangling_reference.assert_2`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:209:12-209:39`
- Rust/SST construct: Rust source assertion
- AssertId: `2`
- Statement hash: `5c5eb49db4af7870`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 209
  startColumn := 12
  endLine := 209
  endColumn := 39
  assertId := "2"
  functionName := "reclaim_plan.no_dangling_reference"
  kind := "assert"
  statementHash := "5c5eb49db4af7870"
}
@[vrml_obligation] theorem assert_2
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (i : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_3 : (0 ≤ i) ∧ (i < Vermilion.Seq.len edges))
    (requires_4 : (¬ Vermilion.Seq.index candidate (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i))))
    (assert_0 : Vermilion.Seq.index candidate (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i)) ↔ (Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i)) ∧ (¬ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i)))))
    (assert_1 : Vermilion.Seq.index candidate (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i)) ↔ (Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i)) ∧ (¬ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i))))) :
    Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.no_dangling_reference.assert_2

-- vrml:begin reclaim_plan.no_dangling_reference.assert_3 1e884490e3f9b06d
/--
Generated VC `reclaim_plan.no_dangling_reference.assert_3`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:210:12-210:47`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `1e884490e3f9b06d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 210
  startColumn := 12
  endLine := 210
  endColumn := 47
  assertId := "3"
  functionName := "reclaim_plan.no_dangling_reference"
  kind := "assert"
  statementHash := "1e884490e3f9b06d"
}
@[vrml_obligation] theorem assert_3
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (i : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_3 : (0 ≤ i) ∧ (i < Vermilion.Seq.len edges))
    (requires_4 : (¬ Vermilion.Seq.index candidate (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i))))
    (assert_0 : Vermilion.Seq.index candidate (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i)) ↔ (Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i)) ∧ (¬ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i)))))
    (assert_1 : Vermilion.Seq.index candidate (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i)) ↔ (Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i)) ∧ (¬ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i)))))
    (assert_2 : Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i))) :
    (¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i))) → (¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.no_dangling_reference.assert_3

-- vrml:begin reclaim_plan.no_dangling_reference.ensures_4 f6ef4ee34a61b3e0
/--
Generated VC `reclaim_plan.no_dangling_reference.ensures_4`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:203:13-203:42`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `4`
- Statement hash: `f6ef4ee34a61b3e0`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index edges vrml_i0⟩ ⟨Vermilion.Seq.index roots vrml_i0⟩
-/
def ensures_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 203
  startColumn := 13
  endLine := 203
  endColumn := 42
  assertId := "4"
  functionName := "reclaim_plan.no_dangling_reference"
  kind := "ensures"
  statementHash := "f6ef4ee34a61b3e0"
}
@[vrml_obligation] theorem ensures_4
    (n : Int)
    (edges : (Vermilion.Seq (vermilion.tuple_2 Int Int)))
    (roots : (Vermilion.Seq Int))
    (reclaimable : (Vermilion.Seq Prop))
    (retained : (Vermilion.Seq Prop))
    (candidate : (Vermilion.Seq Prop))
    (i : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len edges)) → (Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges vrml_i0)) ∧ Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges vrml_i0))))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len roots)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index roots vrml_i0))))
    (requires_2 : reclaim_plan.plan_valid_spec n edges roots reclaimable retained candidate)
    (requires_3 : (0 ≤ i) ∧ (i < Vermilion.Seq.len edges))
    (requires_4 : (¬ Vermilion.Seq.index candidate (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i))))
    (assert_0 : Vermilion.Seq.index candidate (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i)) ↔ (Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i)) ∧ (¬ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i)))))
    (assert_1 : Vermilion.Seq.index candidate (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i)) ↔ (Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i)) ∧ (¬ Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i)))))
    (assert_2 : Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i)) → Vermilion.Seq.index retained (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i)))
    (assert_3 : (¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__0 (Vermilion.Seq.index edges i))) → (¬ Vermilion.Seq.index reclaimable (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i)))) :
    (¬ Vermilion.Seq.index candidate (vermilion.tuple_2.get_tuple_2__1 (Vermilion.Seq.index edges i))) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.no_dangling_reference.ensures_4

end reclaim_plan.no_dangling_reference

