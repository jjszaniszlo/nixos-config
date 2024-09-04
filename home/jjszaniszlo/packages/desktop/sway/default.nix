{
  pkgs,
  lib,
  config,
  ...
}: {
  imports = [
    ../common/wayland
  ];

  wayland.windowManager.sway = {
    enable = true;
    xwayland = true;
    systemd.enable = true;

    config = let
      super = "Mod4";
      alt = "Mod1";
      defaultApp = type: "${lib.getExe pkgs.handlr-regex} launch ${type}";
    in {
      modifier = alt;

      terminal = "${defaultApp "x-scheme-handler/terminal"}";
      menu = "${pkgs.rofi}/bin/rofi -show drun -show-icons";

      output = (
        builtins.listToAttrs
        (map (m: {
          inherit (m) name;
          value =
            {
              bg = "${config.wallpaper} fill";
              mode = "${toString m.width}x${toString m.height}@${toString m.refresh-rate}Hz";
            }
            // (
              if m.transform.enable
              then {
                transform = "${toString (360 - m.transform.value * 90)}";
              }
              else {}
            );
        }) (config.monitors))
      );

      workspaceOutputAssign = [];

      input = {
        "type:keyboard" = {
          xkb_options = "caps:escape";
        };
      };

      keybindings = let
        swayosd-client = "${pkgs.swayosd}/bin/swayosd-client";
      in {
        "${super}+Return" = "exec ${defaultApp "x-scheme-handler/terminal"}";
        "${super}+b" = "exec ${defaultApp "x-scheme-handler/https"}";
        "${super}+q" = "kill";
        "${alt}+Space" = "exec ${pkgs.rofi}/bin/rofi -show drun -show-icons";

        "${super}+Shift+c" = "reload";

        # goto workspace
        "${super}+1" = "workspace 1";
        "${super}+2" = "workspace 2";
        "${super}+3" = "workspace 3";
        "${super}+4" = "workspace 4";
        "${super}+5" = "workspace 5";
        "${super}+6" = "workspace 6";
        "${super}+7" = "workspace 7";
        "${super}+8" = "workspace 8";
        "${super}+9" = "workspace 9";
        "${super}+0" = "workspace 10";

        # move window to workspace
        "${super}+Shift+1" = "move container to workspace 1";
        "${super}+Shift+2" = "move container to workspace 2";
        "${super}+Shift+3" = "move container to workspace 3";
        "${super}+Shift+4" = "move container to workspace 4";
        "${super}+Shift+5" = "move container to workspace 5";
        "${super}+Shift+6" = "move container to workspace 6";
        "${super}+Shift+7" = "move container to workspace 7";
        "${super}+Shift+8" = "move container to workspace 8";
        "${super}+Shift+9" = "move container to workspace 9";
        "${super}+Shift+0" = "move container to workspace 10";

        # exit sway
        "${super}+m" = "exec swaynag -t warning -m 'You pressed the exit shortcut. Do you really want to exit sway? This will end your Wayland session.' -B 'Yes, exit sway' 'swaymsg exit'";

        XF86AudioRaiseVolume = "exec ${swayosd-client} --output-volume raise";
        XF86AudioLowerVolume = "exec ${swayosd-client} --output-volume lower";
        XF86AudioMute = "exec ${swayosd-client} --output-volume mute-toggle";
        XF86AudioMicMute = "exec ${swayosd-client} --input-volume mute-toggle";
        XF86MonBrightnessUp = "exec ${swayosd-client} --brightness raise";
        XF86MonBrightnessDown = "exec ${swayosd-client} --brightness lower";
      };

      window.titlebar = false;
    };
  };
}
