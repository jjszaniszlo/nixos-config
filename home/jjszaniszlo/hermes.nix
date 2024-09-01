{pkgs, ...}: {
  imports = [
    ./global
    ./packages/cli
    ./packages/desktop/hyprland
    ./packages/fonts
    # ./packages/programs
  ];

  wallpaper = pkgs.wallpapers.rx7-blue-dark;

  systemd.user.startServices = "sd-switch";
}
