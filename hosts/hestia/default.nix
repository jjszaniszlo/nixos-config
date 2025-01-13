{inputs, ...}: {
  imports =
    [
      ../common/global
      ../common/users/jjszaniszlo
      ./users/alohamcserver.nix
      ./disko.nix

      ./hardware-configuration.nix
    ]
    ++ [inputs.disko.nixosModules.default];

  services.openssh = {
    enable = true;
    settings = {
      PasswordAuthentication = false;
      KbdInteractiveAuthentication = false;
    };
  };

  networking.hostName = "hestia";
  system.stateVersion = "24.05";
}
