{inputs, ...} : {
  imports = [
    ../common/global
    ../common/optional/services/delete_root.nix
    ../common/services
    ../common/users/jjszaniszlo

    ./hardware-configuration.nix
  ]
  ++ [inputs.disko.nixosModules.default]
  ++ [(import ./disko.nix { device = "/dev/nvme0n1"; })]
  ++ [inputs.impermanence.nixosModules.impermanence];

  programs.fuse.userAllowOther = true;
  users.users.jjszaniszlo.initialPassword = "1234";

  fileSystems."/persist".neededForBoot = true;
  environment.persistence."/persist/system" = {
    hideMounts = true;
    directories = [
      "/etc/nixos"
      "/var/log"
      "/var/lib/bluetooth"
      "/var/lib/nixos"
      "/var/lib/systemd/coredump"
      "/etc/NetworkManager/system-connections"
    ];
  };

  networking.hostName = "athena";
  system.stateVersion = "24.05";
}
