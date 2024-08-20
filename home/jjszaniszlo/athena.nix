# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  outputs,
  pkgs,
  ...
}: {
  imports = [
    ./hyprland.nix
    ./packages/gaming
  ] ++ (builtins.attrValues outputs.homeManagerModules);

  nixpkgs = {
    overlays = [];
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };

  home = {
    username = "jjszaniszlo";
    homeDirectory = "/home/jjszaniszlo";
  };

  programs.home-manager.enable = true;
  programs.git.enable = true;

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

  home.stateVersion = "24.05";
}
