_: {
  imports = [
    ./alejandra.nix
    ./locale.nix
    ./nix.nix
    ./zsh.nix
    ./openssh.nix
  ];

  nixpkgs = {
    overlays = [];
    config = {
      allowUnfree = true;
    };
  };
}
