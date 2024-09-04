_: {
  imports = [
    ./alejandra.nix
    ./locale.nix
    ./nix.nix
    ./nixpkgs.nix
    ./openssh.nix
    ./zsh.nix
  ];

  hardware.enableRedistributableFirmware = true;
}
