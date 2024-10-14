{inputs, ...}: {
  imports =
    [
      ../common/global
      ../common/users/jjszaniszlo

      ../common/optional/features/desktop/desktop-environments/gnome.nix
      ../common/optional/features/development
      ../common/optional/features/gaming
      ../common/optional/services
      ../common/optional/utils

      ./hardware-configuration.nix
    ]
    ++ [inputs.disko.nixosModules.default]
    ++ [(import ../common/disks/standard-disk-config.nix {device = "/dev/nvme0n1";})];

  networking.hostName = "athena";
  system.stateVersion = "24.05";
}
