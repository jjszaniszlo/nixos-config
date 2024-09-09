{inputs, outputs, ...}: {
  imports = [
    ./services
    ./home-manager.nix
    ./locale.nix
    ./nix.nix
    ./nixpkgs.nix
    ./sops.nix
    ./zsh.nix
  ]
  ++ [inputs.home-manager.nixosModules.home-manager]
  ++ (builtins.attrValues outputs.nixosModules);
}
