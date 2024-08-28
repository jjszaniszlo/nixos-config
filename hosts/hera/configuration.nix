{ config, lib, pkgs, ... }: {
  imports =
    [
      ../common/global
      ../common/users/jjszaniszlo
      ./hardware-configuration.nix
    ];

  boot.loader.grub.enable = false;
  boot.loader.generic-extlinux-compatible.enable = true;

  system.stateVersion = "24.05"; # Did you read the comment?
}
