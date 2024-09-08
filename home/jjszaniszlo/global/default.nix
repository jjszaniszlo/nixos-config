{
  lib,
  config,
  outputs,
  nix-colors,
  ...
}: {
  imports = [nix-colors.homeManagerModules.default]
    ++ builtins.attrValues outputs.homeManagerModules;

  home = {
    username = lib.mkDefault "jjszaniszlo";
    homeDirectory = lib.mkDefault "/home/${config.home.username}";
    stateVersion = lib.mkDefault "24.05";
    sessionPath = lib.mkDefault ["$HOME/.local/bin"];
    sessionVariables = lib.mkDefault {
      FLAKE = lib.mkDefault "$HOME/.nixos-config";
    };
  };

  home.file = {
    ".colorscheme.json".text = builtins.toJSON config.colorScheme;
  };

  programs.home-manager.enable = true;

  systemd.user.startServices = "sd-switch";
}
