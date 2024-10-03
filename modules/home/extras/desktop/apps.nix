{ pkgs, ... }:
{
    home.packages = with pkgs; [
        libreoffice
        thunderbird

        obsidian
        logseq
    ];

    programs = {
        firefox.enable = true;
    };
}
