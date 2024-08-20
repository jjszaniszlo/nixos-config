{lib, config, ...} : {
  nixpkgs = {
    overlays = [];
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };

  home = {
    username = lib.mkDefault "jjszaniszlo";
    homeDirectory = lib.mkDefault "/home/${config.home.username}";
    stateVersion = lib.mkDefault "24.05";
    sessionPath = ["$HOME/.local/bin"];
    sessionVariables = {
      FLAKE = "$HOME/.nixos-config";
    };
  };

  programs = {
    home-manager.enable = true;
    git.enable = true;
  };
}
