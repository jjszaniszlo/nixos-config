{pkgs, custom-lib, config, ...}: {
  users.users.jjszaniszlo = { 
    description = "John Szaniszlo";
    shell = pkgs.zsh;
    packages = [ pkgs.home-manager ];
  };

  home-manager.users.jjszaniszlo = custom-lib.relativeToRoot "home/jjszaniszlo/${config.networking.hostName}.nix";
}
