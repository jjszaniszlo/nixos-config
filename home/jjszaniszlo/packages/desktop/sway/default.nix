{...}: {
  imports = [
    ../common/wayland
  ];

  programs.sway = {
    enable = true;
  };
}
