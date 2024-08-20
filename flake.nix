{
  description = "Your new nix config";

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";

    # Home manager
    home-manager.url = "github:nix-community/home-manager/release-24.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    nixvim.url = "github:jjszaniszlo/nixvim-config";

    # lanzaboote
    lanzaboote = {
      url = "github:nix-community/lanzaboote/v0.4.1";

      # Optional but recommended to limit the size of your system closure.
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    lanzaboote,
    ...
  } @ inputs: let
    inherit (self) outputs;
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in {
    nixosConfigurations = {
      athena = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs outputs;};
        modules = [
          lanzaboote.nixosModules.lanzaboote
          ./hosts/athena/configuration.nix
        ];
      };
    };

    homeConfigurations = {
      "jjszaniszlo@athena" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        extraSpecialArgs = {inherit inputs outputs;};
        modules = [
          ./home/jjszaniszlo/athena.nix
        ];
      };
    };
  };
}
