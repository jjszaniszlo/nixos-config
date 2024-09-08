{inputs, ...} : {
  imports = [
    ../common/global
    ../common/optional/services/delete_root.nix
    ../common/services
    ../common/users/jjszaniszlo

    ./hardware-configuration.nix
  ]
  ++ inputs.impermanence.nixosModules.impermanence
  ++ inputs.disko.nixosModules.default
  ++ (import ./disko.nix { device = "/dev/nvme0n1"; });

  programs.fuse.userAllowOther = true;
  users.users.jjszaniszlo.initialPassword = "1234";

  fileSystems."/persist".neededForBoot = true;
  environment.persistence."/persist/system" = {
    hideMounts = true;
    directories = [
      "/etc/nixos"
    ];
  };

  networking.hostName = "athena";
  system.stateVersion = "24.05";
}
