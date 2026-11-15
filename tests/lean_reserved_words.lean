import Vermilion.Obligations
import Vermilion.Ir.Ast

/-!
`leanReservedWords` must cover every identifier-shaped token of the
environment generated modules elaborate in (`Vermilion.Obligations`): such a
token breaks the parse when a Rust name renders to it verbatim (forecast-
kernel's `include` parameter failed its whole Specs module). This recomputes
the token table and fails, naming the missing words, when a Lean, Mathlib,
Aesop or lean-smt bump adds a keyword. It also confirms each listed word
really breaks a binder, so the list cannot grow ordinary identifiers (which
would shift statement hashes for nothing).
-/

open Lean in
#eval show CoreM Unit from do
  let env ← getEnv
  let identLike : String → Bool := fun t =>
    match t.toList with
    | c :: rest => c.isAlpha && rest.all (fun c => c.isAlphanum || c == '_')
    | [] => false
  let tokens := (Lean.Parser.getTokenTable env).values.filter identLike
  let missing := tokens.filter (fun t => !Vermilion.Ir.leanReservedWords.contains t)
  unless missing.isEmpty do
    throwError "leanReservedWords is missing keywords: {missing.qsort (· < ·)}"
  let breaksBinder : String → Bool := fun w =>
    match Lean.Parser.runParserCategory env `command
        s!"theorem t ({w} : Int) : {w} = {w} := rfl" with
    | .ok _ => false
    | .error _ => true
  let spurious := Vermilion.Ir.leanReservedWords.filter (fun w => !breaksBinder w)
  unless spurious.isEmpty do
    throwError "leanReservedWords lists words that parse fine as binders: {spurious}"
  unless !breaksBinder "plain" do
    throwError "control identifier failed to parse"
