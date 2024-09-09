{
  description = "Your new nix config";

  inputs = {
    # Nixpkgs
    hardware.url = "github:nixos/nixos-hardware";
    impermanence.url = "github:nix-community/impermanence/create-persistent-storage-dirs";
    nix-colors.url = "github:misterio77/nix-colors";
    nixpkgs-master.url = "github:nixos/nixpkgs/master";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.05";
    systems.url = "github:nix-systems/default";

    apple-silicon-support = {
      url = "github:tpwrules/nixos-apple-silicon/main";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    alejandra = {
      url = "github:kamadorueda/alejandra/3.0.0";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    lanzaboote = {
      url = "github:nix-community/lanzaboote/v0.4.1";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:jjszaniszlo/nixvim-config";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.nixpkgs-stable.follows = "nixpkgs-stable";
    };
  };

  outputs = {
    self,
    nixpkgs,
    systems,
    nix-darwin,
    home-manager,
    nix-colors,
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
    vars = import ./vars { inherit inputs lib; };
  in {
    inherit lib;
    nixosModules = import ./modules/nixos;
    homeManagerModules = import ./modules/home-manager;

    overlays = import ./overlays {inherit inputs outputs;};

    packages = forEachSystem (pkgs: import ./pkgs {inherit pkgs;});
    devShells = forEachSystem (pkgs: import ./shell.nix {inherit pkgs;});

    nixosConfigurations = {
      # main desktop (use home manager as nixos module for impermanence)
      athena = lib.nixosSystem {
        specialArgs = {inherit inputs vars outputs;};
        modules = [./hosts/athena];
      };
    };

    darwinConfigurations = {
      # 16" mbp m1-pro
      poseidon = lib.darwinSystem {
        system = "aarch64-darwin";
        specialArgs = {inherit inputs vars outputs;};
        modules = [./hosts/poseidon];
      };
    };

    homeConfigurations = {
      # main desktop home
      "jjszaniszlo@athena" = lib.homeManagerConfiguration {
        pkgs = pkgsFor.x86_64-linux;
        extraSpecialArgs = {inherit inputs outputs nix-colors;};
        modules = [./home/jjszaniszlo/athena.nix];
      };
      # 16" mbp m1 pro home
      "jjszaniszlo@poseidon" = lib.homeManagerConfiguration {
        pkgs = pkgsFor.aarch64-darwin;
        extraSpecialArgs = {inherit inputs outputs nix-colors;};
        modules = [./home/jjszaniszlo/poseidon.nix];
      };
    };
  };
}
