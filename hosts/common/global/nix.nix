{
  inputs,
  config,
  lib,
  ...
}: let
  flakeInputs = lib.filterAttrs (_: lib.isType "flake") inputs;
in {
  nix = {
    settings = {
      connect-timeout = 5;
      log-lines = 25;
      min-free = 128000000; # 128MB
      max-free = 1000000000; # 1GB

      auto-optimise-store = true;

      trusted-users = [ "root" "@wheel" ];

      experimental-features = [
        "nix-command"
        "flakes"
      ];

      warn-dirty = false;

      system-features = [
        "kvm"
        "big-parallel"
        "nixos-test"
      ];

      flake-registry = "";
    };

    gc = {
      automatic = true;
      options = "--delete-older-than 10d";
    };

    registry = lib.mkDefault (lib.mapAttrs (_: flake: {inherit flake;}) flakeInputs);
    nixPath = lib.mkDefault (lib.mapAttrsToList (n: _: "${n}=flake:${n}") flakeInputs);
  };
}
