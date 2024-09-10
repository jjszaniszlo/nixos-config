{ config, inputs, lib, pkgs, ... }:
{
  imports = [
    ../common/global
    ../common/users/jjszaniszlo
    inputs.nixos-wsl.nixosModules.default
  ];

  wsl = {
    enable = true;
    defaultUser = "jjszaniszlo";
    interop = {
       includePath = false;
       register = true;
    };
  };

  environment.systemPackages = with pkgs; [
    wget
  ];
  
  programs.nix-ld = {
    enable = true;
    package = pkgs.nix-ld-rs;
  };

  environment.etc.hosts.enable = false;
  environment.etc."resolv.conf".enable = false;

  networking.dhcpcd.enable = false;

  users.users.root = {
    extraGroups = [ "root" ];
  };

  security.sudo.wheelNeedsPassword = false;

  systemd.services."serial-getty@ttyS0".enable = false;
  systemd.services."serial-getty@hvc0".enable = false;
  systemd.services."getty@tty1".enable = false;
  systemd.services."autovt@".enable = false;

  systemd.services.firewall.enable = false;
  systemd.services.systemd-resolved.enable = false;
  systemd.services.systemd-udevd.enable = false;

  systemd.enableEmergencyMode = false;
 
  nixpkgs.hostPlatform = "x86_64-linux";
  system.stateVersion = "24.05";
}
