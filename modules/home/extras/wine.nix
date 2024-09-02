{ pkgs-stable, ... }:
{
    home.packages = [
        pkgs-stable.wineWowPackages.staging
    ];
}
