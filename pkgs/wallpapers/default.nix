{ pkgs }:
pkgs.lib.listToAttrs (
  map (w: {
    inherit (w) name;
    value = pkgs.fetchurl {
      inherit (w) sha256;
      name = "${w.name}.${w.ext}";
      url = w.url;
    };
  }) (pkgs.lib.importJSON ./list.json)
)
