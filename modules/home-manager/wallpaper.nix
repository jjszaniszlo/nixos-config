{lib, ...}: let
  inherit (lib) types mkOption;
in {
  options.wallpaper = mkOption {
    type = types.nullOr types.path;
    default = null;
    description = ''
      Path to wallpaper
    '';
  };
}
