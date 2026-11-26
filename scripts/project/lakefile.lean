import Lake

open Lake DSL

-- The Lake workspace of a Vermilion project. `vrml init` wrote this file
-- once; it is yours to edit.
--
-- `.vermilion/home` links to the Vermilion this project was set up for. Its
-- Lean library and the packages it depends on are used as they were built
-- there (lake-manifest.json names each by its path under the link); nothing
-- of them is downloaded or rebuilt here.

-- Proof twins are generated artifacts, so a registered `proofs/` source
-- directory gains a new first-level module root whenever a Rust file is
-- added. Each library discovers its roots when Lake loads this file.
def discoverProofRoots
  (directory : System.FilePath) : IO (Array String × Array String) := do
  if !(← directory.pathExists) then
    return (#[], #[])
  let mut directories := #[]
  let mut files := #[]
  for entry in ← directory.readDir do
    if ← entry.path.isDir then
      directories := directories.push entry.fileName
    else if entry.path.extension == some "lean" then
      files := files.push <| entry.path.fileStem.getD entry.fileName
  return (directories.qsort (· < ·), files.qsort (· < ·))

def proofGlobs (roots : Array String × Array String) : Array Glob :=
  roots.1.map (fun root => .submodules (.mkSimple root)) ++
    roots.2.map fun root => .one (.mkSimple root)

require vermilion from ".vermilion" / "home"

package project where
  -- The `smt` rung calls cvc5 through a native plugin. Lake loads it for
  -- builds; the language server needs it from process startup.
  moreGlobalServerArgs := #[s!"--plugin=.vermilion/home/.lake/packages/cvc5/.lake/build/lib/{nameToSharedLib "cvc5_cvc5"}"]
  -- Generated modules and proof twins must bind every name they use.
  leanOptions := #[⟨`autoImplicit, false⟩, ⟨`relaxedAutoImplicit, false⟩]

-- One library per proofs tree, appended by `vrml register <Name> <dir>`.
-- Module names must stay unique across the libraries: a twin imports its
-- shared definitions as `<stem>.Specs`.
