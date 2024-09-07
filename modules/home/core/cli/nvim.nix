{ pkgs, ... }:
{
    home.packages = with pkgs; [
        neovim
        python312Packages.pylatex # For latex rendering in markdown
    ];
}
