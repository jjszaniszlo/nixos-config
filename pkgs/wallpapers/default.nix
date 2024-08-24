{pkgs, lib, ...}:
pkgs.lib.listToAttrs (
  map (w: {
    inherit (w) name;
    value = pkgs.fetchurl {
      inherit (w) sha256;
      name = "${w.name}.${w.ext}";
      url = (id:
        (lib.toJSON
          (lib.runCommand
            "GetJSON"
            {}
            ''curl https://wallhaven.cc/api/v1/w/${w.id}''
          )
        ).path
      ) w.id;
    };
  }) (pkgs.lib.importJSON ./list.json)
)
