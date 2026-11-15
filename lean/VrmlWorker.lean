import Lean

/-!
# `vrml_worker`: elaborate many Lean files against one imported environment

`vrml_check` used to start one `lean` process per file, and every process
paid the same ~2 s import of the Mathlib closure that `Vermilion.Obligations`
pulls in (issue #11). This executable imports the union of the given files' `import` headers
**once**, then elaborates each file's commands against that environment,
concurrently, each with its own command state and main-module name (so
files cannot see each other's declarations). A file whose own module is
imported by another file of the batch (a twin `Evidence` module) must not
be in the same batch — it would see its own declarations; `vrml_check`
checks such files separately.

Elaboration goes through Lean's ordinary frontend (`IO.processCommands`), so
every declaration is checked by the kernel exactly as under `lean <file>`.

Usage:

    vrml_worker [--json] [--jobs=N] [--plugin=PATH]... [-Dname=value]... FILE...
    vrml_worker --serve DIR [--plugin=PATH]...

`--serve DIR` is the persistent mode (issue #12): the process stays up and
answers jobs through the FIFOs `DIR/request` and `DIR/response` (created by
the client side, `vrml_watch`). Each request is one JSON line
`{"files": [...], "json": bool, "defines": [["name", "value"], ...]}`; the
response is the batch output below followed by `### vrml-worker-end <exit>`.
Imported environments are cached by import set and reused while the
imported `.olean` files are unchanged, so after the first job a re-check
pays elaboration only — no Mathlib import.

Output: for each file, in argument order, a marker line

    ### vrml-worker <index> <status>

(`status` 0 = no error messages, 1 = errors) followed by that file's
messages — one `lean --json`-compatible JSON object per line with `--json`,
Lean's human-readable rendering otherwise. The exit code is 1 if any file
had errors. Files that need *different* versions of the same module (e.g. a
generated unit and its proofs twin, which define the same names) must go to
separate invocations; `vrml_check` keeps generated modules and twins apart.
-/

open Lean Elab

structure WorkerArgs where
  json : Bool := false
  /-- Files elaborated concurrently. Bounded on purpose: each in-flight file
  holds its whole elaboration state, and an unbounded fan-out exhausted
  memory on large case studies. `vrml_check` passes its core count. -/
  jobs : Nat := 1
  serve : Option String := none
  plugins : Array String := #[]
  defines : Array (String × String) := #[]
  files : Array String := #[]

def parseArgs (args : List String) : Except String WorkerArgs := do
  let mut out : WorkerArgs := {}
  let mut rest := args
  while !rest.isEmpty do
    let arg := rest.head!
    rest := rest.tail!
    if arg == "--serve" then
      match rest with
      | dir :: remaining => out := { out with serve := some dir }; rest := remaining
      | [] => throw "--serve requires a directory"
    else if arg.startsWith "--jobs=" then
      match (arg.drop 7).toString.toNat? with
      | some n => out := { out with jobs := max n 1 }
      | none => throw s!"malformed `{arg}`"
    else if arg == "--json" then
      out := { out with json := true }
    else if arg.startsWith "--plugin=" then
      out := { out with plugins := out.plugins.push (arg.drop 9).toString }
    else if arg.startsWith "-D" then
      let body := (arg.drop 2).toString
      match body.splitOn "=" with
      | name :: valueParts@(_ :: _) =>
        out := { out with defines := out.defines.push (name, "=".intercalate valueParts) }
      | _ => throw s!"malformed option `{arg}` (expected -Dname=value)"
    else if arg.startsWith "-" then
      throw s!"unknown flag `{arg}`"
    else
      out := { out with files := out.files.push arg }
  return out

/-- Convert a `-Dname=value` string to the registered option's type. -/
def optionValue (name : Name) (raw : String) : IO DataValue := do
  let decl ← getOptionDecl name
  match decl.defValue with
  | .ofBool _ =>
    match raw with
    | "true" => pure (.ofBool true)
    | "false" => pure (.ofBool false)
    | _ => throw <| IO.userError s!"option {name} expects true/false, got `{raw}`"
  | .ofNat _ =>
    match raw.toNat? with
    | some n => pure (.ofNat n)
    | none => throw <| IO.userError s!"option {name} expects a natural number, got `{raw}`"
  | .ofString _ => pure (.ofString raw)
  | _ => throw <| IO.userError s!"option {name} has a type -D cannot set"

/-- Elaborate one file's commands (its header is skipped: its imports are
part of the shared base) and return its messages. -/
def elabFile (base : Environment) (opts : Options) (index : Nat) (file : String) :
    IO MessageLog := do
  let input ← IO.FS.readFile file
  let inputCtx := Parser.mkInputContext input file
  let (_, parserState, headerMessages) ← Parser.parseHeader inputCtx
  let env := base.setMainModule (Name.mkSimple s!"vrml_worker_unit_{index}")
  let state ← IO.processCommands inputCtx parserState
    (Command.mkState env headerMessages opts)
  return state.commandState.messages

/-- A file's own `import` header. -/
def fileImports (file : String) : IO (Array Import) := do
  let input ← IO.FS.readFile file
  let (header, _, _) ← Parser.parseHeader (Parser.mkInputContext input file)
  return headerToImports header

/-- A canonical key for an import set. -/
def importKey (imports : Array Import) : String :=
  let names : Array String := imports.map fun (imp : Import) => imp.module.toString
  ",".intercalate (names.qsort (fun a b => decide (a < b))).toList

def parseOptions (defines : Array (String × String)) : IO Options := do
  let mut opts : Options := {}
  for (name, raw) in defines do
    let name := name.toName
    opts := opts.insert name (← optionValue name raw)
  return opts

/-- Elaborate `files`, each against the environment `envFor` provides for
its own header, and render the batch output; returns (output text, any
file had errors). Options are parsed after the first import, which runs
the initializers that register them. -/
def runJob (envFor : Array Import → IO Environment)
    (defines : Array (String × String)) (json : Bool) (jobs : Nat) (files : Array String) :
    IO (String × Bool) := do
  -- One environment for the union of the files' headers: a superset of
  -- every file's own imports, which a unit cannot observe except through
  -- names it does not mention. The caller keeps out of a batch any file
  -- whose own module another batch file imports (a twin `Evidence`
  -- module), since that file must not see itself.
  let mut imports : Array Import := #[]
  for file in files do
    for imp in ← fileImports file do
      unless imports.any (·.module == imp.module) do
        imports := imports.push imp
  let base ← envFor imports
  let bases : Array Environment := files.map fun _ => base
  let opts ← parseOptions defines
  -- At most `jobs` files in flight at a time.
  let mut results : Array (Except IO.Error MessageLog) := #[]
  let indexed := (files.zip bases).mapIdx fun index (file, base) => (index, file, base)
  let mut start := 0
  while start < indexed.size do
    let wave := indexed.extract start (start + jobs)
    let tasks ← wave.mapM fun (index, file, base) =>
      IO.asTask (elabFile base opts index file)
    for task in tasks do
      results := results.push (← IO.wait task)
    start := start + jobs
  let mut anyError := false
  let mut out := ""
  for index in [0:files.size] do
    let file := files[index]!
    let messages ← match results[index]! with
      | .ok messages => pure messages
      | .error error =>
        pure <| MessageLog.empty.add {
          fileName := file, pos := ⟨1, 0⟩, severity := .error
          data := s!"vrml_worker: {error}" }
    let failed := messages.hasErrors
    anyError := anyError || failed
    out := out ++ s!"### vrml-worker {index} {if failed then 1 else 0}\n"
    for message in messages.toList do
      if json then
        out := out ++ (← message.toJson).compress ++ "\n"
      else
        out := out ++ (← message.toString (includeEndPos := false))
  return (out, anyError)

/-- Modification times of the direct imports' `.olean`s: a cached
environment is reused only while these are unchanged (a regenerated
`Specs` module or a rebuilt Vermilion library invalidates it). -/
def importStamp (imports : Array Import) : IO (Array (Name × String)) :=
  imports.mapM fun imp => do
    let stamp ← try
        let olean ← findOLean imp.module
        let modified := (← olean.metadata).modified
        pure s!"{modified.sec}.{modified.nsec}"
      catch _ => pure "missing"
    pure (imp.module, stamp)

structure CachedEnv where
  stamp : Array (Name × String)
  env : Environment

/-- An import-set → environment provider backed by `cache`, re-importing
when the direct imports' `.olean`s changed. Plugins can be loaded once per
process, so they ride along with the first import only. -/
unsafe def cachedEnvFor (cache : IO.Ref (Std.HashMap String CachedEnv))
    (pluginsPending : IO.Ref (Array Plugin)) (imports : Array Import) : IO Environment := do
  let key := importKey imports
  let stamp ← importStamp imports
  if let some cached := (← cache.get)[key]? then
    if cached.stamp == stamp then return cached.env
  let plugins ← pluginsPending.get
  pluginsPending.set #[]
  -- `importModules` resets the initializer flag after every import; each
  -- module's initializers still run at most once per process.
  enableInitializersExecution
  let env ← importModules imports {} (loadExts := true) (plugins := plugins)
  cache.modify (·.insert key { stamp, env })
  return env

/-- The persistent server loop over the FIFOs in `dir`. -/
unsafe def serve (dir : String) (plugins : Array Plugin) : IO UInt32 := do
  let request : System.FilePath := dir ++ "/request"
  let response : System.FilePath := dir ++ "/response"
  let cache ← IO.mkRef (∅ : Std.HashMap String CachedEnv)
  let pluginsPending ← IO.mkRef plugins
  -- Clients poll this PID while waiting for a reply, so a server that dies
  -- mid-job makes them fall back instead of blocking forever.
  IO.FS.writeFile (dir ++ "/pid") s!"{← IO.Process.getPID}\n"
  let rec loop : IO UInt32 := do
    let line := (← IO.FS.readFile request).trimAscii.toString
    if line.isEmpty || line == "quit" then
      return 0
    let reply ← try
        let job ← IO.ofExcept (Json.parse line)
        let files ← IO.ofExcept (job.getObjValAs? (Array String) "files")
        let json := (job.getObjValAs? Bool "json").toOption.getD false
        let defines := (job.getObjValAs? (Array (String × String)) "defines").toOption.getD #[]
        let jobs := max ((job.getObjValAs? Nat "jobs").toOption.getD 1) 1
        let (out, failed) ← runJob (cachedEnvFor cache pluginsPending) defines json jobs files
        pure (out ++ s!"### vrml-worker-end {if failed then 1 else 0}\n")
      catch error =>
        pure s!"### vrml-worker-error {toString error |>.replace "\n" " "}\n### vrml-worker-end 2\n"
    IO.FS.writeFile response reply
    loop
  loop

unsafe def main (args : List String) : IO UInt32 := do
  let args ← match parseArgs args with
    | .ok args => pure args
    | .error message => IO.eprintln s!"vrml_worker: {message}"; return 2
  initSearchPath (← findSysroot)
  enableInitializersExecution
  let plugins ← args.plugins.mapM fun (path : String) => do
    let path ← IO.FS.realPath (System.FilePath.mk path)
    pure (Plugin.mk path none)
  if let some dir := args.serve then
    return ← serve dir plugins
  if args.files.isEmpty then
    IO.eprintln "usage: vrml_worker [--json] [--plugin=PATH]... [-Dname=value]... FILE..."
    return 2
  let cache ← IO.mkRef (∅ : Std.HashMap String CachedEnv)
  let pluginsPending ← IO.mkRef plugins
  let (out, anyError) ←
    runJob (cachedEnvFor cache pluginsPending) args.defines args.json args.jobs args.files
  IO.print out
  return if anyError then 1 else 0
