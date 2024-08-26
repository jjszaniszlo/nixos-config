{pkgs ? import <nixpkgs> {}, ...} : rec {
  wallpapers = import ./wallpapers { inherit pkgs; };
}
