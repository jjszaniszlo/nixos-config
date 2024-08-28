{
  # enable polkit
  security.polkit.enable = true;

  # install programs
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
}
