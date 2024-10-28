{ pkgs, ... }:
{
    home.packages = with pkgs; [
        libreoffice
        thunderbird

        obsidian
        logseq

        zotero
    ];

    programs = {
        firefox.enable = true;
    };
}
