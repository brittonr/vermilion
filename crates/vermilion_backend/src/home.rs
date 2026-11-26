//! Where an elaboration finds the Vermilion Lean library.
//!
//! The *home* is the directory that holds the library, the Lake packages it
//! is built against, and the `vrml_worker` built from both. The *project* is
//! the current directory: sources, `generated/` modules, `proofs/` twins and
//! `.vermilion/` state are all relative to it.
//!
//! A development checkout is its own home and the tools run from its root,
//! which is the default. A project elsewhere names the home it uses in
//! `VERMILION_HOME`.

use std::path::{Path, PathBuf};

/// The home directory: `VERMILION_HOME`, else the current directory (as the
/// empty path, so that paths under it print as they always have).
pub fn home() -> PathBuf {
    project_home().unwrap_or_default()
}

/// `VERMILION_HOME`, when the project is not the home itself.
fn project_home() -> Option<PathBuf> {
    std::env::var_os("VERMILION_HOME")
        .filter(|home| !home.is_empty())
        .map(PathBuf::from)
}

/// The cvc5 plugin of the home's lean-cvc5 package, which every elaboration
/// that can reach the `smt` rung loads. `None` if it is not built.
pub fn cvc5_plugin() -> Option<PathBuf> {
    let lib_dir = home().join(".lake/packages/cvc5/.lake/build/lib");
    ["libcvc5_cvc5.dylib", "libcvc5_cvc5.so", "cvc5_cvc5.dll"]
        .into_iter()
        .map(|name| lib_dir.join(name))
        .find(|path| path.exists())
}

/// The batch elaborator Lake builds from `lean_exe vrml_worker`.
pub fn worker() -> PathBuf {
    home().join(".lake/build/bin/vrml_worker")
}

/// The `LEAN_PATH` for direct `lean` and `vrml_worker` invocations. `None`
/// means only `lake env` knows it, at the price of a workspace
/// re-materialization (~30s) per call.
///
/// The caller's `LEAN_PATH` wins. Otherwise it is the home's recorded path;
/// a project elsewhere adds its own build directory, where the checker puts
/// the shared `Specs` modules of generated code.
pub fn lean_path() -> Option<String> {
    if let Some(path) = std::env::var("LEAN_PATH").ok().filter(|path| !path.is_empty()) {
        return Some(path);
    }
    let recorded = recorded_lean_path(&home())?;
    match project_home() {
        None => Some(recorded),
        Some(_) => {
            let project_build = std::env::current_dir().ok()?.join(".lake/build/lib/lean");
            Some(format!("{recorded}:{}", project_build.display()))
        }
    }
}

/// The search path a home has on record: an installed home carries it in
/// `lean-path`, written when it was built. A checkout has the copy
/// scripts/lean_env.sh caches, valid while the Lake configuration is older
/// than it.
fn recorded_lean_path(home: &Path) -> Option<String> {
    let read = |path: PathBuf| {
        let content = std::fs::read_to_string(path).ok()?;
        let trimmed = content.trim();
        (!trimmed.is_empty()).then(|| trimmed.to_owned())
    };
    if let Some(installed) = read(home.join("lean-path")) {
        return Some(installed);
    }
    let cache = home.join(".vermilion/lean-path");
    let cache_modified = std::fs::metadata(&cache).ok()?.modified().ok()?;
    for config in ["lakefile.lean", "lake-manifest.json"] {
        if let Ok(metadata) = std::fs::metadata(home.join(config)) {
            if metadata.modified().ok()? > cache_modified {
                return None;
            }
        }
    }
    read(cache)
}
