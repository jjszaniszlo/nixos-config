{inputs, lib, config, ...} : {
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
      "/var/lib/nixos"
      "/var/lib/systemd"
    ];
  };

  system.activationScripts.persistent-dirs.text = let
    mkHomePersist = user:
      lib.optionalString user.createHome ''
        mkdir -p /persist/${user.home}
        chown ${user.name}:${user.group} /persist/${user.home}
        chmod ${user.homeMode} /persist/${user.home}
      '';
    users = lib.attrValues config.users.users;
  in
    lib.concatLines (map mkHomePersist users);

  networking.hostName = "athena";
  system.stateVersion = "24.05";
}
