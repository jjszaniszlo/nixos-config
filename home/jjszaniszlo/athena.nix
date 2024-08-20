{
  inputs,
  outputs,
  pkgs,
  ...
}: {
  imports = [
    ./global
    ./packages/desktop/hyprland.nix
    ./packages/gaming
  ] ++ (builtins.attrValues outputs.homeManagerModules);

  # Install programs
  programs.firefox.enable = true;

  home.packages = with pkgs; [
    wget
    lutris
    discord
    xivlauncher
    wezterm
    wl-clipboard
    lazygit
    vivaldi
    bitwarden-desktop
    git
    inputs.nixvim.packages.x86_64-linux.default
    ripgrep

    # hyprland companion packages
    eww
    dunst
    swww
    rofi-wayland    
  ];

  monitors = [
    {
      name = "DP-1";
      width = 3840;
      height = 2160;
      refresh-rate = 120;
      workspace = "1";
      primary = true;
    }
    {
      name = "DP-2";
      width = 2560;
      height = 1440;
      refresh-rate = 165;
      position = "auto-right";
      transform = {
        enable = true;
        value = "3";
      };
      workspace = "2";
    }
  ];

  systemd.user.startServices = "sd-switch";
}
