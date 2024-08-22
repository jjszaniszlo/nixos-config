{inputs, pkgs, ...} : {
  imports = [
    ./global
  ];

  home.homeDirectory = "/Users/jjszaniszlo";

  home.packages = with pkgs; [ 
    inputs.nixvim.packages.aarch64-darwin.default
    lazygit
    ripgrep
  ];
}
