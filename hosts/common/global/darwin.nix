{outputs, ...}: {
  imports = [
    ./home-manager.nix
    ./nix.nix
    ./nixpkgs.nix
    ./zsh.nix
  ]
  ++ (builtins.attrValues outputs.nixosModules);
}
