{pkgs, ...}: {
  fonts = {
    fontconfig = {
      enable = true;
      defaultFonts = {
        serif = ["Lato"];
        sansSerif = ["Lato"];
        monospace = ["Victor Mono Nerd Font"];
      };
    };
  };
  home.packages = with pkgs; [
    lato
    (nerdfonts.override {fonts = ["VictorMono" "FiraCode"];})
  ];
}
