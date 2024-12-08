{
    description = "My Nix configuration";

    inputs = {
        nixpkgs.url = "nixpkgs/nixos-unstable";
        nixpkgs-stable.url = "nixpkgs/nixos-24.05";
        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        hyprland.url = "github:hyprwm/Hyprland";

        ags = {
            url = "github:Aylur/ags";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        astal = {
            url = "github:aylur/astal";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        stylix.url = "github:danth/stylix";

        musnix.url = "github:musnix/musnix";

        aagl.url = "github:ezKEa/aagl-gtk-on-nix";
    };

    outputs = { nixpkgs, nixpkgs-stable, home-manager, ags, astal, ... }@inputs:
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
                    inherit system;
                    username = "admin";
                };
                modules = [
                    ./users/primary/home.nix
                ];
            };
        };
        #
        # # ags and astal packages
        # packages.${system}. default = pkgs.stdenvNoCC.mkDerivation rec {
        #     name = "my-shell";
        #     src = ./.;
        #
        #     nativeBuildInputs = [
        #         ags.packages.${system}.default
        #         pkgs.wrapGAppsHook
        #         pkgs.gobject-introspection
        #     ];
        #
        #     buildInputs = with astal.packages.${system}; [
        #         io
        #         astal3
        #         battery
        #         bluetooth
        #         hyprland
        #         network
        #         notifd
        #         tray
        #         wireplumber
        #         # any other package
        #     ];
        #
        #     installPhase = ''
        #         mkdir -p $out/bin
        #         ags bundle app.ts $out/bin/${name}
        #     '';
        # };
    };
}
