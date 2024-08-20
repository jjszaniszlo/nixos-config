# This is your system's configuration file.
# Use this to configure your system environment (it replaces /etc/nixos/configuration.nix)
_: {
  imports = [
    ../common/global
    ../common/programs/hyprland.nix
    ../common/programs/steam.nix
    ../common/services/coolercontrol.nix
    ../common/services/lact.nix
    ../common/services/lanzaboote.nix
    ../common/services/pipewire.nix
    ../common/services/printing.nix
    ../common/services/systemd-boot.nix
    ../common/users/jjszaniszlo
    ./hardware-configuration.nix
  ];
 
  networking = {
    hostName = "athena";
    networkmanager.enable = true;
  };

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  system.stateVersion = "24.05";
}
