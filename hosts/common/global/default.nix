{inputs, outputs, ...}: {
  imports = [
    ./services
    ./locale.nix
    ./nix.nix
    ./nixpkgs.nix
    ./sops.nix
    ./zsh.nix
  ]
  ++ [inputs.home-manager.nixosModules.home-manager]
  ++ (builtins.attrValues outputs.nixosModules);
}
