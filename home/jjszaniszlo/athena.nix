{pkgs, ...}: {
  imports = [
    ./global
    ./packages/cli
    ./packages/desktop/common/gtk.nix
    ./packages/desktop/hyprland
    ./packages/desktop/sway
    ./packages/fonts
    ./packages/gaming
    ./packages/programs
  ];

  wallpaper = pkgs.wallpapers.rx7-blue-dark;

  monitors = [
    {
      name = "DP-1";
      width = 3840;
      height = 2160;
      refresh-rate = 120;
      workspaces = [1 2 3 7 8 9 0];
      primary = true;
    }
    {
      name = "DP-3";
      width = 2560;
      height = 1440;
      refresh-rate = 165;
      position = "auto-right";
      transform = {
        enable = true;
        value = 3;
      };
      workspaces = [4 5 6];
    }
  ];

  systemd.user.startServices = "sd-switch";
}
