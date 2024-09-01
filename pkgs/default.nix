{pkgs ? import <nixpkgs> {}, ...}: {
  wallpapers = import ./wallpapers {inherit pkgs;};
  icloud-for-linux = pkgs.callPackage ./icloud-for-linux {};
}
