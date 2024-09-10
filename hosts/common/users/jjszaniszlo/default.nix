{pkgs, config, ...}: {
  users.users.jjszaniszlo = {
    isNormalUser = true;
    shell = pkgs.zsh;

    extraGroups = [ "wheel" ];

    packages = [ pkgs.home-manager ];
  };

  home-manager.users.jjszaniszlo = import ../../../../home/jjszaniszlo/${config.networking.hostName}.nix;
}
