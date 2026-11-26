# Vermilion as a tool: a home that holds every part of the pipeline, built,
# and the `vrml` command that runs it on a project elsewhere.
{
  lib,
  pkgs,
  verusFork,
  vermilionDirect,
  vrmlTools,
  leanToolchain,
  vermilionLean,
}:
pkgs.stdenvNoCC.mkDerivation {
  pname = "vermilion";
  inherit (vermilionLean) version;
  src = lib.fileset.toSource {
    root = ../scripts;
    fileset = lib.fileset.unions [
      ../scripts/vrml
      ../scripts/vrml_init.py
      ../scripts/run_example.sh
      ../scripts/vrml_watch.sh
      ../scripts/home_env.sh
      ../scripts/register_proof_lib.py
      ../scripts/project
    ];
  };
  nativeBuildInputs = [ pkgs.makeBinaryWrapper ];
  # The interpreters of the installed scripts.
  buildInputs = [
    pkgs.bash
    pkgs.python3
  ];
  dontConfigure = true;
  dontBuild = true;
  # The Lean half is the home vermilion-lean laid out; the scripts and bin/
  # go beside it. scripts/home_env.sh takes a home with a bin/ as installed
  # and puts that directory first on PATH, so it holds every program the
  # pipeline starts beyond the standard utilities.
  installPhase = ''
    runHook preInstall
    home=$out/share/vermilion
    mkdir -p $home/bin $home/scripts $out/bin
    ln -s ${vermilionLean}/share/vermilion/{lakefile.lean,lake-manifest.json,lean-toolchain,lean-path,lean,.lake} $home/
    cp -r . $home/scripts
    ln -s \
      ${verusFork}/bin/rust_verify \
      ${vermilionDirect}/bin/vermilion_direct \
      ${vrmlTools}/bin/* \
      ${vermilionLean}/bin/* \
      ${leanToolchain}/bin/lean \
      ${leanToolchain}/bin/lake \
      ${pkgs.python3}/bin/python3 \
      $home/bin/
    makeBinaryWrapper $home/scripts/vrml $out/bin/vrml
    runHook postInstall
  '';
  # scripts/project/ holds what `vrml init` copies into a project. Those
  # files keep their portable interpreter lines; the home's own scripts run
  # with the interpreters above.
  dontPatchShebangs = true;
  postFixup = ''
    patchShebangs --host $out/share/vermilion/scripts/{vrml,vrml_init.py,run_example.sh,vrml_watch.sh,register_proof_lib.py}
  '';
  doInstallCheck = true;
  installCheckPhase = ''
    runHook preInstallCheck
    $out/bin/vrml --help | grep -q '^  vrml init'
    $out/bin/vrml init $TMPDIR/project
    cd $TMPDIR/project
    test "$(readlink .vermilion/home)" = $out/share/vermilion
    grep -q '^#!/usr/bin/env bash$' scripts/run_example.sh
    test -w lakefile.lean
    cmp lean-toolchain ${vermilionLean}/share/vermilion/lean-toolchain
    runHook postInstallCheck
  '';
  passthru = {
    inherit
      verusFork
      vermilionDirect
      vrmlTools
      leanToolchain
      vermilionLean
      ;
  };
  meta = {
    description = "Vermilion: verify Verus programs with Lean, as a tool for projects outside its repository";
    license = lib.licenses.asl20;
    mainProgram = "vrml";
    platforms = [ "x86_64-linux" ];
  };
}
