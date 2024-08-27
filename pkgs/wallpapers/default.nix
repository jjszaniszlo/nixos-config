{pkgs}:
pkgs.lib.listToAttrs (
  map (w: {
    inherit (w) name;
    value = pkgs.fetchurl {
      inherit (w) sha256;
      name = "${w.name}.${w.ext}";
      url = (builtins.fromJSON (builtins.readFile (pkgs.fetchurl { url = "https://wallhaven.cc/api/v1/w/${w.id}"; hash = "sha256-zGGwpJ5dPCrpRK7RnBaMkLV1a/v3F73R4ZrZXjM8vuI="; }))).data.path;
    };
  }) (pkgs.lib.importJSON ./list.json)
)
