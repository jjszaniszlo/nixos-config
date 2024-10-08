{pkgs, ...}: {
  programs.kitty = {
    enable = true;
    shellIntegration.enableZshIntegration = true;
    package = pkgs.master.kitty;
    font = {
      name = "VictorMono Nerd Font";
      package = pkgs.nerdfonts.override {fonts = ["VictorMono"];};
    };
    settings = {
      # font_family = "VictorMono Nerd Font";
      font_size = "20";

      background_image = "${pkgs.wallpapers.sci-fi-city}";
      background_image_layout = "scaled";

      window_margin_width = "10";
      single_window_margin_width = "0";

      background_tint = "0.95";
      background_tint_gaps = "-10";

      active_border_color = "#00ffff";
      window_border_width = "1pt";

      enabled_layouts = "Tall, *";

      tab_bar_style = "powerline";
      tab_powerline_style = "slanted";
    };
    theme = "Kanagawa";
  };

  xdg.mimeApps = {
    associations.added = {
      "x-scheme-handler/terminal" = "kitty.desktop";
    };
    defaultApplications = {
      "x-scheme-handler/terminal" = "kitty.desktop";
    };
  };
}
