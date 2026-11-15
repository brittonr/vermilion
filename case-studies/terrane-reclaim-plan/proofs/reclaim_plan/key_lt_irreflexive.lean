import Vermilion.Obligations
import reclaim_plan.Specs
import reclaim_plan.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace reclaim_plan.key_lt_irreflexive

-- vrml:begin reclaim_plan.key_lt_irreflexive.ensures_0 619009a247ff3834
/--
Generated VC `reclaim_plan.key_lt_irreflexive.ensures_0`.

- Rust source: `case-studies/terrane-reclaim-plan/reclaim_plan.rs:804:13-804:31`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `619009a247ff3834`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/terrane-reclaim-plan/reclaim_plan.rs"
  startLine := 804
  startColumn := 13
  endLine := 804
  endColumn := 31
  assertId := "0"
  functionName := "reclaim_plan.key_lt_irreflexive"
  kind := "ensures"
  statementHash := "619009a247ff3834"
}
@[vrml_obligation] theorem ensures_0
    (a : (Vermilion.Seq Int))
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index a vrml_i0)))) :
    (¬ reclaim_plan.key_lt_spec a a) := by
  iterate 3 (try first | (rw [reclaim_plan.reachable_fuel]; try norm_num) | (rw [reclaim_plan.count_true_upto]; try norm_num) | (rw [reclaim_plan.key_reach_fuel]; try norm_num))
  vrml [reclaim_plan.edges_in_range_spec, reclaim_plan.closed_spec, reclaim_plan.has_edge_spec, reclaim_plan.MAX_NODES, reclaim_plan.MAX_EDGES, reclaim_plan.MAX_ROOTS, reclaim_plan.roots_in_range_spec, reclaim_plan.protected_closed_spec, reclaim_plan.admissible_spec, reclaim_plan.roots_retained_spec, reclaim_plan.candidates_exact_spec, reclaim_plan.plan_valid_spec, reclaim_plan.live_spec, reclaim_plan.count_true, reclaim_plan.LENGTH_MISMATCH, reclaim_plan.PLANNED, reclaim_plan.TOO_LARGE, reclaim_plan.ROOT_OUT_OF_RANGE, reclaim_plan.EDGE_OUT_OF_RANGE, reclaim_plan.PROTECTED_REFERENCES_RECLAIMABLE, reclaim_plan.retained_sound_spec, reclaim_plan.ROUND_LIMIT, reclaim_plan.edges_subset_spec, reclaim_plan.roots_subset_spec, reclaim_plan.reclaimable_subset_spec, reclaim_plan.prefix_eq_spec, reclaim_plan.key_lt_at_spec, reclaim_plan.key_lt_spec, reclaim_plan.keys_sorted_spec, reclaim_plan.edge_names_ref_spec, reclaim_plan.ref_resolved_spec, reclaim_plan.edges_match_refs_spec, reclaim_plan.roots_match_keys_spec, reclaim_plan.projection_valid_spec, reclaim_plan.key_live_spec, reclaim_plan.prefix_of_spec, reclaim_plan.key_marked_spec, reclaim_plan.mask_matches_paths_spec]
-- vrml:end reclaim_plan.key_lt_irreflexive.ensures_0

end reclaim_plan.key_lt_irreflexive

