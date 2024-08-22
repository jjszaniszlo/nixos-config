{pkgs, ...} : {
  imports = [
    ./global
    ./packages/programs/neovim.nix
    ./packages/programs/wezterm.nix
    ./packages/cli/zsh.nix
  ];

  home = {
    homeDirectory = "/Users/jjszaniszlo";
    sessionVariables.FLAKE = "$HOME/.nix-config";
    packages = with pkgs; [ 
      lazygit
    ];
  };
}
