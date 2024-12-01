{ pkgs, ... }:
{
    imports = [
        ./rust.nix
        ./nodejs.nix
        ./java.nix
    ];

    home.packages = with pkgs; [
        dotnet-sdk
    ];
    home.sessionVariables = {
        DOTNET_ROOT = "${pkgs.dotnet-sdk}";
    };
}
