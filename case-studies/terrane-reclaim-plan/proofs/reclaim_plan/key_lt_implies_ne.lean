import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.key_lt_implies_ne

-- vrml:begin reclaim_plan.key_lt_implies_ne.ensures_1 ea8a98cfcd5053b0
/--
Generated VC `reclaim_plan.key_lt_implies_ne.ensures_1`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:832:13-832:19`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1`
- Statement hash: `ea8a98cfcd5053b0`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩
-/
def ensures_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 832
  startColumn := 13
  endLine := 832
  endColumn := 19
  assertId := "1"
  functionName := "reclaim_plan.key_lt_implies_ne"
  kind := "ensures"
  statementHash := "ea8a98cfcd5053b0"
}
@[vrml_obligation] theorem ensures_1
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0))))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index b vrml_i0))))
    (requires_2 : reclaim_plan.key_lt_spec a b)
    (then_0_call_key_lt_irreflexive_ensures_0 : (a = b) → (¬ reclaim_plan.key_lt_spec a a)) :
    (¬ (a = b)) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_lt_implies_ne.ensures_1

end reclaim_plan.key_lt_implies_ne

