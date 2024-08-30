{ pkgs ? import <nixpkgs> {}, ... }: {
  fetchWallhaven = pkgs.callPackage ./fetchWallhaven {};
  wallpapers = import ./wallpapers { inherit pkgs; };
}
