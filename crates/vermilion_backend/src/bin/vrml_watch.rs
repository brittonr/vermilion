//! Watch mode: keep one Rust source verified as it is edited, with a
//! sub-five-second loop for function-local changes.
//!
//! On every save the front half reruns (Verus front end → direct adapter →
//! `vrml_gen`), which is fast; the expensive step — Lean judging
//! obligations — runs **only for the functions whose statement hashes
//! changed**, delegated to `vrml_check --only <function>…` so diagnostics
//! still land on the exact Rust spans. This works uniformly across the
//! per-file and per-function emission modes (`vrml_gen` keeps whichever
//! mode the directory was generated with).
//!
//! Driven by `scripts/vrml_watch.sh`, which prepares the Verus environment:
//!
//! ```console
//! ./scripts/vrml_watch.sh examples/m1-pipeline simple.rs
//! ```

use std::collections::BTreeMap;
use std::path::{Path, PathBuf};
use std::process::Command;
use std::time::{Duration, SystemTime};

use vermilion_backend::home;
use vermilion_backend::project::{ModuleManifest, ObligationRecord};

struct Tools {
    verus: String,
    direct: String,
    vrml_gen: String,
    vrml_check: String,
}

fn run(tool: &str, args: &[&str], envs: &[(&str, String)]) -> Result<String, String> {
    let mut command = Command::new(tool);
    command.args(args);
    for (key, value) in envs {
        command.env(key, value);
    }
    let output = command
        .output()
        .map_err(|error| format!("cannot run {tool}: {error}"))?;
    if !output.status.success() {
        return Err(format!(
            "{tool} failed:\n{}{}",
            String::from_utf8_lossy(&output.stdout),
            String::from_utf8_lossy(&output.stderr)
        ));
    }
    Ok(String::from_utf8_lossy(&output.stdout).into_owned())
}

fn regenerate(tools: &Tools, rust_file: &str, stem: &str) -> Result<(PathBuf, ModuleManifest), String> {
    let export = format!(".vermilion/{stem}-vir.bin");
    let uses_vstd = std::fs::read_to_string(rust_file)
        .map(|source| source.contains("use vstd::"))
        .unwrap_or(false);
    let mut arguments = vec![rust_file, "--crate-type=lib"];
    if !uses_vstd {
        arguments.extend(["--no-vstd", "--cfg", "verus_no_vstd"]);
    }
    arguments.push("--no-verify");
    run(
        &tools.verus,
        &arguments,
        &[(
            "VERUS_VIR_EXPORT",
            std::env::current_dir()
                .map_err(|error| error.to_string())?
                .join(&export)
                .display()
                .to_string(),
        )],
    )?;
    let ir = format!(".vermilion/{stem}-ir.sexp");
    run(&tools.direct, &[&export, "--out", &ir], &[])?;
    run(&tools.vrml_gen, &[&ir], &[])?;
    let manifest_path = Path::new(rust_file)
        .parent()
        .unwrap_or_else(|| Path::new("."))
        .join("generated")
        .join(format!("{stem}.json"));
    let manifest: ModuleManifest = serde_json::from_str(
        &std::fs::read_to_string(&manifest_path)
            .map_err(|error| format!("cannot read {}: {error}", manifest_path.display()))?,
    )
    .map_err(|error| error.to_string())?;
    Ok((manifest_path, manifest))
}

/// One watch iteration: regenerate, diff, judge what changed. Returns the
/// fresh manifest.
fn iteration(
    tools: &Tools,
    rust_file: &str,
    stem: &str,
    previous: Option<&ModuleManifest>,
) -> Result<ModuleManifest, String> {
    let started = SystemTime::now();
    let (manifest_path, manifest) = regenerate(tools, rust_file, stem)?;

    let known: BTreeMap<&str, &str> = previous
        .map(|manifest| {
            manifest
                .obligations
                .iter()
                .map(|record| (record.name.as_str(), record.statement_hash.as_str()))
                .collect()
        })
        .unwrap_or_default();
    let changed: Vec<&ObligationRecord> = manifest
        .obligations
        .iter()
        .filter(|record| known.get(record.name.as_str()) != Some(&record.statement_hash.as_str()))
        .collect();

    if changed.is_empty() {
        println!(
            "[vermilion watch] no semantic changes ({} obligations unchanged) [{}ms]",
            manifest.obligations.len(),
            started.elapsed().unwrap_or_default().as_millis()
        );
        return Ok(manifest);
    }

    println!(
        "[vermilion watch] {} changed obligation(s): {}",
        changed.len(),
        changed
            .iter()
            .map(|record| record.name.as_str())
            .collect::<Vec<_>>()
            .join(", ")
    );
    // Judge only the functions whose obligations changed: `vrml_check
    // --only` assembles per-file deltas (with the right preambles/imports)
    // itself, in either emission mode.
    let mut functions: Vec<&str> = Vec::new();
    for record in &changed {
        if !functions.contains(&record.namespace.as_str()) {
            functions.push(record.namespace.as_str());
        }
    }
    let mut command = Command::new(&tools.vrml_check);
    command.arg(&manifest_path);
    for function in functions {
        command.args(["--only", function]);
    }
    let status = command
        .status()
        .map_err(|error| format!("cannot run vrml_check: {error}"))?;
    println!(
        "[vermilion watch] {} [{}ms]",
        if status.success() {
            "all changed obligations verified"
        } else {
            "obligations failed — see diagnostics above"
        },
        started.elapsed().unwrap_or_default().as_millis()
    );
    Ok(manifest)
}

/// Start a persistent `vrml_worker --serve` for this watch session
/// (issue #12) and point every `vrml_check` child at it through
/// `VRML_WORKER_DIR`: re-checks then pay elaboration only, not the Mathlib
/// import. Best effort — without the worker binary (or `mkfifo`), or with
/// `VRML_ISOLATED` set, `vrml_check` simply starts its own processes.
fn start_persistent_worker() -> Option<std::process::Child> {
    let worker = home::worker();
    if std::env::var_os("VRML_ISOLATED").is_some() || !worker.exists() {
        return None;
    }
    let dir = PathBuf::from(format!(".vermilion/worker-{}", std::process::id()));
    std::fs::create_dir_all(&dir).ok()?;
    for fifo in ["request", "response"] {
        let path = dir.join(fifo);
        let _ = std::fs::remove_file(&path);
        let made = Command::new("mkfifo").arg(&path).status().ok()?;
        if !made.success() {
            return None;
        }
    }
    // The search path the checks themselves use; with none on record, Lake
    // supplies it.
    let mut command = match home::lean_path() {
        Some(lean_path) => {
            let mut direct = Command::new(&worker);
            direct.env("LEAN_PATH", lean_path);
            direct
        }
        None => {
            let mut through_lake = Command::new("lake");
            through_lake.arg("env").arg(&worker);
            through_lake
        }
    };
    command.arg("--serve").arg(&dir);
    if let Some(plugin) = home::cvc5_plugin() {
        command.arg(format!("--plugin={}", plugin.display()));
    }
    let child = command.spawn().ok()?;
    std::env::set_var("VRML_WORKER_DIR", &dir);
    println!("[vermilion watch] persistent Lean worker started ({})", dir.display());
    Some(child)
}

fn main() -> Result<(), Box<dyn std::error::Error>> {
    let mut arguments = std::env::args().skip(1);
    let rust_file = arguments
        .next()
        .ok_or("usage: vrml_watch <file.rs> --verus <path> --direct <path> --vrml-gen <path>")?;
    let mut verus = None;
    let mut direct = None;
    let mut vrml_gen = None;
    let mut once = false;
    while let Some(argument) = arguments.next() {
        match argument.as_str() {
            "--verus" => verus = arguments.next(),
            "--direct" => direct = arguments.next(),
            "--vrml-gen" => vrml_gen = arguments.next(),
            "--once" => once = true,
            other => return Err(format!("unknown option {other}").into()),
        }
    }
    let tools = Tools {
        verus: verus.ok_or("--verus is required")?,
        direct: direct.ok_or("--direct is required")?,
        vrml_gen: vrml_gen.ok_or("--vrml-gen is required")?,
        // The checker built or installed beside this binary.
        vrml_check: std::env::current_exe()?
            .with_file_name("vrml_check")
            .display()
            .to_string(),
    };
    let stem = Path::new(&rust_file)
        .file_stem()
        .and_then(|stem| stem.to_str())
        .ok_or("cannot derive stem")?
        .to_owned();

    // Kept alive for the whole session; killed with this process group.
    let _worker = if once { None } else { start_persistent_worker() };
    println!("[vermilion watch] initial run for {rust_file}");
    let mut manifest = iteration(&tools, &rust_file, &stem, None)?;
    if once {
        return Ok(());
    }

    let mut last_modified = std::fs::metadata(&rust_file)?.modified()?;
    println!("[vermilion watch] watching {rust_file} — edit and save to re-verify (Ctrl-C to stop)");
    loop {
        std::thread::sleep(Duration::from_millis(300));
        let modified = std::fs::metadata(&rust_file)?.modified()?;
        if modified != last_modified {
            last_modified = modified;
            match iteration(&tools, &rust_file, &stem, Some(&manifest)) {
                Ok(fresh) => manifest = fresh,
                Err(error) => eprintln!("[vermilion watch] {error}"),
            }
        }
    }
}
