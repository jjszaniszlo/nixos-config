{inputs, outputs, nix-colors, ...}: {
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    extraSpecialArgs = {
      inherit inputs outputs nix-colors;
    };
  };
}
