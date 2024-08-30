{ pkgs, ... }:
pkgs.lib.listToAttrs (
  map (w: {
    inherit (w) name;
    value = pkgs.fetchurl {
      inherit (w) sha256 url;
      name = "${w.name}.${w.ext}";
    };
  }) (pkgs.lib.importJSON ./list.json)
)
