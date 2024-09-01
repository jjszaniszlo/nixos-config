{pkgs, ...}: {
  programs.kitty = {
    enable = true;
    shellIntegration.enableZshIntegration = true;
    font = pkgs.nerdfonts.override { fonts = [ "VictorMono" ]; };
    settings = {};
    theme = "kanagawa";
  };
}
