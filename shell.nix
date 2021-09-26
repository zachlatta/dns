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

    dhall-json
  ];
}
