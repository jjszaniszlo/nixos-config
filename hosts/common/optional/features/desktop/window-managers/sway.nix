{
  imports = [
    ../common
    ../common/wayland.nix
    ../common/xserver.nix
    ../display-managers/sddm.nix
  ];

  systemd.user.extraConfig = ''
    DefaultEnvironment="PATH=/run/current-system/sw/bin"
  '';

  programs.sway.enable = true;
}
