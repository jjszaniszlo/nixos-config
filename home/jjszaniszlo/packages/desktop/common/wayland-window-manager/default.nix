{pkgs, ...}: {
  home.packages = with pkgs; [
    wl-clipboard
  ];

  xdg.portal.extraPortals = [pkgs.xdg-desktop-portal-wlr];
}
