#!/usr/bin/env python3
"""Make a directory a Vermilion project: `vrml init [DIR]`.

A project is a directory outside the Vermilion home that holds Rust sources
to verify. The home supplies the tools and the Lean library. The project
holds what this script lays out, and what later runs add: generated/ modules
and proofs/ twins beside the sources, and state under .vermilion/.

  .vermilion/home     link to the home. Everything below reaches the home
                      through it, so these files are the same on every
                      machine and can be kept under version control.
  lean-toolchain      the home's Lean release
  lake-manifest.json  the home's library and its packages, each named by
                      its path under the link: Lake uses them as built
  lakefile.lean       the project's Lake workspace
  scripts/            run_example.sh and vrml_watch.sh, where a runner
                      written for the repository layout
                      (examples/<name>/run.sh) looks for them

Running it again refreshes the link and the two files derived from the home,
which is how a project moves to another Vermilion. lakefile.lean and the
scripts are written only when missing.
"""

import json
import pathlib
import shutil
import sys

# (file in the project, template under scripts/project/ of the home)
WRITTEN_ONCE = [
    ("lakefile.lean", "lakefile.lean"),
    ("scripts/run_example.sh", "run_example.sh"),
    ("scripts/vrml_watch.sh", "vrml_watch.sh"),
]


def project_manifest(home_manifest: dict) -> dict:
    """The project's lake-manifest.json: the home as a path dependency, then
    every package of the home's own manifest as an inherited one, by the
    directory the home keeps it in. Lake takes a path entry as it finds it,
    where the home's git entries would make it look for a checkout to
    fetch."""
    packages_dir = home_manifest.get("packagesDir", ".lake/packages")
    packages = [
        {
            "type": "path",
            "scope": "",
            "name": "vermilion",
            "manifestFile": "lake-manifest.json",
            "inherited": False,
            "dir": ".vermilion/home",
            "configFile": "lakefile.lean",
        }
    ]
    for entry in home_manifest["packages"]:
        packages.append(
            {
                "type": "path",
                "scope": entry.get("scope", ""),
                "name": entry["name"],
                "manifestFile": entry["manifestFile"],
                "inherited": True,
                "dir": f".vermilion/home/{packages_dir}/{entry['name']}",
                "configFile": entry["configFile"],
            }
        )
    return {
        "version": home_manifest["version"],
        "packagesDir": ".lake/packages",
        "packages": packages,
        "name": "project",
        "lakeDir": ".lake",
    }


def init(home: pathlib.Path, project: pathlib.Path) -> int:
    home = home.resolve()
    project.mkdir(parents=True, exist_ok=True)
    project = project.resolve()
    if project == home:
        print(
            f"vrml init: {project} is the Vermilion home; a project is a directory elsewhere",
            file=sys.stderr,
        )
        return 2
    home_manifest = json.loads((home / "lake-manifest.json").read_text())

    state = project / ".vermilion"
    state.mkdir(exist_ok=True)
    link = state / "home"
    if link.is_symlink() or link.exists():
        link.unlink()
    link.symlink_to(home)
    print(f"Vermilion project at {project}")
    print(f"  .vermilion/home -> {home}")

    shutil.copyfile(home / "lean-toolchain", project / "lean-toolchain")
    (project / "lake-manifest.json").write_text(
        json.dumps(project_manifest(home_manifest), indent=1) + "\n"
    )
    print("  wrote lean-toolchain, lake-manifest.json")

    for name, template in WRITTEN_ONCE:
        target = project / name
        if target.exists():
            print(f"  kept {name}")
            continue
        target.parent.mkdir(parents=True, exist_ok=True)
        # copy(), not copy2(): an installed home is read-only, and the
        # project's copies must stay writable.
        shutil.copy(home / "scripts" / "project" / template, target)
        target.chmod(target.stat().st_mode | 0o200)
        print(f"  wrote {name}")

    print(
        "Verify a file with: scripts/run_example.sh <dir> <source.rs>"
        " [--lib <Name>] (`vrml run`)\n"
        "Build and edit its proofs twins with Lake after:"
        " vrml register <Name> <dir>/proofs\n"
        "Keep .vermilion/, .lake/ and generated/ out of version control."
    )
    return 0


def main() -> int:
    if len(sys.argv) != 3:
        print("usage: vrml_init.py <home> <project-dir>", file=sys.stderr)
        return 2
    return init(pathlib.Path(sys.argv[1]), pathlib.Path(sys.argv[2]))


if __name__ == "__main__":
    sys.exit(main())
