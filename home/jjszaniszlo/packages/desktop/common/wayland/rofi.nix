{pkgs, lib, config, ...}: {
  programs.rofi = let
      defaultApp = type: "${lib.getExe pkgs.handlr-regex} launch ${type}";
  in {
    enable = true;
    package = pkgs.rofi-wayland;
    terminal = "${defaultApp "x-scheme-handler/terminal"}";
    theme = let 
      inherit (config.lib.formats.rasi) mkLiteral;
    in {
      "*" = {
        font = "";
        color0 = mkLiteral "";
        color1 = mkLiteral "";
        color2 = mkLiteral "";
        color3 = mkLiteral "";
        color4 = mkLiteral "";
        color5 = mkLiteral "";
        color6 = mkLiteral "";
        color7 = mkLiteral "";
        color8 = mkLiteral "";
        color9 = mkLiteral "";
        color10 = mkLiteral "";
        color11 = mkLiteral "";
        color12 = mkLiteral "";
        color13 = mkLiteral "";
        color14 = mkLiteral "";
        color15 = mkLiteral "";

        background-color = mkLiteral "transparent";
        text-color = mkLiteral "@color4";
        accent-color = mkLiteral "@color8";

        margin = mkLiteral "0px";
        padding = mkLiteral "0px";
        spacing = mkLiteral "0px";
      };

      "#window" = {
        background-color = mkLiteral "@color0";
        border-color = mkLiteral "@accent-color";

        location = mkLiteral "center";
        width = mkLiteral "480px";
        border = mkLiteral "1px";
      };

      "#inputbar" = {
        padding = mkLiteral "8px 12px";
        spacing = mkLiteral "12px";
        children = mkLiteral [ "prompt" "entry" ];
      };

      "#prompt, entry, element-text, element-icon" = {
        vertical-align = mkLiteral "0.5";
      };
    };
  };
}
