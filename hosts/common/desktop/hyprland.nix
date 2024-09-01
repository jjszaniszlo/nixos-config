_: {
  imports = [ ../services/xserver.nix ];
  security.polkit.enable = true;

  # install programs
  programs.hyprland.enable = true;
}
