{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = inputs@{ self, nixpkgs, home-manager, stylix, ... }:let 
    user = "b";
  in {  
    nixosConfigurations = {
      home-pc = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
	specialArgs = { inherit inputs user;};
	modules = [
	  ./hosts/home-pc/configuration.nix
	  #home-manager.nixosModules.home-manager 
	 # {
	  #  home-manager.useGlobalPkgs = true;
	   # home-manager.useUserPackages = true;
	   # home-manager.extraSpecialArgs = {inherit user;};
	   # home-manager.users.${user} = ./modules/home.nix;
	 # }
	#  stylix.nixosModules.stylix
	 # ./modules/stylix.nix
	];
      };
    };  
  };
}

