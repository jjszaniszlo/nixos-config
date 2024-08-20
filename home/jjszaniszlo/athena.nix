# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    ./hyprland.nix
  ];

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

    # hyprland companion packages
    eww
    dunst
    swww
    rofi-wayland    
  ];

  systemd.user.startServices = "sd-switch";

  home.stateVersion = "24.05";
}
