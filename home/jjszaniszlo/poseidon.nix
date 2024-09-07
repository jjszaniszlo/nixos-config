{pkgs, ...}: {
  imports = [
    ./packages/cli
    ./global
    ./packages/fonts
    ./packages/programs/neovim.nix
    ./packages/programs/kitty.nix
  ];

  home = {
    homeDirectory = "/Users/jjszaniszlo";
    sessionVariables.FLAKE = "$HOME/.nix-config";
    packages = with pkgs; [
      lazygit
    ];
  };
}
