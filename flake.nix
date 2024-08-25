{
  description = "Your new nix config";

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
    systems.url = "github:nix-systems/default";

    # Home manager
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Nixvim
    nixvim.url = "github:jjszaniszlo/nixvim-config";

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
  };

  outputs = {
    self,
    nixpkgs,
    systems,
    nix-darwin,
    home-manager,
    ...
  } @ inputs: let
    inherit (self) outputs;
    lib = nixpkgs.lib // home-manager.lib // nix-darwin.lib;
    forEachSystem = f: lib.genAttrs (import systems) (system: f pkgsFor.${system});
    pkgsFor = lib.genAttrs (import systems) (
      system:
        import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        }
    );
  in {
    inherit lib;
    nixosModules = import ./modules/nixos;
    homeManagerModules = import ./modules/home-manager;

    packages = forEachSystem (pkgs: import ./pkgs {inherit pkgs;});

    nixosConfigurations = {
      # main desktop
      athena = lib.nixosSystem {
        specialArgs = {inherit inputs outputs;};
        modules = [ ./hosts/athena/configuration.nix ];
      };
    };

    darwinConfigurations = {
      # 16" mbp m1-pro
      poseidon = lib.darwinSystem {
        system = "aarch64-darwin";
        specialArgs = { inherit inputs outputs; };
        modules = [ ./hosts/poseidon/configuration.nix ];
      };
    };

    homeConfigurations = {
      # main desktop home
      "jjszaniszlo@athena" = lib.homeManagerConfiguration {
        pkgs = pkgsFor.x86_64-linux;
        extraSpecialArgs = { inherit inputs outputs; };
        modules = [ ./home/jjszaniszlo/athena.nix ];
      };
      # 16" mbp m1 pro home
      "jjszaniszlo@poseidon" = lib.homeManagerConfiguration {
        pkgs = pkgsFor.aarch64-darwin;
        extraSpecialArgs = { inherit inputs outputs; };
        modules = [ ./home/jjszaniszlo/poseidon.nix ];
      };
    };
  };
}
