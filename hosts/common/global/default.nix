{inputs, outputs, ...}: {
  imports = [
    inputs.home-manager.nixosModules.home-manager
    ./alejandra.nix
    ./locale.nix
    ./nix.nix
    ./zsh.nix
    ./openssh.nix
  ];

  home-manager.useGlobalPkgs = true;
  home-manager.extraSpecialArgs = {
    inherit inputs outputs;
  };

  hardware.enableRedistributableFirmware = true;

  nixpkgs = {
    overlays = builtins.attrValues outputs.overlays;
    config = {
      allowUnfree = true;
    };
  };
}
