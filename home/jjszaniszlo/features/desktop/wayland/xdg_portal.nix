{pkgs, ...}: {
  xdg.enable = true;
  xdg.mimeApps.enable = true;
  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;

    config.common.default = [ "*" ];

    extraPortals = [
      pkgs.xdg-desktop-portal-wlr
      pkgs.xdg-desktop-portal-gtk
    ];
  };

  home.packages = with pkgs; [
    xdg-utils
    xdg-desktop-portal-wlr
    xdg-desktop-portal-gtk
  ];
}
