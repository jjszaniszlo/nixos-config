_: {
  imports = [
    ../common/global/locale.nix
    ../common/global/nix.nix
    ../common/global/openssh.nix
    ../common/global/zsh.nix
    ../common/users/jjszaniszlo
    ./hardware-configuration.nix
  ];

  nixpkgs = {
    overlays = [];
    config = {
      allowUnfree = true;
    };
  };

  users.users.admin = {
    isNormalUser = true;
    extraGroups = ["wheel"];
  };

  boot.loader.grub.enable = false;
  boot.loader.generic-extlinux-compatible.enable = true;

  system.stateVersion = "24.05"; # Did you read the comment?
}
