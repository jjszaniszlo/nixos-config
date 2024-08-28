_ : {
  imports = [
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
