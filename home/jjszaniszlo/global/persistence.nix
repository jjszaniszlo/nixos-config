{inputs, config, ...}: {
  imports = [inputs.impermanence.nixosModules.home-manager.impermanence];

  home.persistence = {
    "/persist/${config.home.homeDirectory}"  = {
      directories = [
        "Pictures"
        "Videos"
        "Documents"
        "Downloads"
        "Development"
        ".ssh"
        ".local/bin"
        ".nixos-config"
        { 
          directory = ".local/share/Steam";
          method = "symlink";
        }
        ".local/share/nix"
      ];
      allowOther = true;
    };
  };
}
