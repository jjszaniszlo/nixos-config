{outputs, ...}: {
  imports = [
    ./services
    ./home-manager.nix
    ./locale.nix
    ./nix.nix
    ./nixpkgs.nix
    ./sops.nix
    ./zsh.nix
  ]
  ++ (builtins.attrValues outputs.nixosModules);
}
