{
  services.skhd = {
    enable = true;
    skhdConfig = ''
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
