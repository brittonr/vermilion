#!/usr/bin/env python3
"""Vacuity oracle (issue #16): mutation differential over the corpus.

Verdict parity cannot see a vacuous obligation, one whose hypotheses are
contradictory and so "verifies" whatever its goal says. This oracle inserts
`assert(false);` at statement positions inside the function bodies of every
expect-pass corpus case and runs both verifiers on each mutant:

- Verus proves the mutant: the position is dead code. Fine.
- Both reject it: the position is live. Fine.
- **Lean proves it while Verus rejects it: a vacuity bug** (Lean's
  hypotheses at that point are contradictory where Verus's are not). This is
  a false acceptance by construction and fails the run.

Mutants Verus cannot even elaborate (an insertion point that is not a
statement position) are skipped and counted.

Usage: differential_vacuity.py [--per-case N] [--jobs N] [CASE ...]
"""
import concurrent.futures
import json
import os
import re
import shutil
import subprocess
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from differential_outcomes import classify_lean, classify_verus  # noqa: E402

ROOT = Path(__file__).resolve().parent.parent
CORPUS = ROOT / "tests" / "differential"
WORK = ROOT / ".vermilion" / "vacuity"

FN_HEADER = re.compile(r"^\s*(pub(\([^)]*\))?\s+)?(proof\s+|exec\s+)?fn\s")
SPEC_HEADER = re.compile(r"^\s*(pub(\([^)]*\))?\s+)?(open\s+|closed\s+)?spec\s+fn\s")


def insertion_points(lines):
    """Line indices AFTER which `assert(false);` is a statement position: the
    line opening an exec/proof fn body, and, inside such a body, lines that
    end a statement (`;`) or open a nested block (`{`, except `match`
    scrutinee lines, whose next line is an arm)."""
    points = []
    in_header = False
    depth = 0  # brace depth inside the current fn body; 0 = outside
    for index, line in enumerate(lines):
        code = line.split("//", 1)[0].rstrip()
        if depth == 0:
            if FN_HEADER.match(code) and not SPEC_HEADER.match(code):
                in_header = True
            if in_header and code.endswith("{"):
                in_header = False
                depth = 1
                points.append(index)
            continue
        opened = code.count("{")
        closed = code.count("}")
        depth += opened - closed
        if depth <= 0:
            depth = 0
            continue
        if code.endswith(";") or (code.endswith("{") and "match " not in code):
            points.append(index)
    return points


def sample(points, limit):
    if len(points) <= limit:
        return points
    step = len(points) / limit
    return sorted({points[int(i * step)] for i in range(limit)})


def tools():
    checkout = (ROOT / ".verus-checkout").resolve()
    release = checkout / "source/target-verus/release"
    toolchain = re.search(r'channel = "(.*)"',
                          (checkout / "rust-toolchain.toml").read_text()).group(1)
    sysroot = subprocess.run(["rustup", "run", toolchain, "rustc", "--print", "sysroot"],
                             capture_output=True, text=True, check=True).stdout.strip()
    env = os.environ | {
        "VERUS_ROOT": str(release),
        "VERUS_Z3_PATH": str(checkout / "source/z3"),
        "LD_LIBRARY_PATH": f"{sysroot}/lib",
        "DYLD_LIBRARY_PATH": f"{sysroot}/lib",
    }
    return {
        "verus": release / "rust_verify",
        "direct": ROOT / "crates/vermilion_direct/target/release/vermilion_direct",
        "gen": ROOT / ".lake/build/bin/vrml_gen",
        "check": ROOT / "target/debug/vrml_check",
        "env": env,
    }


def run_mutant(tool, mutant: Path, line: int):
    rel = mutant.relative_to(ROOT)
    source = mutant.read_text()
    flags = [] if "use vstd::" in source else ["--no-vstd", "--cfg", "verus_no_vstd"]
    export = WORK / f"{mutant.stem}.bin"
    verus = subprocess.run([str(tool["verus"]), str(rel), "--crate-type=lib", *flags],
                           capture_output=True, text=True, cwd=ROOT,
                           env=tool["env"] | {"VERUS_VIR_EXPORT": str(export)})
    verus_outcome = classify_verus(verus.returncode, verus.stdout, verus.stderr)
    if verus_outcome.status == "infrastructure":
        return mutant.stem, line, "skipped", verus_outcome.reason
    ir = WORK / f"{mutant.stem}.sexp"
    emit = subprocess.run([str(tool["direct"]), str(export), "--out", str(ir)],
                          capture_output=True, text=True, cwd=ROOT)
    if emit.returncode == 0:
        emit = subprocess.run([str(tool["gen"]), str(ir)],
                              capture_output=True, text=True, cwd=ROOT)
    if emit.returncode != 0:
        return mutant.stem, line, "skipped", "translation failed"
    manifest = mutant.parent / "generated" / f"{mutant.stem}.json"
    # Sweep budgets: a mutant's goal is `False`, so the ladder has nothing
    # to find on live paths and an uncapped rung (e.g. e-matching broadcast
    # lemmas) can search for an hour. Capped rungs plus a wall-clock limit
    # keep the oracle bounded; a timeout is reported as skipped, never as
    # a verdict.
    budgets = {"VRML_RUNG_BUDGET": "200", "VRML_SATURATE_BUDGET": "800",
               "VRML_SMT_BUDGET": "200", "VRML_SMT_TIMEOUT": "5"}
    try:
        check = subprocess.run([str(tool["check"]), str(manifest)],
                               capture_output=True, text=True, cwd=ROOT,
                               env=os.environ | budgets, timeout=300)
    except subprocess.TimeoutExpired:
        return mutant.stem, line, "skipped", "Lean check timed out"
    lean_outcome = classify_lean(check.returncode, check.stdout, check.stderr)
    if lean_outcome.status == "infrastructure":
        return mutant.stem, line, "skipped", lean_outcome.reason
    if lean_outcome.passed and not verus_outcome.passed:
        return mutant.stem, line, "VACUOUS", "Lean proves assert(false); Verus rejects"
    if verus_outcome.passed:
        return mutant.stem, line, "dead", "both prove it (dead code)"
    return mutant.stem, line, "live", ""


def main():
    per_case, jobs, names = 6, 2, []
    arguments = iter(sys.argv[1:])
    for argument in arguments:
        if argument == "--per-case":
            per_case = int(next(arguments))
        elif argument == "--jobs":
            jobs = int(next(arguments))
        else:
            names.append(argument)
    cases = sorted(CORPUS.glob("*.rs"))
    if names:
        cases = [case for case in cases if case.stem in names]
    shutil.rmtree(WORK, ignore_errors=True)
    WORK.mkdir(parents=True)
    tool = tools()
    mutants = []
    for case in cases:
        lines = case.read_text().splitlines()
        if not re.match(r"// expect: (pass|lean-only pass)", lines[0]):
            continue
        for index in sample(insertion_points(lines), per_case):
            indent = re.match(r"\s*", lines[index + 1] if index + 1 < len(lines) else "").group(0)
            mutated = lines[:index + 1] + [f"{indent or '    '}assert(false);"] + lines[index + 1:]
            mutant = WORK / f"{case.stem}__m{index + 2}.rs"
            mutant.write_text("\n".join(mutated) + "\n")
            mutants.append((mutant, index + 2))
    print(f"{len(mutants)} mutants from {len(cases)} cases", flush=True)
    counts = {"VACUOUS": 0, "dead": 0, "live": 0, "skipped": 0}
    vacuous = []
    with concurrent.futures.ThreadPoolExecutor(max_workers=jobs) as pool:
        for stem, line, verdict, detail in pool.map(lambda m: run_mutant(tool, *m), mutants):
            counts[verdict] += 1
            if verdict in ("VACUOUS", "dead", "skipped"):
                print(f"{verdict:8} {stem} (assert(false) at line {line}) {detail}", flush=True)
            if verdict == "VACUOUS":
                vacuous.append(stem)
    print(json.dumps(counts))
    if vacuous:
        print(f"{len(vacuous)} vacuity bug(s): Lean proves assert(false) where Verus does not",
              file=sys.stderr)
        return 1
    print("no vacuity bugs: Lean proves assert(false) only where Verus does")
    return 0


if __name__ == "__main__":
    sys.exit(main())
