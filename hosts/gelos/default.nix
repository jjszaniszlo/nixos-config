{ config, inputs, lib, pkgs, ... }:
{
  imports = [inputs.nixos-wsl.nixosModules.default];

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
  
  system.stateVersion = "24.05";
}
