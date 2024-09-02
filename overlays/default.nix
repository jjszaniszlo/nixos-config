{inputs, ...}: let
  addPatches = pkg: patches:
    pkg.overrideAttrs (oldAttrs: {
      patches = (oldAttrs.patches or []) ++ patches;
    }
  );
in {
  flake-inputs = final: _: {
    inputs =
      builtins.mapAttrs (
        _: flake: let
          legacyPackages = (flake.legacyPackages or {}).${final.system} or {};
          packages = (flake.packages or {}).${final.system} or {};
        in
          if legacyPackages != {}
          then legacyPackages
          else packages
      )
      inputs;
  };

  # Adds pkgs.stable == inputs.nixpkgs-stable.legacyPackages.${pkgs.system}
  stable = final: _: {
    stable = inputs.nixpkgs-stable.legacyPackages.${final.system};
  };

  modifications = final: prev: {
    # fix build on xdg-desktop-portal-hyprland
    xdg-desktop-portal-hyprland = addPatches prev.xdg-desktop-portal-hyprland [
      (prev.fetchpatch {
          url = "https://github.com/hyprwm/xdg-desktop-portal-hyprland/commit/2425e8f541525fa7409d9f26a8ffaf92a3767251.patch";
          sha256 = "0a0k676d2pa4i1ksd03z06khj8bldn2yxjsxx54mns82yqndgdsr";
      })
    ];
  };

  additions = final: prev: import ../pkgs {pkgs = final;};
}
