{ pkgs, ... }:
{
    imports = [
        ./rust.nix
        ./nodejs.nix
        ./java.nix
    ];

    home.packages = with pkgs; [
        dotnetCorePackages.sdk_9_0
    ];
    home.sessionVariables = {
        DOTNET_ROOT = "${pkgs.dotnet-sdk}";
    };
}
