{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    ./global
    ./features/cli
  ];

  wallpaper = pkgs.wallpapers.rx7-blue-dark;
  colorScheme = inputs.nix-colors.colorSchemes.kanagawa;

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
      position = "3840x0";
      transform = {
        enable = true;
        value = 3;
      };
      workspaces = [4 5 6];
    }
  ];
}
