{pkgs, config, custom-lib, ...}: {
  users.users.jjszaniszlo = {
    isNormalUser = true;
    shell = pkgs.zsh;

    extraGroups = [ "wheel" ];

    packages = [ pkgs.home-manager ];
  };

  home-manager.users.jjszaniszlo = custom-lib.relativeToRoot "home/jjszaniszlo/${config.networking.hostName}.nix";
}
