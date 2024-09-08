{pkgs, ...}: {
  imports = [
    ./zsh.nix
    ./devenv.nix
    ./direnv.nix
    ./neovim.nix
  ];

  home.packages = with pkgs; [
    wget
    lazygit
  ];
}
