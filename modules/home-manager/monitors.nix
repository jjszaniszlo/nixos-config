{
  lib,
  config,
  ...
}: let
  inherit (lib) mkOption types;
in {
  options.monitors = mkOption {
    type = types.listOf (
      types.submodule {
        options = {
          name = mkOption {
            type = types.str;
            example = "DP-1";
          };
          primary = mkOption {
            type = types.bool;
            default = false;
          };
          width = mkOption {
            type = types.int;
            example = 1920;
          };
          height = mkOption {
            type = types.int;
            example = 1080;
          };
          refresh-rate = mkOption {
            type = types.int;
            default = 60;
          };
          position = mkOption {
            type = types.str;
            default = "auto";
          };
          enabled = mkOption {
            type = types.bool;
            default = true;
          };
          workspaces = mkOption {
            type = with types; listOf int;
            default = [1 2 3 4 5 6 7 8 9 0];
          };
          transform = mkOption {
            type = types.attrs;
            default = {
              enable = false;
              value = 0;
            };
          };
        };
      }
    );
    default = [];
  };
  config = {
    assertions = [
      {
        assertion =
          ((lib.length config.monitors) != 0)
          -> ((lib.length (lib.filter (m: m.primary) config.monitors)) == 1);
        message = "Exactly one monitor must be set to primary.";
      }
    ];
  };
}
