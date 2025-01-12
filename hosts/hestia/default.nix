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

  networking.hostName = "hestia";
  system.stateVersion = "24.05";
}
