{...} : {
  services.yabai = {
    enable = true;
    enableScriptingAddition = true;
    config = {
      layout = "bsp";
      bottom_padding = 9;
      left_padding = 9;
      right_padding = 9;
      top_padding = 13;
      window_gap = 9;

      mouse_follows_focus = "on";
      focus_follows_mouse = "off";

      mouse_modifier = "cmd";
      mouse_action1 = "move";
      mouse_action2 = "resize";

      window_border = "on";
      window_border_width = 2;
      active_window_border_color = "0xE0808080";
      normal_window_border_color = "0x00010101";
      insert_feedback_color = "0xE02D74DA";

      active_window_opacity = 1.0;
      normal_window_opacity = 0.9;
      split_ratio = 0.50;

      auto_balance = "off";

      window_placement = "second_child";
      window_topmost = "on";
    };  
  };
}
