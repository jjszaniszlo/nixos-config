{pkgs, ...}: let
  lutris = let
    hackedPkgs = pkgs.extend (final: prev: {
      buildFHSEnv = args:
        prev.buildFHSEnv (args
        // {
          extraBwrapArgs =
            (args.extraBwrapArgs or [])
            ++ [ "--cap-add ALL" ];
        });
      });
  in hackedPkgs.lutris;
in {
  home.packages = [
    (lutris.override {
      extraPkgs = p: [
        p.wineWowPackages.staging
        p.pixman
        p.libjpeg
        p.gnome.zenity
      ];
    })
  ];
}
