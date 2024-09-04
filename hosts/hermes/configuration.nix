{inputs, ...}: {
  imports = [
    ../common/desktop/common
    ../common/desktop/sddm.nix
    ../common/desktop/sway.nix
    ../common/users/jjszaniszlo
    ../common/global
    ./hardware-configuration.nix
    inputs.apple-silicon-support.nixosModules.default
  ];

  nix.gc.dates = "weekly";

  nixpkgs.overlays = [inputs.apple-silicon-support.overlays.default];
  
  hardware.asahi.peripheralFirmwareDirectory = ./firmware;

  programs.light.enable = true;
  services.actkbd = {
    enable = true;
    bindings = [
      { keys = [ 225 ]; events = [ "key" ]; command = "/run/current-system/sw/bin/light -A 10"; }
      { keys = [ 224 ]; events = [ "key" ]; command = "/run/current-system/sw/bin/light -U 10"; }
    ];
  };

  hardware.asahi = {
    withRust = true;
    useExperimentalGPUDriver = true;
    experimentalGPUInstallMode = "replace";
    setupAsahiSound = true;
  };

  networking = {
    hostName = "hermes";

    wireless.iwd = {
      enable = true;
      settings.General.EnableNetworkConfiguration = true;
    };

    networkmanager = {
      enable = true;
      wifi.backend = "iwd";
    };
  };

  services.libinput.enable = true;

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = false;

  system.stateVersion = "24.11"; # Did you read the comment?
}
