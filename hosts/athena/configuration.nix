{inputs, ...} : {
  imports = [
    ../common/global
    ../common/optional/desktop/dm/sddm.nix
    ../common/optional/desktop/sway.nix
    ../common/optional/desktop/common/default.nix
    ../common/optional/services/coolercontrol.nix
    ../common/optional/services/delete_root.nix
    ../common/optional/services/persistence.nix
    ../common/services
    ../common/users/jjszaniszlo

    ./hardware-configuration.nix
  ]
  ++ [inputs.disko.nixosModules.default]
  ++ [(import ./disko.nix { device = "/dev/nvme0n1"; })];

  users.users.jjszaniszlo.initialPassword = "1234";

  networking.hostName = "athena";
  system.stateVersion = "24.05";
}
