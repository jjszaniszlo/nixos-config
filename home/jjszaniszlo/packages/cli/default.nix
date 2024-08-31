{pkgs, ...}: {
  imports = [
    ./zsh.nix
    ./devenv.nix
  ];

  home.packages = with pkgs; [
    wget
    lazygit
  ];
}
