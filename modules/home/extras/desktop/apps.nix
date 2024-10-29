{ pkgs, ... }:
{
    home.packages = with pkgs; [
        libreoffice
        thunderbird

        obsidian

        zotero
    ];

    programs = {
        firefox.enable = true;
    };
}
