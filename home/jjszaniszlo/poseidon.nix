{
  pkgs,
  ...
}: {
  imports =
    [
      ./packages/cli
      ./global
      ./packages/programs/neovim.nix
      ./packages/programs/wezterm.nix
    ];

  home = {
    homeDirectory = "/Users/jjszaniszlo";
    sessionVariables.FLAKE = "$HOME/.nix-config";
    packages = with pkgs; [
      lazygit
    ];
  };
}
