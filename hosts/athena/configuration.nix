# This is your system's configuration file.
# Use this to configure your system environment (it replaces /etc/nixos/configuration.nix)
{pkgs, ...} : {
  imports = [
    ../common/desktop/common
    ../common/desktop/sddm.nix
    ../common/desktop/sway.nix
    ../common/global
    ../common/services/coolercontrol.nix
    ../common/services/lact.nix
    ../common/services/lanzaboote.nix
    ../common/services/pipewire.nix
    ../common/services/printing.nix
    ../common/services/steam-hardware.nix
    ../common/services/systemd-boot.nix
    ../common/users/jjszaniszlo
    ./hardware-configuration.nix
  ];

  nix.gc.dates = "weekly";

  boot.binfmt.emulatedSystems = [
    "aarch64-linux"
  ];

  hardware.graphics = {
    enable = true;
    enable32Bit = true;

    extraPackages = [ pkgs.amdvlk ];
    extraPackages32 = [ pkgs.driversi686Linux.amdvlk ];
  };

  networking = {
    hostName = "athena";
    networkmanager.enable = true;
  };

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  system.stateVersion = "24.05";
}
