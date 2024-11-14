{ pkgs, ... }:
{
    home.packages = with pkgs; [
        thunderbird
        obsidian
        zotero
        unityhub
        godot_4
        vscode
    ];

    programs = {
        firefox.enable = true;
    };
}
