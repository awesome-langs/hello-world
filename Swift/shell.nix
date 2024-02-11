let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-23.05";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in

pkgs.mkShell.override { stdenv = pkgs.swift.stdenv; } {
  packages = with pkgs.swiftPackages;[
    swift
    swiftpm
    Foundation
  ];
}