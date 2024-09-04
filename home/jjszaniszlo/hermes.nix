{pkgs, ...}: {
  imports = [
    ./global
    ./packages/cli
    ./packages/desktop/sway
    ./packages/fonts
    ./packages/programs/armcord.nix
    ./packages/programs/kitty.nix
    ./packages/programs/neovim.nix
    ./packages/programs/vivaldi.nix
  ];

  wallpaper = pkgs.wallpapers.rx7-blue-dark;

  monitors = [];

  systemd.user.startServices = "sd-switch";
}
