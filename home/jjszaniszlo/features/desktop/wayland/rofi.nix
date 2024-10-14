{pkgs, lib, config, ...}: {
  programs.rofi = let
      defaultApp = type: "${lib.getExe pkgs.handlr-regex} launch ${type}";
      inherit (config.lib.formats.rasi) mkLiteral;
  in {
    enable = true;
    package = pkgs.rofi-wayland;
    terminal = "${defaultApp "x-scheme-handler/terminal"}";
    plugins = [];
    theme = {
      "*" = {
        font = "VictorMonoNerdFont 20";
        color0 = mkLiteral "#${config.colorScheme.palette.base00}";
        color1 = mkLiteral "#${config.colorScheme.palette.base01}";
        color2 = mkLiteral "#${config.colorScheme.palette.base02}";
        color3 = mkLiteral "#${config.colorScheme.palette.base03}";
        color4 = mkLiteral "#${config.colorScheme.palette.base04}";
        color5 = mkLiteral "#${config.colorScheme.palette.base05}";
        color6 = mkLiteral "#${config.colorScheme.palette.base06}";
        color7 = mkLiteral "#${config.colorScheme.palette.base07}";
        color8 = mkLiteral "#${config.colorScheme.palette.base08}";
        color9 = mkLiteral "#${config.colorScheme.palette.base09}";
        color10 = mkLiteral "#${config.colorScheme.palette.base0A}";
        color11 = mkLiteral "#${config.colorScheme.palette.base0B}";
        color12 = mkLiteral "#${config.colorScheme.palette.base0C}";
        color13 = mkLiteral "#${config.colorScheme.palette.base0D}";
        color14 = mkLiteral "#${config.colorScheme.palette.base0E}";
        color15 = mkLiteral "#${config.colorScheme.palette.base0F}";

        background-color = mkLiteral "transparent";
        text-color = mkLiteral "@color5";
        accent-color = mkLiteral "@color3";

        margin = mkLiteral "0px";
        padding = mkLiteral "0px";
        spacing = mkLiteral "0px";
      };

      "window" = {
        background-color = mkLiteral "@color0";
        border-color = mkLiteral "@accent-color";

        location = mkLiteral "center";
        width = mkLiteral "33%";
        border = mkLiteral "2px";
        border-radius = mkLiteral "24px";
      };

      "inputbar" = {
        padding = mkLiteral "8px 12px";
        spacing = mkLiteral "12px";

        border = mkLiteral "2px";
        border-radius = mkLiteral "16px";
        border-color = mkLiteral "@accent-color";

        children = mkLiteral "[ prompt, entry ]";
      };

      mainbox =  {
        padding = mkLiteral "12px";
      };

      "prompt, entry, element-text, element-icon" = {
        vertical-align = mkLiteral "0.5";
      };

      "entry" = {
        placeholder = "Search";
        placeholder-color = "@color3";
      };

      "message" = {
        margin = mkLiteral "12px 0 0";
        border-radius = mkLiteral "16px";
        border-color = mkLiteral "@accent-color";
        background-color = mkLiteral "@background-color";
      };

      "prompt" = {
        text-color = mkLiteral "@text-color";
      };
 
      "textbox" = {
        padding = mkLiteral "8px 24px";
      };
 
      "listview" = {
        background-color = mkLiteral "transparent";
        fixed-height = mkLiteral "false";

        margin = mkLiteral "12px 0 0";
        lines = 8;
        columns = 1;
      };

      "element" = {
        padding = mkLiteral "8px";
        spacing = mkLiteral "8px";
        border-radius = mkLiteral "16px";
      };
      
      "element normal urgent" = {
        text-color = mkLiteral "@text-color";
      };

      "element normal active" = {
        text-color = mkLiteral "@accent-color";
      };

      "element alternate active" = {
        text-color = mkLiteral "@accent-color";
      };

      "element selected" = {
        text-color = mkLiteral "@color6";
      };

      "element selected normal" = {
        background-color = mkLiteral "@accent-color";
      };

      "element selected urgent" = {
        background-color = mkLiteral "@color13";
      };

      "element selected active" = {
        background-color = mkLiteral "@color8";
      };
      
      "element-icon" = {
        size = mkLiteral "1em";
        vertical-align = mkLiteral "0.5";
      };

      "element-text" = {
        text-color = mkLiteral "inherit";
      };

      "#textbox-prompt-colon" = {
        expand = false;
        str = ">";
        margin = mkLiteral "0px 0.3em 0em 0em";
        text-color = "@color7";
      };

      "#prompt" = {
        enabled = false;
      };
    };
    extraConfig = {
      show-icons = true;
      kb-cancel = "Escape,Super+space";
      modi = "window,run,ssh";
      sort = true;
    };
  };
}
