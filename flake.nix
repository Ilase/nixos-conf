{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  inputs.nix-ld.url = "github:Mic92/nix-ld";
  inputs.nix-ld.inputs.nixpkgs.follows = "nixpkgs";

  outputs = { self, nixpkgs, nix-ld, ... }@inputs: {
    nixosConfigurations = {
      ideapad-3-laptop = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/ideapad-3-laptop/configuration.nix
          ./modules/shell.nix
          ./modules/users.nix
          ./modules/plymouth.nix
          ./modules/nix-ld.nix
	       nix-ld.nixosModules.nix-ld
	        {programs.nix-ld.dev.enable = true; }
        ];
      };
    };
  };
}
