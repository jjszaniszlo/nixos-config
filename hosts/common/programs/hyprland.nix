{pkgs, ... } :
{
  # xdg portal
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];

  # enable polkit
  security.polkit.enable = true;

  # install programs
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
}
