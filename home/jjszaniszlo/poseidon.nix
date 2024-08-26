{pkgs, outputs, ...} : {
  imports = [
    ./packages/dev
    ./global
    ./packages/programs/neovim.nix
    ./packages/programs/wezterm.nix
    ./packages/cli/zsh.nix
  ] ++ (builtins.attrValues outputs.homeManagerModules);

  home = {
    homeDirectory = "/Users/jjszaniszlo";
    sessionVariables.FLAKE = "$HOME/.nix-config";
    packages = with pkgs; [ 
      lazygit
    ];
  };
}
