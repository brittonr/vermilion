---
title: The editor integration has not been run in a project outside the repository
labels: [enhancement, vscode-extension]
state: open
github: null
---

*Evidence level: read from the code; not executed.*

`vrml init` sets up a project outside the repository for the pipeline and
for Lake (`docs/development.md`, "Home and project"). The VS Code
extension and the Lake shim were written for the repository and have not
been run there.

What the code says:

- The extension verifies a file through `scripts/run_example.sh` under the
  workspace folder, or through a `run.sh` beside the file
  (`editor/vscode-vermilion/extension.js`, `sharedRunner`). `vrml init`
  puts a script of that name in the project, which runs the home's driver
  with `--project-root`. It reads verdicts from `.vermilion/*-check.json`
  and `.vermilion/*-run.json` under the workspace folder, where a project
  run writes them.
- The Lean language server is started through `editor/bin/lake`, which the
  repository's `.vscode/settings.json` puts on the Lean extension's path.
  Neither file is part of the scaffold. Without them the server goes
  through Lake itself: correct, and slower where process spawns are
  taxed. The shim also builds the overlay that makes
  `generated.<stem>.Specs` resolvable for a generated module opened in the
  editor; a project has no such overlay.

To do: run the extension in a project set up by `vrml init`, with a file
that verifies and one that fails; decide whether the scaffold should carry
the shim and the settings; add what is missing.
