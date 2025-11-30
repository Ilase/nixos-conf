{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations = {
      ideapad-3-laptop = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/ideapad-3-laptop/configuration.nix
        ];
      };
    };
  };
}
