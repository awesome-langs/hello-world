let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-23.11";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in
pkgs.mkShell {
  packages = [ (builtins.getFlake "git+https://github.com/facebook/hhvm.git?submodules=1&shallow=1&ref=refs/tags/HHVM-4.164.0").packages.x86_64-linux.default ];
}