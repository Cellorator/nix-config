{ pkgs, ... }:
{
    home.packages = [
        pkgs.obsidian
        pkgs.libreoffice
        pkgs.thunderbird
    ];

    programs = {
        firefox.enable = true;
    };
}
