{
  description = "Your new nix config";

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";

    # Home manager
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Nixvim
    nixvim = {
      url = "github:jjszaniszlo/nixvim-config";
    };

    # nix-darwin
    nix-darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # sops
    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # lanzaboote
    lanzaboote = {
      url = "github:nix-community/lanzaboote/v0.4.1";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-colors = {
      url = "github:misterio77/nix-colors";
    };
  };

  outputs = {
    self,
    nixpkgs,
    nix-darwin,
    home-manager,
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
          ./hosts/athena/configuration.nix
        ];
      };
    };

    homeConfigurations = {
      "jjszaniszlo@athena" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        extraSpecialArgs = { inherit inputs outputs; };
        modules = [
          ./home/jjszaniszlo/athena.nix
        ];
      };
      "jjszaniszlo@poseidon" = home-manager.lib.homeManagerConfiguration {
        pkgs = pkgs-darwin;
        extraSpecialArgs = { inherit inputs outputs; };
        modules = [
          ./home/jjszaniszlo/poseidon.nix
        ];
      };
    };

    darwinConfigurations = {
      poseidon = nix-darwin.lib.darwinSystem {
        system = "aarch64-darwin";
        specialArgs = { inherit inputs outputs; };
        modules = [
          ./hosts/poseidon/configuration.nix
        ];
      };
    };
  };
}
