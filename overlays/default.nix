{inputs, ...}: let
  addPatches = pkg: patches:
    pkg.overrideAttrs (
      oldAttrs: {
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
  unstable = final: _: {
    unstable = inputs.nixpkgs-unstable.legacyPackages.${final.system};
  };

  master = final: _: {
    master = inputs.nixpkgs-master.legacyPackages.${final.system};
  };

  modifications = final: prev: {};

  additions = final: prev: import ../pkgs {pkgs = final;};
}
