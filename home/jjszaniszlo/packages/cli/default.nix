{pkgs, ...}: {
  imports = [
    ./zsh.nix
    ./devenv.nix
    ./direnv.nix
    ./neovim.nix
    ./git.nix
  ];

  home.packages = with pkgs; [
    wget
    lazygit
  ];
}
