{pkgs, system, nix-alien, ...}:
{
    # Install nix-alien and nix-ld
    environment.systemPackages = with nix-alien.packages.${system}; [
        nix-alien
    ];
    programs.nix-ld.enable = true;
}
