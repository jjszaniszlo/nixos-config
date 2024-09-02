{outputs, ...}: {
  imports = [
    ./alejandra.nix
    ./locale.nix
    ./nix.nix
    ./zsh.nix
    ./openssh.nix
  ];

  nixpkgs = {
    overlays = builtins.attrValues outputs.overlays;
    config = {
      allowUnfree = true;
    };
  };
}
