{ pkgs, ... }:
{
    home.packages = with pkgs; [
        thunderbird
        obsidian
        zotero
    ];

    programs = {
        firefox.enable = true;
    };
}
