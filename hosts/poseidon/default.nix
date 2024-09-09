{...}: {
  imports = [
    ../common/global/darwin.nix
    ../common/optional/darwin
  ];

  nixpkgs.hostPlatform = "aarch64-darwin";

  system.stateVersion = 4;
}
