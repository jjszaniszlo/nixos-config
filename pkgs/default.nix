{pkgs ? import <nixpkgs> {}, ...}: {
  wallpapers = import ./wallpapers {inherit pkgs;};
}
