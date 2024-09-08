{pkgs, ...}: {
  imports = [
    ./common
    ./common/xserver.nix
  ];

  programs.hyprland = {
    enable = true;
    package = pkgs.hyprland;
  };
}
