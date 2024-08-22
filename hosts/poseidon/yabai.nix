{...} : {
  services.yabai = {
    enable = true;
    config = {
      auto_balance = "on";
      layout = "bsp";
      bottom_padding = 9;
      left_padding = 9;
      right_padding = 9;
      top_padding = 9;
      window_gap = 9;
      mouse_follows_focus = "on";
      mouse_modifier = "fn";
      split_ratio = "0.50";
      window_border = "off";
      window_placement = "second_child";
      window_topmost = "on";
    };
  };
}
