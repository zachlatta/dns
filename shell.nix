let
  pkgs = import <nixpkgs> {};

  sources = import ./nix/sources.nix;

  mach-nix = import sources.mach-nix {};

  customPython = mach-nix.mkPython {
    requirements = ''
      octodns
    '';
  };
in
with pkgs;
mkShell {
  buildInputs = [
    customPython

    dhall
    dhall-json # this has the YAML package in it
  ];
}
