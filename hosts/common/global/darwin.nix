{inputs, outputs, ...}: {
  imports = [
    ./home-manager.nix
    ./nix.nix
    ./nixpkgs.nix
    ./zsh.nix
  ]
  ++ [inputs.home-manager.darwinModules.home-manager]
  ++ (builtins.attrValues outputs.nixosModules);

  security.pam.enableSudoTouchIdAuth = true;
  services.nix-daemon.enable = true;
}
