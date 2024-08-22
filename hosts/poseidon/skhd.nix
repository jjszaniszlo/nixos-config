{
  services.skhd = {
    enable = true;
    skhdConfig = ''
      # focus windows
      alt - h : yabai -m window --focus west
      alt - j : yabai -m window --focus south
      alt - k : yabai -m window --focus north
      alt - l : yabai -m window --focus east

      # move windows
      shift + alt - h : yabai -m window --warp west
      shift + alt - j : yabai -m window --warp south
      shift + alt - k : yabai -m window --warp north
      shift + alt - l : yabai -m window --warp east

      # move window to new workspace
      shift + cmd - 1 : yabai -m window --space 1; yabai -m space --focus 1
      shift + cmd - 2 : yabai -m window --space 2; yabai -m space --focus 2
      shift + cmd - 3 : yabai -m window --space 3; yabai -m space --focus 3
      shift + cmd - 4 : yabai -m window --space 4; yabai -m space --focus 4

      # move focus to new workspace
      cmd - 1 : yabai -m space --focus 1
      cmd - 2 : yabai -m space --focus 2
      cmd - 3 : yabai -m space --focus 3
      cmd - 4 : yabai -m space --focus 4

      # toggle floating
      shift + alt - space : \
        yabai -m window --toggle float; \
        yabai -m window --toggle border
    '';
  };
}
