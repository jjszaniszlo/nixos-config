{inputs, ...}: {
  imports = [
    ../common/global
    ./hardware-configuration.nix

    ../common/global
    ../common/services/pipewire.nix
    ../common/services/printing.nix
    ../common/users/jjszaniszlo

    inputs.apple-silicon-support.nixosModules.default
  ];

  boot.extraModprobeConfig = ''
    options hid_apple iso_layout=0
  '';

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = false;

  hardware.asahi.peripheralFirmwareDirectory = ./firmware;

  nix.gc.dates = "weekly";

  networking = {
    hostName = "hermes"; # Define your hostname.
    wireless.iwd = {
      enable = true;
      settings.General.EnableNetworkConfiguration = true;
    };
  };

  services.libinput.enable = true;

  system.stateVersion = "24.11"; # Did you read the comment?
}
