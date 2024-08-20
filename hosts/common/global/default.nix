_: {
  imports = [
    ./locale.nix
    ./nix.nix
    ./steam-hardware.nix
  ];

  nixpkgs = {
    overlays = [];
    config = {
      allowUnfree = true;
    };
  };
}
