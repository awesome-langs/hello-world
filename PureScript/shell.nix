let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-23.11";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in
pkgs.mkShell {
  packages = [ pkgs.git pkgs.purescript pkgs.python3 pkgs.nodejs_21 pkgs.corepack_21 pkgs.cacert ];
}