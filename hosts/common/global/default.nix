_ : {
  imports = [
    ./locale.nix
    ./nix.nix
    ./steam-hardware.nix
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
