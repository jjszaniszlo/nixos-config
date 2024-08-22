{inputs, pkgs, ...} : {
  imports = [
    ./global
    ./packages/programs/wezterm.nix
    ./packages/cli/zsh.nix
  ];

  home.homeDirectory = "/Users/jjszaniszlo";

  home.packages = with pkgs; [ 
    inputs.nixvim.packages.aarch64-darwin.default
    lazygit
    ripgrep
  ];
}
