{
  lib,
  config,
  nix-colors,
  outputs,
  ...
}: {
  imports = (builtins.attrValues outputs.homeManagerModules)
    ++ [nix-colors.homeManagerModules.default];

  systemd.user.startServices = "sd-switch";

  home = {
    username = lib.mkDefault "jjszaniszlo";
    homeDirectory = lib.mkDefault "/home/${config.home.username}";
    stateVersion = lib.mkDefault "24.05";
    sessionPath = lib.mkDefault ["$HOME/.local/bin"];
    sessionVariables = lib.mkDefault {
      FLAKE = lib.mkDefault "$HOME/.nixos-config";
    };
  };

  programs = {
    home-manager.enable = true;
    git.enable = true;
  };
}
