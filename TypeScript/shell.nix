let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-23.11";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in
pkgs.mkShell {
  packages = [ pkgs.typescript pkgs.nodejs_21 pkgs.corepack_21 ];
  shellHook = ''
    npm config set strict-ssl false
  '';
}