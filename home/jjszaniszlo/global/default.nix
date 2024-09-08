{
  pkgs,
  lib,
  config,
  inputs,
  outputs,
  nix-colors,
  ...
}: {
  imports = 
    builtins.attrValues outputs.homeManagerModules
    ++ nix-colors.homeManagerModules.default
    ++ inputs.impermanence.nixosModules.home-manager.impermanence;

  nix = {
    package = lib.mkDefault pkgs.nix;
    settings = {
      experimental-features = [
        "nix-command"
        "flakes"
        "ca-derivations"
      ];
      warn-dirty = false;
    };
  };

  home = {
    username = lib.mkDefault "jjszaniszlo";
    homeDirectory = lib.mkDefault "/home/${config.home.username}";
    stateVersion = lib.mkDefault "24.05";
    sessionPath = lib.mkDefault ["$HOME/.local/bin"];
    sessionVariables = lib.mkDefault {
      FLAKE = lib.mkDefault "$HOME/.nixos-config";
    };

    persistence= {
      "/persist/${config.home.homeDirectory}"  = {
        defaultDirectoryMethod = "symlink";
        directories = [
          "Pictures"
          "Videos"
          "Documents"
          "Downloads"
          "Development"
          ".ssh"
          ".local/bin"
          ".local/share/Steam"
          ".local/share/nix"
        ];
        allowOther = true;
      };
    };
  };

  colorScheme.mode = lib.mkOverride 1499 "dark";
  home.file = {
    ".colorscheme.json".text = builtins.toJSON config.colorScheme;
  };

  programs = {
    home-manager.enable = true;
    git.enable = true;
  };

  systemd.user.startServices = "sd-switch";
}
