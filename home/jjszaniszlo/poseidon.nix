{
  config,
  pkgs,
  lib,
  nix-colors,
  ...
}: {
  imports = [
    ./global
    ./features/cli
  ];

  wallpaper = pkgs.wallpapers.rx7-blue-dark;
  colorScheme = nix-colors.colorSchemes.kanagawa;

  home.homeDirectory = lib.mkForce "/Users/${config.home.username}";
}
