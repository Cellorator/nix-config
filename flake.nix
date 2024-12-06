{
    description = "My Nix configuration";

    inputs = {
        nixpkgs.url = "nixpkgs/nixos-unstable";
        nixpkgs-stable.url = "nixpkgs/nixos-24.05";
        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        stylix.url = "github:danth/stylix";
        ags.url = "github:Aylur/ags";
        musnix.url = "github:musnix/musnix";
        aagl = {
            url = "github:ezKEa/aagl-gtk-on-nix";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        hyprland.url = "github:hyprwm/Hyprland";
    };

    outputs = { nixpkgs, nixpkgs-stable, home-manager, ... }@inputs:
    let
        system = "x86_64-linux";

        pkgs-attrs = {
            inherit system;
            config.allowUnfree = true;
        };

        pkgs = import nixpkgs pkgs-attrs;
        pkgs-stable = import nixpkgs-stable pkgs-attrs;
    in
    {
        nixosConfigurations = {
           nixos-desktop = nixpkgs.lib.nixosSystem {
                inherit system;
                specialArgs = inputs;
                modules = [ ./hosts/desktop ];
           };
        };

        homeConfigurations = {
            admin = home-manager.lib.homeManagerConfiguration {
                inherit pkgs;
                extraSpecialArgs = inputs // {
                    inherit pkgs-stable;
                    username = "admin";
                };
                modules = [
                    ./users/primary/home.nix
                ];
            };
        };
    };
}
