{inputs, outputs, ...}: {
  imports = [
    ./alejandra.nix
    ./locale.nix
    ./nix.nix
    ./nixpkgs.nix
    ./openssh.nix
    ./zsh.nix
  ];

  home-manager.useGlobalPkgs = true;
  home-manager.extraSpecialArgs = {
    inherit inputs outputs;
  };

  hardware.enableRedistributableFirmware = true;
}
