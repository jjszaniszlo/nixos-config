# This is your system's configuration file.
# Use this to configure your system environment (it replaces /etc/nixos/configuration.nix)
{
  lib,
  pkgs,
  ...
}: {
  imports = [
    ../common/global/nix.nix
    ../common/services/coolercontrol.nix
    ../common/services/lact.nix
    ../common/services/lanzaboote.nix
    ../common/services/pipewire.nix
    ../common/programs/steam.nix
    ../common/users/jjszaniszlo
    ./hardware-configuration.nix
  ];

  nixpkgs = {
    overlays = [];
    config = {
      allowUnfree = true;
    };
  };

  # bootloader
  boot.loader.systemd-boot.enable = lib.mkForce false;
  boot.loader.efi.canTouchEfiVariables = true;

  # networking
  networking.networkmanager.enable = true;

  # timezone
  time.timeZone = "America/Los_Angeles";

  # locale
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  # printing
  services.printing.enable = true;
  
  # xdg portal
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];

  # enable polkit
  security.polkit.enable = true;

  # install programs
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  networking.hostName = "athena";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  system.stateVersion = "24.05";
}
