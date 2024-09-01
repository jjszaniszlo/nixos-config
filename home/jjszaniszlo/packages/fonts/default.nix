{pkgs, ...}: {
  fonts = {
    fontconfig = {
      enable = true;
      defaultFonts = {
        serif = ["Liberation Serif"];
        sansSerif = ["Ubuntu"];
        monospace = ["Victor Mono Nerd Font"];
      };
    };
  };
  home.packages = with pkgs; [
    ubuntu_font_family
    liberation_ttf
    (nerdfonts.override {fonts = ["VictorMono"];})
  ];
}
