{...}: {
  imports = [
    ../common/darwin/desktop
    ../common/darwin/features/homebrew.nix
    ../common/darwin/system
    ../common/global/darwin.nix
    ../common/users/jjszaniszlo/darwin.nix
  ];

  nixpkgs.hostPlatform = "aarch64-darwin";
  system.stateVersion = 4;
}
