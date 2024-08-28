{
  lib,
  inputs,
  pkgs,
  ...
}: let
  flakeInputs = lib.filterAttrs (_: lib.isType "flake") inputs;
in {
  nix = {
    settings = {
      experimental-features = [
        "nix-command"
        "flakes"
      ];
      warn-dirty = false;
      flake-registry = "";
    };
    package = pkgs.nix;
    registry = lib.mapAttrs (_: flake: {inherit flake;}) flakeInputs;
    package = pkgs.nix;
  };

  home.sessionVariables = {
    NIX_PATH = lib.concatStringsSep ":" (lib.mapAttrsToList (n: _: "${n}=flake:${n}") flakeInputs);
  };

  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };
}
