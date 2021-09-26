let
  pkgs = import <nixpkgs> {};

  sources = import ./nix/sources.nix;

  mach-nix = import sources.mach-nix {};
in
with pkgs;
mach-nix.mkPythonShell {
  requirements = ''
    octodns
  '';
}
