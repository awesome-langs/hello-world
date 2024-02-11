let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-23.11";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in
pkgs.mkShell.override { stdenv = pkgs.gnustep.stdenv; } {
  packages = [ pkgs.gnustep.base pkgs.gnustep.libobjc ];
}