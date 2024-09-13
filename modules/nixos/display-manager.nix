{
  lib,
  ...
}: { 
  options.display-manager = with lib; mkOption { 
    type = types.nullOr types.str;
    default = null;
    description = ''
      which display-manager to use.
    '';
  };
}
