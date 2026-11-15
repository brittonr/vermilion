//! Textual helpers over marker-delimited obligation blocks, shared by
//! `vrml_check` and `vrml_sync`.
//!
//! These checks are a fast, conservative pre-filter. The authoritative
//! guarantee that a twin proves its obligation without holes or extra
//! axioms is the Lean-side audit (`vermilion.audit`, see
//! `Vermilion/Metadata.lean`), which `vrml_check --twin-check` enables.

/// Does this proof text contain a hole? `sorry` anywhere (including
/// `sorryAx`), or the `admit` tactic, which elaborates to `sorry` but does
/// not contain that substring (issue #1).
pub fn has_hole(text: &str) -> bool {
    text.contains("sorry") || contains_word(text, "admit")
}

fn contains_word(text: &str, word: &str) -> bool {
    let is_ident = |c: char| c.is_alphanumeric() || c == '_' || c == '.' || c == '\'';
    let mut rest = text;
    while let Some(index) = rest.find(word) {
        let before = rest[..index].chars().next_back();
        let after = rest[index + word.len()..].chars().next();
        if !before.is_some_and(is_ident) && !after.is_some_and(is_ident) {
            return true;
        }
        rest = &rest[index + word.len()..];
    }
    false
}

/// Split an obligation block at its `:= by`: (signature, proof body).
pub fn split_block(block: &str) -> Option<(String, String)> {
    let mut signature = String::new();
    let mut body = String::new();
    let mut in_body = false;
    for line in block.lines() {
        if in_body {
            body.push_str(line);
            body.push('\n');
        } else {
            signature.push_str(line);
            signature.push('\n');
            if line.trim_end().ends_with(":= by") {
                in_body = true;
            }
        }
    }
    in_body.then_some((signature, body))
}

/// The declaration part of a block signature: from the `@[vrml_obligation]`
/// / `@[vrml_evidence]` attribute through `:= by`. Doc comments and the
/// `_meta` record above it may legitimately drift; the declaration may not.
/// Evidence declarations differ across emission layouts only by the
/// `local` keyword, so it is normalized away.
pub fn declaration_of(signature: &str) -> Option<String> {
    ["@[vrml_obligation]", "@[vrml_evidence]"]
        .into_iter()
        .filter_map(|marker| signature.find(marker))
        .min()
        .map(|start| {
            signature[start..].replace(" noncomputable local instance ", " noncomputable instance ")
        })
}

/// Does the twin block still state exactly the generated declaration
/// (binders, hypotheses and goal)? A marker line carrying the right hash
/// says nothing about the theorem text under it.
pub fn same_declaration(twin_block: &str, generated_block: &str) -> bool {
    match (split_block(twin_block), split_block(generated_block)) {
        (Some((twin_signature, _)), Some((generated_signature, _))) => {
            match (declaration_of(&twin_signature), declaration_of(&generated_signature)) {
                (Some(twin), Some(generated)) => twin == generated,
                _ => false,
            }
        }
        _ => false,
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    const GENERATED: &str = "-- vrml:begin a.b.ensures_0 h\n/-- doc -/\n\
        @[vrml_obligation] theorem ensures_0\n    (x : Int)\n    (requires_0 : x < 100) :\n    \
        x + 1 < 101 := by\n  vrml\n-- vrml:end a.b.ensures_0\n";

    #[test]
    fn detects_admit_and_sorry() {
        assert!(has_hole("  sorry\n"));
        assert!(has_hole("  exact sorryAx _ false\n"));
        assert!(has_hole("  admit\n"));
        assert!(has_hole("  constructor <;> admit\n"));
        assert!(!has_hole("  exact admitted_lemma x\n"));
        assert!(!has_hole("  exact Foo.admit_ok\n"));
        assert!(!has_hole("  omega\n"));
    }

    #[test]
    fn same_declaration_ignores_docs_and_body() {
        let twin = GENERATED
            .replace("/-- doc -/", "/-- other doc -/")
            .replace("  vrml\n", "  omega\n");
        assert!(same_declaration(&twin, GENERATED));
    }

    #[test]
    fn same_declaration_rejects_edited_goal_or_hypotheses() {
        let weakened = GENERATED.replace("    x + 1 < 101 := by", "    True := by");
        assert!(!same_declaration(&weakened, GENERATED));
        let extra = GENERATED.replace("(requires_0 : x < 100) :", "(requires_0 : x < 100)\n    (h : False) :");
        assert!(!same_declaration(&extra, GENERATED));
    }
}
