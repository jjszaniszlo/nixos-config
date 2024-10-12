_: {
  imports = [
    ../common
    ../common/xserver.nix
    ../display-managers/sddm.nix
  ];
  services.xserver.desktopManager.gnome.enable = true;
}
