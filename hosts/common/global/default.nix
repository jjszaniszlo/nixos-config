{inputs, outputs, ...}: {
  imports = [
    ./services
    ./locale.nix
    ./nix.nix
    ./nixpkgs.nix
    ./zsh.nix
  ]
  ++ (builtins.attrValues outputs.nixosModules);
}
