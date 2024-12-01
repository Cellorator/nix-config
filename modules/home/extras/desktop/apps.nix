{ pkgs, ... }:
{
    home.packages = with pkgs; [
        thunderbird
        obsidian
        zotero
        unityhub
        godot_4
        vscode
        vesktop
        pixelorama
    ];

    programs = {
        firefox.enable = true;
    };
}
