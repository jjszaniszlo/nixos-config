{
  description = "Your new nix config";

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";

    # Home manager
    home-manager.url = "github:nix-community/home-manager/release-24.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # Nixvim
    nixvim.url = "github:jjszaniszlo/nixvim-config";

    # nix-darwin
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";

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
    nix-darwin,
    home-manager,
    lanzaboote,
    ...
  } @ inputs: let
    inherit (self) outputs;
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
    pkgs-darwin = nixpkgs.legacyPackages.aarch64-darwin;
  in {
    homeManagerModules = import ./modules/home-manager;

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
      "jjszaniszlo@poseidon" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs-darwin;
        extraSpecialArgs = {inherit inputs outputs;};
        modules = [
          ./home/jjszaniszlo/poseidon.nix
        ];
      };
    };

    darwinConfigurations = {
      "jjszaniszlo@poseidon" = nix-darwin.lib.darwinSystem {
          modules = [
            ./hosts/poseidon/configuration.nix
          ];
      };
    };
  };
}
