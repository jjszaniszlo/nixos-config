{inputs, ...} : {
  imports = [
    ../common/global
    ../common/optional/services/delete_root.nix
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
