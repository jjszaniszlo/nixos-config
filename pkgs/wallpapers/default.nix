{ pkgs, fetchWallhaven, ... }:
pkgs.lib.listToAttrs (
  map (w: {
    inherit (w) name;
    value = fetchWallhaven {
      inherit (w) sha256 id;
      name = "${w.name}.${w.ext}";
    };
  }) (pkgs.lib.importJSON ./list.json)
)
