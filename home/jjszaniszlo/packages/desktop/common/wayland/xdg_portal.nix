{pkgs, ...}: {
  xdg.portal = {
    enable = true;
    xdgopenuseportal = true;

    config.common.default = [ "gtk" "wlr" ];

    extraportals = [
      pkgs.xdg-desktop-portal-wlr
      pkgs.xdg-desktop-portal-gtk
    ];
  };
}
