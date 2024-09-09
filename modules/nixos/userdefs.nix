{
  lib,
  config,
  ...
}: let
  inherit (lib) mkOption types;
in {
  options.userdefs = mkOption { 
    type = (types.listOf 
      (types.submodule {
        username = mkOption {
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
  config = {
    assertions = [
      {
        assertion = (lib.length config.userdefs) != 0;
        message = "There must be atleast one user!";
      }
    ];
  };
}
