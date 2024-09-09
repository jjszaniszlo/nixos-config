{
  lib,
  ...
}: let
  inherit (lib) mkOption types;
in {
  options.userdefs = mkOption { 
    type = (types.listOf 
      (types.submodule {
        userName = mkOption {
          type = types.str;
          example = "username";
        };
        userFullName = mkOption {
          type = types.str;
          example = "John Doe";
        };
        userEmail = mkOption {
          type = types.str;
          example = "John.Doe@hotmail.com";
        };
      })
    );
    default = [];
  };
}
