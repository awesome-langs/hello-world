let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-23.11";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in
pkgs.mkShell {
  packages = [ pkgs.vala pkgs.gcc13 pkgs.pkg-config pkgs.gobject-introspection ];
}