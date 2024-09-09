{...}: {
  imports = [
    ../common/darwin/desktop
    ../common/darwin/features/homebrew.nix
    ../common/darwin/system
    ../common/global/darwin.nix
  ];

  nixpkgs.hostPlatform = "aarch64-darwin";
  system.stateVersion = 4;
}
