{
  description = "first flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = { self, nixpkgs, home-manager, nixvim, ... }@inputs:
  # "let binding"
  let
    lib = nixpkgs.lib;
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
    username = "lane";
  in
  {
    nixosConfigurations = {

      atomizer = lib.nixosSystem {
        inherit system;
        modules = [ 
          (import ./hosts/laptop)
        ];
        specialArgs = { host="atomizer"; inherit self username inputs; };
      };

      shortstop = lib.nixosSystem {
        inherit system;
        modules = [ 
          (import ./hosts/desktop) 
        ];
        specialArgs = { host = "shortstop"; inherit self username inputs; };
      };

    };
  };
}
