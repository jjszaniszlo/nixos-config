{
  lib,
  inputs,
  config,
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
      trusted-users = [
        "root"
        "@wheel"
        "jjszaniszlo"
      ];
      warn-dirty = false;
      flake-registry = "";
      nix-path = config.nix.nixPath;
    };
    channel.enable = false;
    package = pkgs.nix;

    gc = lib.mkDefault {
      automatic = true;
      # Keep the last 3 generations
      options = "--delete-older-than +3";
    };

    registry = lib.mapAttrs (_: flake: {inherit flake;}) flakeInputs;
    nixPath = lib.mapAttrsToList (n: _: "${n}=flake:${n}") flakeInputs;
  };
}
