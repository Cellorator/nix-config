{
    description = "My Nix configuration";

    inputs = {
        nixpkgs.url = "nixpkgs/nixos-unstable";

        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        stylix.url = "github:danth/stylix";

        wezterm.url = "github:wez/wezterm?dir=nix";  # Upstream wezterm

        ags.url = "github:Aylur/ags";

        musnix.url = "github:musnix/musnix";
    };

    outputs = { nixpkgs, home-manager, ... }@inputs:
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
                    ./users/primary/home.nix
                ];
            };
        };
    };
}
