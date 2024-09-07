{ pkgs, ... }:
{
    home.packages = with pkgs; [
        neovim
        tree-sitter
    ];
}
