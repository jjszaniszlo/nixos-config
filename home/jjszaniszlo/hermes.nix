{pkgs, ...}: {
  imports = [
    ./global
    ./packages/cli
    ./packages/desktop/sway
    ./packages/fonts
    ./packages/programs/vivaldi.nix
    ./packages/programs/kitty.nix
    ./packages/programs/neovim.nix
    ./packages/programs/obsidian.nix
  ];

  wallpaper = pkgs.wallpapers.rx7-blue-dark;
  
  monitors = [];

  systemd.user.startServices = "sd-switch";
}
