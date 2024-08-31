{pkgs, ...}: {
  imports = [
    ./zsh.nix
    ./devenv.nix
    ./direnv.nix
  ];

  home.packages = with pkgs; [
    wget
    lazygit
  ];
}
