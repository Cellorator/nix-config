{
    description = "My Nix configuration";

    inputs = {
        nixpkgs.url = "nixpkgs/nixos-unstable";

        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        stylix.url = "github:danth/stylix";

        wezterm.url = "github:wez/wezterm";
    };

    outputs = { nixpkgs, home-manager, stylix, ... }@inputs:
    let
        system = "x86_64-linux";
        pkgs = import nixpkgs {
            inherit system;
            config.allowUnfree = true;
        };
    in {
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
                extraSpecialArgs = inputs // { username = "admin"; };
                modules = [
                    ./users/primary/home.nix stylix.homeManagerModules.stylix
                ];
            };
        };
    };
}
