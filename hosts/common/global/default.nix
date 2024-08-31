{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    ./locale.nix
    ./nix.nix
    ./zsh.nix
    ./openssh.nix
  ];

  environment.systemPackages = [inputs.alejandra.defaultPackage.${pkgs.system}];

  nixpkgs = {
    overlays = [];
    config = {
      allowUnfree = true;
    };
  };
}
