{
  programs.kitty = {
    enable = true;
  };
  programs.wezterm = {
    enable = true;
    enableZshIntegration = true;
    extraConfig = ''
      local wezterm = require("wezterm")

      local config = wezterm.config_builder()
      config.color_scheme = 'Kanagawa (Gogh)'
      config.font_size = 20
      config.dpi = 144
      config.enable_wayland = false

      return config
    '';
  };
}
