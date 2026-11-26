# The tools of a Vermilion home. Source with `home` naming its root:
#   home=...; source "$home/scripts/home_env.sh"
#
# The home holds the tools and the Lean library. The project root, which is
# the current directory of every tool, holds the sources with their
# generated/ and proofs/ trees and the .vermilion/ state. A development
# checkout is both at once.
#
# An installed home carries its tools, built, in bin/, together with the
# programs they start in turn (lean, lake, python3). A checkout builds the
# tools where cargo and Lake put them and takes the rest from PATH: sourcing
# this makes sure the pinned Verus is there, and the two functions rebuild
# the Rust and Lean tools when their sources changed.
#
# Sets: verus, vermilion_direct, vrml_gen, vrml_check, vrml_sync, vrml_watch;
# defines vrml_build_rust_tools and vrml_build_lean_tools. A caller with a
# live status line defines `status` first; its captions are used here.

declare -F status >/dev/null || status() { :; }

if [[ -d "$home/bin" ]]; then
  export PATH="$home/bin:$PATH"
  verus="$home/bin/rust_verify"
  vermilion_direct="$home/bin/vermilion_direct"
  vrml_gen="$home/bin/vrml_gen"
  vrml_check="$home/bin/vrml_check"
  vrml_sync="$home/bin/vrml_sync"
  vrml_watch="$home/bin/vrml_watch"
  vrml_build_rust_tools() { :; }
  vrml_build_lean_tools() { :; }
else
  # Inline fast path: call setup_verus.sh only when its stamp is missing or
  # stale (the subprocess alone costs ~0.8s).
  if [[ ! -f "$home/.vermilion/setup-verus-ok" \
    || ! -x "$home/.verus-checkout/source/target-verus/release/rust_verify" \
    || "$home/scripts/setup_verus.sh" -nt "$home/.vermilion/setup-verus-ok" ]]; then
    status "checking the pinned Verus toolchain"
    "$home/scripts/setup_verus.sh" >/dev/null
  fi
  repository="$home"
  source "$home/scripts/verus_env.sh"
  vermilion_direct="$home/crates/vermilion_direct/target/release/vermilion_direct"
  vrml_gen="$home/.lake/build/bin/vrml_gen"
  vrml_check="$home/target/debug/vrml_check"
  vrml_sync="$home/target/debug/vrml_sync"
  vrml_watch="$home/target/debug/vrml_watch"

  # Even no-op cargo builds cost ~a second each; skip them when the binaries
  # are newer than every Rust source.
  vrml_rust_stale() {
    [[ ! -e "$1" ]] && return 0
    [[ -n "$(find "$2" -name '*.rs' -newer "$1" 2>/dev/null | head -1)" ]]
  }
  vrml_build_rust_tools() {
    if vrml_rust_stale "$vermilion_direct" "$home/crates/vermilion_direct/src"; then
      status "building the direct SST adapter"
      (cd "$home/crates/vermilion_direct" \
        && rustup run "$verus_toolchain" cargo build --release --quiet)
    fi
    if vrml_rust_stale "$vrml_check" "$home/crates/vermilion_backend/src"; then
      status "building the Vermilion tools"
      (cd "$home" && cargo build --quiet -p vermilion_backend --bins)
    fi
  }
  # Lake pays a ~30s workspace re-materialization per invocation; go through
  # it only when the Lean sources actually changed (scripts/lean_env.sh),
  # which also refreshes the search path the tools read.
  vrml_build_lean_tools() {
    status "preparing the Lean environment (cached unless the library changed)"
    # Separate statements, not an `&&` list: a failure inside the sourced
    # file must stop the run.
    (
      cd "$home"
      source scripts/lean_env.sh
      vrml_lake_build_if_stale vrml_gen vrml_worker Vermilion
    )
  }
fi

# The Rust tools take the library, its packages and the batch worker from
# the home, which by default is the directory they run in.
if [[ "$PWD" != "$home" ]]; then
  export VERMILION_HOME="$home"
fi
