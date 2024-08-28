{ pkgs ? import <nixpkgs> {}, ... }: rec {
  fetchWallhaven = pkgs.callPackage ./fetchwallhaven {};
  wallpapers = import ./wallpapers { inherit pkgs fetchWallhaven; };
}
