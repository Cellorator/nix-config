{ pkgs, system, nix-alien, nix-index, ... }:
{
    # Install nix-index and nix-ld
    # environment.systemPackages = with nix-index.packages."x86_64-linux"; [
    #     nix-index
    # ];
    programs.nix-ld.enable = true;
    programs.nix-ld.libraries = with pkgs; [
        glib
        libadwaita
        wayland
        gtk4
        cairo
        pango
    ];
}
