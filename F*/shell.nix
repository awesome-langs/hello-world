let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-23.05";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in
pkgs.mkShell {
  packages = [ pkgs.fstar pkgs.ocaml pkgs.ocamlPackages.findlib pkgs.ocamlPackages.batteries pkgs.ocamlPackages.stdint pkgs.ocamlPackages.zarith pkgs.ocamlPackages.ppx_deriving pkgs.ocamlPackages.ppx_deriving_yojson ];
}