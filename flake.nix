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
    };

    outputs = { nixpkgs, nixpkgs-stable, home-manager, ... }@inputs:
    let
        system = "x86_64-linux";

        pkgs-attrs = {
            inherit system;
            config.allowUnfree = true;
            config.permittedInsecurePackages = [
                "electron-27.3.11"
            ];
            overlays = [(
                final: prev: {
                    logseq = prev.logseq.override {
                        electron = prev.electron_27;
                    };
                }
            )];
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
