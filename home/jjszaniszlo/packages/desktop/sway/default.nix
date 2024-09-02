{...}: {
  imports = [
    ../common/wayland
  ];

  wayland.windowManager.sway = {
    enable = true;
    xwayland = true;
    systemd.enable = true;
  };
}
