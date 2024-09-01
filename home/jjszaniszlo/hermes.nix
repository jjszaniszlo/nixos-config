{pkgs, ...}: {
  imports = [
    ./global
    ./packages/cli
    ./packages/desktop/hyprland
    ./packages/fonts
    ./packages/programs/vivaldi.nix
    ./packages/programs/kitty.nix
    ./packages/programs/neovim.nix
    # ./packages/programs
  ];

  wallpaper = pkgs.wallpapers.rx7-blue-dark;

  
  monitors = [
    {
      name = "eDP-1";
      width = 3456;
      height = 2234;
      refresh-rate = 120;
      workspace = "1";
      primary = true;
    }
  ];
  systemd.user.startServices = "sd-switch";
}
