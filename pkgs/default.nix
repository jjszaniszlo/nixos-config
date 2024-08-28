{ pkgs ? import <nixpkgs> {}, ... }: rec {
  fetchWallhaven = pkgs.callPackage ./fetchWallhaven {};
  wallpapers = import ./wallpapers { inherit pkgs fetchWallhaven; };
}
