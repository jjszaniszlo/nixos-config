_: {
  imports = [
    ./locale.nix
    ./nix.nix
  ];

  nixpkgs = {
    overlays = [];
    config = {
      allowUnfree = true;
    };
  };
}
