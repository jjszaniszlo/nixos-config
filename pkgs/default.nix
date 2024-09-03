{pkgs ? import <nixpkgs> {}, ...}: {
  wallpapers = import ./wallpapers {inherit pkgs;};
  sonoma-sddm-theme = import ./sonoma-sddm-theme {inherit pkgs;};
}
