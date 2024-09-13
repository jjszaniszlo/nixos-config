{inputs, ...}: {
  imports =
    [
      ../common/global
      ../common/users/jjszaniszlo
      ../common/optional/services

      ./hardware-configuration.nix
    ]
    ++ [inputs.disko.nixosModules.default]
    ++ [(import ../common/disks/standard-disk-config.nix {device = "/dev/nvme0n1";})];

  users.users.jjszaniszlo.initialPassword = "1234";

  display-manager = "sddm";

  networking.hostName = "athena";
  system.stateVersion = "24.05";
}
